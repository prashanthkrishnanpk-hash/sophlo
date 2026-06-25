// lib/data/scenarios/spanish/spanish_all_scenarios.dart
//
// SPANISH ALL SCENARIOS AGGREGATOR
// ==================================
// Combines all 10 mission files into a single list.
// Used by ScenarioRepository via 'allSpanishScenarios'.
//
// BUILD STATUS: COMPLETE — 96 scenarios across 10 missions
//   M01 — The Flight           6 scenarios   ✅
//   M02 — The Terminal        10 scenarios   ✅
//   M03 — The Taxi            10 scenarios   ✅
//   M04 — The Hostel          10 scenarios   ✅
//   M05 — The Café            10 scenarios   ✅
//   M06 — Street Market       10 scenarios   ✅
//   M07 — The Pharmacy        10 scenarios   ✅
//   M08 — The Restaurant      10 scenarios   ✅
//   M09 — Getting Around      10 scenarios   ✅
//   M10 — The Departure       10 scenarios   ✅
//   TOTAL:                    96 scenarios   ✅

import '../../../models/models.dart';
import 'spanish_m01_scenarios.dart';
import 'spanish_m02_scenarios.dart';
import 'spanish_m03_scenarios.dart';
import 'spanish_m04_scenarios.dart';
import 'spanish_m05_scenarios.dart';
import 'spanish_m06_scenarios.dart';
import 'spanish_m07_scenarios.dart';
import 'spanish_m08_scenarios.dart';
import 'spanish_m09_scenarios.dart';
import 'spanish_m10_scenarios.dart';

const List<Scenario> allSpanishScenarios = [
  ...spanishM01Scenarios,
  ...spanishM02Scenarios,
  ...spanishM03Scenarios,
  ...spanishM04Scenarios,
  ...spanishM05Scenarios,
  ...spanishM06Scenarios,
  ...spanishM07Scenarios,
  ...spanishM08Scenarios,
  ...spanishM09Scenarios,
  ...spanishM10Scenarios,
];
