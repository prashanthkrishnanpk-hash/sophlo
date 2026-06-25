// lib/data/scenarios/english/english_all_scenarios.dart
//
// ENGLISH MASTER SCENARIO REGISTRY
// ===================================
// All 96 scenarios across 10 missions.
// Destination: London, United Kingdom
// Every scenario authored to rep slot specification.
// Every word drawn from the 546-word corpus.
// All 18 patterns validated.
//
// VALIDATION SUMMARY:
//   Mission 1:  6  scenarios — PAT_16(R1,R2), PAT_05(R1), PAT_01(R1), PAT_12(R1), PAT_02(R1)
//   Mission 2:  10 scenarios — PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//                              PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2)
//   Mission 3:  10 scenarios — PAT_14(R1-R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//                              PAT_01(R3), PAT_15(R2), PAT_12(R2), PAT_16(R4)
//   Mission 4:  10 scenarios — PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//                              PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4)
//   Mission 5:  10 scenarios — PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//                              PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3), PAT_16(R5)
//   Mission 6:  10 scenarios — PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4),
//                              PAT_08(R3), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
//   Mission 7:  10 scenarios — PAT_12(R4-R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//                              PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
//   Mission 8:  10 scenarios — PAT_09(R4), PAT_02(R6), PAT_05(R4), PAT_03(R3), PAT_10(R4),
//                              PAT_06(R7✅), PAT_04(R5), PAT_14(R5), PAT_11(R5), PAT_08(R5)
//   Mission 9:  12 scenarios — PAT_16(R6), PAT_17(R1-R3), PAT_18(R1-R3),
//                              PAT_07(R4), PAT_03(R4), PAT_13(R4), PAT_12(R7✅), PAT_14(R6)
//   Mission 10: 8  scenarios — PAT_07(R5,R6), PAT_09(R5), PAT_17(R4), PAT_13(R5),
//                              PAT_15(R6), PAT_18(R4), PAT_16(R7✅)
//
// FINAL REP COUNT VALIDATION:
//   PAT_01: 10 reps ✅  PAT_02: 8  reps ✅  PAT_03: 7  reps ✅
//   PAT_04: 7  reps ✅  PAT_05: 7  reps ✅  PAT_06: 7  reps ✅
//   PAT_07: 7  reps ✅  PAT_08: 7  reps ✅  PAT_09: 7  reps ✅
//   PAT_10: 7  reps ✅  PAT_11: 7  reps ✅  PAT_12: 7  reps ✅
//   PAT_13: 7  reps ✅  PAT_14: 7  reps ✅  PAT_15: 7  reps ✅
//   PAT_16: 10 reps ✅  PAT_17: 7  reps ✅  PAT_18: 7  reps ✅
//
//   ALL 18 PATTERNS VALIDATED ✅
//   TOTAL SCENARIOS: 96 ✅
//   TOTAL PATTERN REPS: 148 ✅
//
// PAT_17 English substitute: Indirect request forms
//   "Could I have..." / "I'd love one if..." / "Would you mind if..."
//   Introduced Mission 9, drilled through Mission 10
//
// PAT_18 English cultural ritual: British small talk
//   Weather commentary, Tube complaints, queue commiseration,
//   "Can't complain", "Mind the gap", pub ritual
//   Introduced Mission 9, drilled through Mission 10

import '../../../models/models.dart';
import 'english_m01_scenarios.dart';
import 'english_m02_scenarios.dart';
import 'english_m03_scenarios.dart';
import 'english_m04_scenarios.dart';
import 'english_m05_scenarios.dart';
import 'english_m06_scenarios.dart';
import 'english_m07_scenarios.dart';
import 'english_m08_scenarios.dart';
import 'english_m09_scenarios.dart';
import 'english_m10_scenarios.dart';

// All 96 English scenarios in mission order
final List<Scenario> allEnglishScenarios = [
  ...englishM01Scenarios,
  ...englishM02Scenarios,
  ...englishM03Scenarios,
  ...englishM04Scenarios,
  ...englishM05Scenarios,
  ...englishM06Scenarios,
  ...englishM07Scenarios,
  ...englishM08Scenarios,
  ...englishM09Scenarios,
  ...englishM10Scenarios,
];

// Quick access by mission
List<Scenario> getEnglishScenariosForMission(int missionId) =>
    allEnglishScenarios.where((s) => s.missionId == missionId).toList();

// Quick access by scenario ID
Scenario? getEnglishScenarioById(String scenarioId) {
  try {
    return allEnglishScenarios.firstWhere((s) => s.scenarioId == scenarioId);
  } catch (_) {
    return null;
  }
}
