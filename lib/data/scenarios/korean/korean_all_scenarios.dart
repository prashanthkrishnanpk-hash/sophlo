// lib/data/scenarios/korean/korean_all_scenarios.dart
//
// KOREAN ALL SCENARIOS AGGREGATOR
// ==================================
// BUILD STATUS: COMPLETE — 98 scenarios across 10 missions
//   M01 — The Flight            8 scenarios   ✅ (stub)
//   M02 — Incheon Terminal      10 scenarios  ✅
//   M03 — The Taxi              10 scenarios  ✅
//   M04 — The Guesthouse        10 scenarios  ✅
//   M05 — Café & Street Food    10 scenarios  ✅
//   M06 — Market                10 scenarios  ✅
//   M07 — Pharmacy              10 scenarios  ✅
//   M08 — Restaurant            10 scenarios  ✅
//   M09 — Getting Around        10 scenarios  ✅
//   M10 — The Departure         10 scenarios  ✅
//   TOTAL:                      98 scenarios  ✅

import '../../../models/models.dart';
import '../../languages/korean_scenarios.dart';  // M01 stub
import 'korean_m02_scenarios.dart';
import 'korean_m03_scenarios.dart';
import 'korean_m04_scenarios.dart';
import 'korean_m05_scenarios.dart';
import 'korean_m06_scenarios.dart';
import 'korean_m07_scenarios.dart';
import 'korean_m08_scenarios.dart';
import 'korean_m09_scenarios.dart';
import 'korean_m10_scenarios.dart';

const List<Scenario> allKoreanScenarios = [
  ...koreanMission1Scenarios,
  ...koreanM02Scenarios,
  ...koreanM03Scenarios,
  ...koreanM04Scenarios,
  ...koreanM05Scenarios,
  ...koreanM06Scenarios,
  ...koreanM07Scenarios,
  ...koreanM08Scenarios,
  ...koreanM09Scenarios,
  ...koreanM10Scenarios,
];
