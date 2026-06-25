// lib/data/scenarios/german/german_all_scenarios.dart
//
// GERMAN ALL SCENARIOS AGGREGATOR
// ==================================
// Combines all 10 mission files into a single list.
//
// BUILD STATUS: COMPLETE — 98 scenarios across 10 missions
//   M01 — The Flight            8 scenarios   ✅ (stub)
//   M02 — BER Terminal         10 scenarios   ✅
//   M03 — The Taxi             10 scenarios   ✅
//   M04 — The Hotel            10 scenarios   ✅
//   M05 — Café & Bakery        10 scenarios   ✅
//   M06 — Markets              10 scenarios   ✅
//   M07 — Pharmacy             10 scenarios   ✅
//   M08 — Restaurant           10 scenarios   ✅
//   M09 — Getting Around       10 scenarios   ✅
//   M10 — The Departure        10 scenarios   ✅
//   TOTAL:                     98 scenarios   ✅

import '../../../models/models.dart';
import '../../languages/german_scenarios.dart';   // M01 stub
import 'german_m02_scenarios.dart';
import 'german_m03_scenarios.dart';
import 'german_m04_scenarios.dart';
import 'german_m05_scenarios.dart';
import 'german_m06_scenarios.dart';
import 'german_m07_scenarios.dart';
import 'german_m08_scenarios.dart';
import 'german_m09_scenarios.dart';
import 'german_m10_scenarios.dart';

const List<Scenario> allGermanScenarios = [
  ...germanMission1Scenarios,
  ...germanM02Scenarios,
  ...germanM03Scenarios,
  ...germanM04Scenarios,
  ...germanM05Scenarios,
  ...germanM06Scenarios,
  ...germanM07Scenarios,
  ...germanM08Scenarios,
  ...germanM09Scenarios,
  ...germanM10Scenarios,
];
