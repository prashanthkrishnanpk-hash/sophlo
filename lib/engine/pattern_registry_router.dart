// lib/engine/pattern_registry_router.dart
//
// UNIVERSAL PATTERN REGISTRY ROUTER
// ====================================
// All 7 Sophlo languages now wired. Project complete.

import '../data/languages/hindi/hindi_pattern_map.dart' as hindi;
import '../data/languages/english/english_pattern_registry.dart' as english;
import '../data/languages/spanish/spanish_pattern_map.dart' as spanish;
import '../data/languages/japanese/japanese_pattern_map.dart' as japanese;
import '../data/languages/german/german_pattern_map.dart' as german;
import '../data/languages/korean/korean_pattern_map.dart' as korean;
import '../data/languages/french/french_pattern_map.dart' as french;

class PatternRegistryRouter {

  static final Map<String, Map<String, String>> _languageMaps = {
    'Hindi':    hindi.hindiScenarioPatternMap,
    'English':  english.englishScenarioPatternMap,
    'Spanish':  spanish.spanishScenarioPatternMap,
    'Japanese': japanese.japaneseScenarioPatternMap,
    'German':   german.germanScenarioPatternMap,
    'Korean':   korean.koreanScenarioPatternMap,
    'French':   french.frenchScenarioPatternMap,
  };

  static String? getPatternForScenario(String language, String scenarioId) =>
      _languageMaps[language]?[scenarioId];

  static List<String> getScenariosForPattern(String language, String patternId) {
    final map = _languageMaps[language];
    if (map == null) return [];
    return map.entries
        .where((e) => e.value == patternId)
        .map((e) => e.key)
        .toList();
  }

  static List<String> getSiblingScenarios(String language, String scenarioId) {
    final patternId = getPatternForScenario(language, scenarioId);
    if (patternId == null) return [];
    return getScenariosForPattern(language, patternId)
        .where((id) => id != scenarioId)
        .toList();
  }

  static Map<String, int> getRepCounts(String language) {
    final map = _languageMaps[language];
    if (map == null) return {};
    final counts = <String, int>{};
    for (final patternId in map.values) {
      counts[patternId] = (counts[patternId] ?? 0) + 1;
    }
    return counts;
  }

  static bool isLanguageMapped(String language) =>
      _languageMaps.containsKey(language);

  static List<String> get mappedLanguages => _languageMaps.keys.toList();
}
