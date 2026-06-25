// lib/data/scenario_repository.dart
//
// CENTRAL SCENARIO REPOSITORY
// =============================
// ALL 7 SOPHLO LANGUAGES COMPLETE:
//   Hindi:    96 scenarios — COMPLETE ✅
//   English:  96 scenarios — COMPLETE ✅
//   Spanish:  96 scenarios — COMPLETE ✅
//   Japanese: 98 scenarios — COMPLETE ✅
//   German:   98 scenarios — COMPLETE ✅
//   Korean:   98 scenarios — COMPLETE ✅
//   French:   98 scenarios — COMPLETE ✅ NEW
//   TOTAL: 680 scenarios across 7 languages

import '../models/models.dart';
import 'scenarios/hindi/hindi_all_scenarios.dart';
import 'scenarios/english/english_all_scenarios.dart';
import 'scenarios/spanish/spanish_all_scenarios.dart';
import 'scenarios/japanese/japanese_all_scenarios.dart';
import 'scenarios/german/german_all_scenarios.dart';
import 'scenarios/korean/korean_all_scenarios.dart';
import 'scenarios/french/french_all_scenarios.dart';

class ScenarioRepository {

  static final Map<String, List<Scenario>> _allScenarios = {
    'Hindi':    allHindiScenarios,
    'English':  allEnglishScenarios,
    'Spanish':  allSpanishScenarios,
    'Japanese': allJapaneseScenarios,
    'German':   allGermanScenarios,
    'Korean':   allKoreanScenarios,
    'French':   allFrenchScenarios,
  };

  static List<Scenario> getScenariosForLanguageAndMission(
      String language, int missionId) {
    final scenarios = _allScenarios[language] ?? [];
    return scenarios.where((s) => s.missionId == missionId).toList();
  }

  static Scenario? getScenario(String language, int missionId, int index) {
    final scenarios = getScenariosForLanguageAndMission(language, missionId);
    if (index < scenarios.length) return scenarios[index];
    return null;
  }

  static int getScenarioCount(String language, int missionId) =>
      getScenariosForLanguageAndMission(language, missionId).length;

  static bool missionHasContent(String language, int missionId) =>
      getScenarioCount(language, missionId) > 0;

  static int getBuiltMissionCount(String language) {
    int count = 0;
    for (int m = 1; m <= 10; m++) {
      if (missionHasContent(language, m)) count++;
    }
    return count;
  }

  static String getLanguageBuildStatus(String language) {
    final built = getBuiltMissionCount(language);
    if (built == 10) return 'COMPLETE';
    if (built == 0) return 'COMING SOON';
    return '$built/10 MISSIONS';
  }

  static List<String> get supportedLanguages => _allScenarios.keys.toList();

  static List<String> get completeLanguages => _allScenarios.keys
      .where((lang) => getBuiltMissionCount(lang) == 10)
      .toList();

  static int get totalScenarioCount =>
      _allScenarios.values.fold(0, (sum, list) => sum + list.length);
}
