// lib/models/models.dart

class Language {
  final String name;
  final String code;
  final String flag;
  final String destination;

  const Language({
    required this.name,
    required this.code,
    required this.flag,
    required this.destination,
  });
}

class Mission {
  final int missionId;
  final String title;
  final String subtitle;
  final String emoji;
  final String environment;
  bool isUnlocked;
  bool isCompleted;
  int xpEarned;

  Mission({
    required this.missionId,
    required this.title,
    required this.subtitle,
    required this.emoji,
    required this.environment,
    this.isUnlocked = false,
    this.isCompleted = false,
    this.xpEarned = 0,
  });
}

class Scenario {
  final String scenarioId;
  final int missionId;
  final String environmentContext;
  final bool introFlag;
  final String environmentalTextPrompt;
  final String sophieClueEnglishIntent;
  final String sophiePhoneticHint;
  final String targetLanguageAnchor;
  final List<String> slotOptions;
  final String npcAudioResponseTranscript;
  final String graffitiStyleTag;
  final String npcName;
  final String npcAvatarEmoji;

  const Scenario({
    required this.scenarioId,
    required this.missionId,
    required this.environmentContext,
    required this.introFlag,
    required this.environmentalTextPrompt,
    required this.sophieClueEnglishIntent,
    required this.sophiePhoneticHint,
    required this.targetLanguageAnchor,
    required this.slotOptions,
    required this.npcAudioResponseTranscript,
    required this.graffitiStyleTag,
    required this.npcName,
    required this.npcAvatarEmoji,
  });
}

class UserProgress {
  String selectedLanguage;
  DateTime? departureDate;
  int totalXP;
  int currentMission;
  int currentScenario;
  List<String> completedMissions;
  List<String> drillQueue;
  Map<String, int> missionXP;
  int streak;
  DateTime? lastSessionDate;

  UserProgress({
    this.selectedLanguage = '',
    this.departureDate,
    this.totalXP = 0,
    this.currentMission = 1,
    this.currentScenario = 0,
    this.completedMissions = const [],
    this.drillQueue = const [],
    Map<String, int>? missionXP,
    this.streak = 0,
    this.lastSessionDate,
  }) : missionXP = missionXP ?? {};

  int get daysUntilDeparture {
    if (departureDate == null) return -1;
    return departureDate!.difference(DateTime.now()).inDays;
  }

  double get readinessPercent {
    // Based on completed missions out of 10
    return (completedMissions.length / 10).clamp(0.0, 1.0);
  }

  String get readinessLabel {
    final pct = readinessPercent;
    if (pct < 0.2) return "NOT READY";
    if (pct < 0.4) return "BARELY READY";
    if (pct < 0.6) return "GETTING THERE";
    if (pct < 0.8) return "ALMOST READY";
    return "MISSION READY";
  }
}

class ScenarioResult {
  final String scenarioId;
  final bool usedSophieClue;
  final int xpEarned;
  final DateTime completedAt;

  ScenarioResult({
    required this.scenarioId,
    required this.usedSophieClue,
    required this.xpEarned,
    required this.completedAt,
  });
}
