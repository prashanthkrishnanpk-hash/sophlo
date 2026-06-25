// lib/providers/user_progress_provider.dart
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/models.dart';
import '../engine/drill_engine.dart';

class UserProgressProvider extends ChangeNotifier {
  UserProgress _progress = UserProgress();
  bool _isLoaded = false;
  final DrillEngine drillEngine = DrillEngine();

  UserProgress get progress => _progress;
  bool get isLoaded => _isLoaded;
  bool get hasSelectedLanguage => _progress.selectedLanguage.isNotEmpty;
  bool get hasDepartureDate => _progress.departureDate != null;

  Future<void> loadProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final String? progressJson = prefs.getString('user_progress');
    if (progressJson != null) {
      try {
        final Map<String, dynamic> data = jsonDecode(progressJson);
        _progress = UserProgress(
          selectedLanguage: data['selectedLanguage'] ?? '',
          departureDate: data['departureDate'] != null
              ? DateTime.parse(data['departureDate'])
              : null,
          totalXP: data['totalXP'] ?? 0,
          currentMission: data['currentMission'] ?? 1,
          currentScenario: data['currentScenario'] ?? 0,
          completedMissions: List<String>.from(data['completedMissions'] ?? []),
          drillQueue: List<String>.from(data['drillQueue'] ?? []),
          missionXP: Map<String, int>.from(data['missionXP'] ?? {}),
          streak: data['streak'] ?? 0,
          lastSessionDate: data['lastSessionDate'] != null
              ? DateTime.parse(data['lastSessionDate'])
              : null,
        );
      } catch (e) {
        _progress = UserProgress();
      }
    }
    _isLoaded = true;
    // Load drill engine state
    final String? drillJson = prefs.getString('drill_engine');
    if (drillJson != null) {
      try {
        drillEngine.loadFromJson(jsonDecode(drillJson));
      } catch (_) {}
    }
    // Restore language to drill engine
    if (_progress.selectedLanguage.isNotEmpty) {
      drillEngine.setLanguage(_progress.selectedLanguage);
    }
    notifyListeners();
  }

  Future<void> _saveProgress() async {
    final prefs = await SharedPreferences.getInstance();
    final Map<String, dynamic> data = {
      'selectedLanguage': _progress.selectedLanguage,
      'departureDate': _progress.departureDate?.toIso8601String(),
      'totalXP': _progress.totalXP,
      'currentMission': _progress.currentMission,
      'currentScenario': _progress.currentScenario,
      'completedMissions': _progress.completedMissions,
      'drillQueue': _progress.drillQueue,
      'missionXP': _progress.missionXP,
      'streak': _progress.streak,
      'lastSessionDate': _progress.lastSessionDate?.toIso8601String(),
    };
    await prefs.setString('user_progress', jsonEncode(data));
    // Persist drill engine separately
    await prefs.setString('drill_engine', jsonEncode(drillEngine.toJson()));
  }

  Future<void> setLanguage(String language) async {
    _progress.selectedLanguage = language;
    drillEngine.setLanguage(language);
    await _saveProgress();
    notifyListeners();
  }

  Future<void> setDepartureDate(DateTime date) async {
    _progress.departureDate = date;
    await _saveProgress();
    notifyListeners();
  }

  Future<void> addXP(int xp, {bool usedSophie = false}) async {
    _progress.totalXP += xp;
    final missionKey = 'mission_${_progress.currentMission}';
    _progress.missionXP[missionKey] =
        (_progress.missionXP[missionKey] ?? 0) + xp;
    await _saveProgress();
    notifyListeners();
  }

  Future<void> completeScenario(String scenarioId, {bool usedSophie = false}) async {
    final xp = usedSophie ? 10 : 25;
    await addXP(xp, usedSophie: usedSophie);

    // Record pattern mastery
    drillEngine.recordAttempt(
      scenarioId: scenarioId,
      success: true,
      usedSophie: usedSophie,
    );

    if (usedSophie && !_progress.drillQueue.contains(scenarioId)) {
      _progress.drillQueue.add(scenarioId);
    }

    _progress.currentScenario++;
    await _saveProgress();
    notifyListeners();
  }

  // Call this when a scenario attempt FAILS
  Future<void> recordFailedAttempt(String scenarioId) async {
    drillEngine.recordAttempt(
      scenarioId: scenarioId,
      success: false,
      usedSophie: false,
    );
    await _saveProgress();
  }

  Future<void> completeMission(int missionId) async {
    final key = 'mission_$missionId';
    if (!_progress.completedMissions.contains(key)) {
      _progress.completedMissions.add(key);
    }
    _progress.currentMission = missionId + 1;
    _progress.currentScenario = 0;
    await _updateStreak();
    await _saveProgress();
    notifyListeners();
  }

  Future<void> _updateStreak() async {
    final now = DateTime.now();
    final last = _progress.lastSessionDate;
    if (last != null) {
      final diff = now.difference(last).inDays;
      if (diff == 1) {
        _progress.streak++;
      } else if (diff > 1) {
        _progress.streak = 1;
      }
    } else {
      _progress.streak = 1;
    }
    _progress.lastSessionDate = now;
  }

  Future<void> resetProgress() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('user_progress');
    _progress = UserProgress();
    notifyListeners();
  }

  String get urgencyMessage {
    final days = _progress.daysUntilDeparture;
    if (days < 0) return "No departure date set.";
    if (days == 0) return "TODAY IS THE DAY. Final briefing activated.";
    if (days <= 3) return "⚠️ $days days left. Drill everything NOW.";
    if (days <= 7) return "🔥 $days days to go. Sophie is getting nervous.";
    if (days <= 14) return "📅 $days days. You're behind schedule.";
    if (days <= 30) return "🎯 $days days. Stay consistent.";
    return "🌍 $days days until departure. Build the habit.";
  }
}
