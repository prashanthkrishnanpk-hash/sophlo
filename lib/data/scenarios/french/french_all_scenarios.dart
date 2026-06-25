// lib/data/scenarios/french/french_all_scenarios.dart
//
// FRENCH ALL SCENARIOS AGGREGATOR
// ==================================
// BUILD STATUS: COMPLETE — 98 scenarios across 10 missions
//   M01 — The Flight            8 scenarios   ✅ (stub)
//   M02 — CDG Terminal         10 scenarios   ✅
//   M03 — The Taxi             10 scenarios   ✅
//   M04 — The Hotel            10 scenarios   ✅
//   M05 — Café & Boulangerie   10 scenarios   ✅
//   M06 — Marché                10 scenarios   ✅
//   M07 — Pharmacie            10 scenarios   ✅
//   M08 — Restaurant           10 scenarios   ✅
//   M09 — Se Déplacer          10 scenarios   ✅
//   M10 — Le Départ            10 scenarios   ✅
//   TOTAL:                     98 scenarios   ✅

import '../../../models/models.dart';
import '../../languages/french_scenarios.dart';  // M01 stub
import 'french_m02_scenarios.dart';
import 'french_m03_scenarios.dart';
import 'french_m04_scenarios.dart';
import 'french_m05_scenarios.dart';
import 'french_m06_scenarios.dart';
import 'french_m07_scenarios.dart';
import 'french_m08_scenarios.dart';
import 'french_m09_scenarios.dart';
import 'french_m10_scenarios.dart';

const List<Scenario> allFrenchScenarios = [
  ...frenchMission1Scenarios,
  ...frenchM02Scenarios,
  ...frenchM03Scenarios,
  ...frenchM04Scenarios,
  ...frenchM05Scenarios,
  ...frenchM06Scenarios,
  ...frenchM07Scenarios,
  ...frenchM08Scenarios,
  ...frenchM09Scenarios,
  ...frenchM10Scenarios,
];
