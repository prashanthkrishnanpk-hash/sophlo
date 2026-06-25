// lib/data/scenarios/japanese/japanese_all_scenarios.dart
//
// JAPANESE ALL SCENARIOS AGGREGATOR
// ====================================
// Combines all 10 mission files into a single list.
// Used by ScenarioRepository via 'allJapaneseScenarios'.
//
// BUILD STATUS: COMPLETE — 98 scenarios across 10 missions
//   M01 — The Flight            8 scenarios   ✅ (from stub)
//   M02 — Narita Terminal       10 scenarios  ✅
//   M03 — The Taxi              10 scenarios  ✅
//   M04 — The Hotel             10 scenarios  ✅
//   M05 — Café & Conbini        10 scenarios  ✅
//   M06 — Markets               10 scenarios  ✅
//   M07 — Pharmacy & Clinic     10 scenarios  ✅
//   M08 — Restaurant            10 scenarios  ✅
//   M09 — Getting Around        10 scenarios  ✅
//   M10 — The Departure         10 scenarios  ✅
//   TOTAL:                      98 scenarios  ✅

import '../../../models/models.dart';
import '../../languages/japanese_scenarios.dart';  // M01 stub
import 'japanese_m02_scenarios.dart';
import 'japanese_m03_scenarios.dart';
import 'japanese_m04_scenarios.dart';
import 'japanese_m05_scenarios.dart';
import 'japanese_m06_scenarios.dart';
import 'japanese_m07_scenarios.dart';
import 'japanese_m08_scenarios.dart';
import 'japanese_m09_scenarios.dart';
import 'japanese_m10_scenarios.dart';

const List<Scenario> allJapaneseScenarios = [
  ...japaneseMission1Scenarios,
  ...japaneseM02Scenarios,
  ...japaneseM03Scenarios,
  ...japaneseM04Scenarios,
  ...japaneseM05Scenarios,
  ...japaneseM06Scenarios,
  ...japaneseM07Scenarios,
  ...japaneseM08Scenarios,
  ...japaneseM09Scenarios,
  ...japaneseM10Scenarios,
];
