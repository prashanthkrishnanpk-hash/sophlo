// lib/engine/drill_engine.dart
//
// THE SOPHLO DRILL ENGINE
// ========================
// This is the intelligence layer between the pattern registry and the user.
//
// It does three things:
//   1. TRACKS mastery at the PATTERN level (not scenario level)
//   2. DECIDES which scenarios to re-surface based on pattern weakness
//   3. SCHEDULES cross-mission drills using spaced repetition timing
//
// The user sees: "Quick drill — 3 phrases"
// What's actually happening: the engine found 2 weak patterns and
// is re-drilling them in a different mission context than where they failed.

import 'pattern_registry_router.dart';
import '../data/core/universal_patterns.dart';

// ── Pattern Mastery Record ───────────────────────────────────
class PatternMastery {
  final String patternId;
  int totalAttempts;
  int successfulAttempts;
  int sophieAssists;          // Times user needed the hint
  DateTime? lastAttempted;
  DateTime? lastFailed;
  bool isInDrillQueue;

  PatternMastery({
    required this.patternId,
    this.totalAttempts = 0,
    this.successfulAttempts = 0,
    this.sophieAssists = 0,
    this.lastAttempted,
    this.lastFailed,
    this.isInDrillQueue = false,
  });

  // Mastery score 0.0 → 1.0
  double get masteryScore {
    if (totalAttempts == 0) return 0.0;
    final baseScore = successfulAttempts / totalAttempts;
    // Sophie assists reduce the score — they mean partial knowledge
    final sophiePenalty = (sophieAssists / totalAttempts) * 0.3;
    return (baseScore - sophiePenalty).clamp(0.0, 1.0);
  }

  String get masteryLabel {
    final score = masteryScore;
    if (totalAttempts == 0) return "UNSEEN";
    if (score >= 0.85) return "MASTERED";
    if (score >= 0.65) return "SOLID";
    if (score >= 0.40) return "LEARNING";
    return "WEAK";
  }

  bool get needsDrill {
    if (totalAttempts == 0) return false;       // Unseen, not failed
    if (masteryScore < 0.65) return true;        // Below solid threshold
    if (sophieAssists > 1) return true;          // Used Sophie more than once
    if (lastFailed != null) {
      final hoursSinceFail =
          DateTime.now().difference(lastFailed!).inHours;
      if (hoursSinceFail < 24) return true;      // Failed within last 24h
    }
    return false;
  }

  // Spaced repetition interval in hours
  int get nextReviewIntervalHours {
    if (masteryScore >= 0.85) return 72;   // 3 days — mastered
    if (masteryScore >= 0.65) return 24;   // 1 day — solid
    if (masteryScore >= 0.40) return 8;    // 8 hours — learning
    return 2;                               // 2 hours — weak, re-drill soon
  }

  bool get isDueForReview {
    if (lastAttempted == null) return false;
    final hoursSinceLast =
        DateTime.now().difference(lastAttempted!).inHours;
    return hoursSinceLast >= nextReviewIntervalHours;
  }

  Map<String, dynamic> toJson() => {
        'patternId': patternId,
        'totalAttempts': totalAttempts,
        'successfulAttempts': successfulAttempts,
        'sophieAssists': sophieAssists,
        'lastAttempted': lastAttempted?.toIso8601String(),
        'lastFailed': lastFailed?.toIso8601String(),
        'isInDrillQueue': isInDrillQueue,
      };

  factory PatternMastery.fromJson(Map<String, dynamic> json) => PatternMastery(
        patternId: json['patternId'],
        totalAttempts: json['totalAttempts'] ?? 0,
        successfulAttempts: json['successfulAttempts'] ?? 0,
        sophieAssists: json['sophieAssists'] ?? 0,
        lastAttempted: json['lastAttempted'] != null
            ? DateTime.parse(json['lastAttempted'])
            : null,
        lastFailed: json['lastFailed'] != null
            ? DateTime.parse(json['lastFailed'])
            : null,
        isInDrillQueue: json['isInDrillQueue'] ?? false,
      );
}

// ── Drill Session ────────────────────────────────────────────
class DrillSession {
  final List<DrillItem> items;
  final String reason;          // Why this drill was triggered
  final DateTime scheduledAt;

  DrillSession({
    required this.items,
    required this.reason,
    required this.scheduledAt,
  });

  int get count => items.length;
}

class DrillItem {
  final String scenarioId;      // Which scenario to re-run
  final String patternId;       // Which pattern it's drilling
  final String patternTemplate; // The skeleton being practiced
  final int targetMissionId;    // Which mission context to show it in
  final String context;         // Short explanation shown to user

  DrillItem({
    required this.scenarioId,
    required this.patternId,
    required this.patternTemplate,
    required this.targetMissionId,
    required this.context,
  });
}

// ── The Drill Engine ─────────────────────────────────────────
class DrillEngine {
  final Map<String, PatternMastery> _masteryMap = {};

  // ── Recording ────────────────────────────────────────────

  // Current language — set when user selects language
  String _currentLanguage = 'Hindi';

  void setLanguage(String language) {
    _currentLanguage = language;
  }

  void recordAttempt({
    required String scenarioId,
    required bool success,
    required bool usedSophie,
  }) {
    final patternId = PatternRegistryRouter.getPatternForScenario(
        _currentLanguage, scenarioId);
    if (patternId == null) return;

    // Wrap in a temporary pattern object for compatibility
    final pattern = UniversalPatternRegistry.getById(patternId);
    if (pattern == null) return;

    final mastery = _masteryMap.putIfAbsent(
      pattern.patternId,
      () => PatternMastery(patternId: pattern.patternId),
    );

    mastery.totalAttempts++;
    mastery.lastAttempted = DateTime.now();

    if (success) {
      mastery.successfulAttempts++;
      if (usedSophie) mastery.sophieAssists++;
    } else {
      mastery.lastFailed = DateTime.now();
      mastery.isInDrillQueue = true;
    }
  }

  // ── Drill Session Building ───────────────────────────────

  // Call this after every mission to check what needs re-drilling
  DrillSession? buildDrillSession({int maxItems = 5}) {
    final weakPatterns = _getWeakPatterns();
    final duePatterns = _getDueForReview();

    final prioritised = <UniversalPattern>{
      ...weakPatterns,
      ...duePatterns,
    }.toList()
      ..sort((a, b) => a.frequencyRank.compareTo(b.frequencyRank));

    if (prioritised.isEmpty) return null;

    final items = <DrillItem>[];

    for (final pattern in prioritised.take(maxItems)) {
      final mastery = _masteryMap[pattern.patternId];
      final sibling = _pickDrillScenario(pattern, mastery);
      if (sibling == null) continue;

      items.add(DrillItem(
        scenarioId: sibling,
        patternId: pattern.patternId,
        patternTemplate: pattern.templateDescription,
        targetMissionId: _getMissionForScenario(sibling),
        context: _buildDrillContext(pattern, mastery),
      ));
    }

    if (items.isEmpty) return null;

    return DrillSession(
      items: items,
      reason: _buildSessionReason(weakPatterns, duePatterns),
      scheduledAt: DateTime.now(),
    );
  }

  // ── Pattern Analysis ─────────────────────────────────────

  List<UniversalPattern> _getWeakPatterns() {
    return universalPatterns.where((p) {
      final mastery = _masteryMap[p.patternId];
      return mastery != null && mastery.needsDrill;
    }).toList();
  }

  List<UniversalPattern> _getDueForReview() {
    return universalPatterns.where((p) {
      final mastery = _masteryMap[p.patternId];
      return mastery != null &&
          mastery.isDueForReview &&
          mastery.masteryScore < 0.85;
    }).toList();
  }

  String? _pickDrillScenario(
      UniversalPattern pattern, PatternMastery? mastery) {
    final siblings = PatternRegistryRouter.getScenariosForPattern(
        _currentLanguage, pattern.patternId);
    if (siblings.isEmpty) return null;
    if (siblings.length == 1) return siblings.first;
    if (mastery != null && mastery.totalAttempts > 0) {
      final idx = mastery.totalAttempts % siblings.length;
      return siblings[idx];
    }
    return siblings.first;
  }

  int _getMissionForScenario(String scenarioId) {
    // Works for both Hindi (HI_M01_S01) and English (EN_M01_S01) formats
    final missionMatch = RegExp(r'M(\d+)').firstMatch(scenarioId);
    if (missionMatch != null) {
      return int.tryParse(missionMatch.group(1) ?? '1') ?? 1;
    }
    return 1;
  }

  String _buildDrillContext(
      UniversalPattern pattern, PatternMastery? mastery) {
    if (mastery == null) return 'Practice this pattern';
    final label = mastery.masteryLabel;
    return 'Pattern status: $label — ${pattern.englishTemplate}';
  }

  String _buildSessionReason(
    List<UniversalPattern> weak,
    List<UniversalPattern> due,
  ) {
    if (weak.isNotEmpty && due.isNotEmpty) {
      return '${weak.length} weak pattern(s) + ${due.length} review(s) due';
    }
    if (weak.isNotEmpty) return '${weak.length} pattern(s) need reinforcement';
    if (due.isNotEmpty) return '${due.length} pattern(s) due for review';
    return 'Scheduled review';
  }

  // ── Reporting ─────────────────────────────────────────────

  List<PatternMastery> get allMasteryRecords =>
      universalPatterns.map((p) {
        return _masteryMap[p.patternId] ??
            PatternMastery(patternId: p.patternId);
      }).toList();

  double get overallMasteryScore {
    final records = allMasteryRecords.where((m) => m.totalAttempts > 0);
    if (records.isEmpty) return 0.0;
    final total = records.fold(0.0, (sum, m) => sum + m.masteryScore);
    return total / records.length;
  }

  int get masteredPatternCount =>
      allMasteryRecords.where((m) => m.masteryLabel == "MASTERED").length;

  int get weakPatternCount =>
      allMasteryRecords.where((m) => m.needsDrill).length;

  // ── Persistence ───────────────────────────────────────────

  Map<String, dynamic> toJson() => {
        'masteryMap': _masteryMap
            .map((k, v) => MapEntry(k, v.toJson())),
      };

  void loadFromJson(Map<String, dynamic> json) {
    final map = json['masteryMap'] as Map<String, dynamic>? ?? {};
    _masteryMap.clear();
    map.forEach((key, value) {
      _masteryMap[key] = PatternMastery.fromJson(value as Map<String, dynamic>);
    });
  }
}
