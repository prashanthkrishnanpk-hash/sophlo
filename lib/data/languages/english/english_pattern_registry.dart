// lib/data/languages/english/english_pattern_registry.dart
//
// ENGLISH PATTERN REGISTRY
// ==========================
// Maps all 96 English scenario IDs to their primary pattern.
// Used by the drill engine to track mastery at pattern level.
//
// PAT_17 English substitute: Indirect Request Forms
//   "Could I have..." / "I'd love one if..." / "Would you mind..."
//   Contrasts with direct "Give me" to teach British pragmatics
//
// PAT_18 English cultural ritual: British Small Talk
//   Weather openers, queue commiseration, transport complaints,
//   "Mind the gap", "Can't complain", pub round rituals

import '../../../data/core/universal_patterns.dart';

// Scenario → Pattern mapping for all 96 English scenarios
const Map<String, String> englishScenarioPatternMap = {

  // ── MISSION 1 ────────────────────────────────────────────
  "EN_M01_S01": "PAT_16", // Hello — social cluster R1
  "EN_M01_S02": "PAT_05", // My seat is X — identity R1
  "EN_M01_S03": "PAT_01", // Could I have X — request R1
  "EN_M01_S04": "PAT_12", // I feel ill — medical R1
  "EN_M01_S05": "PAT_02", // I'd like X — want/need R1
  "EN_M01_S06": "PAT_16", // Thank you, goodbye — social R2

  // ── MISSION 2 ────────────────────────────────────────────
  "EN_M02_S01": "PAT_16", // Hello — social R3
  "EN_M02_S02": "PAT_07", // I'm here on holiday — self declaration R1
  "EN_M02_S03": "PAT_05", // My name is X — identity R2
  "EN_M02_S04": "PAT_08", // Here is my passport — handover R1
  "EN_M02_S05": "PAT_09", // Ticket to London — purpose R1
  "EN_M02_S06": "PAT_03", // Where is the exit — location R1
  "EN_M02_S07": "PAT_06", // Do you have Oyster cards — yes/no R1
  "EN_M02_S08": "PAT_10", // What time is the last Tube — time R1
  "EN_M02_S09": "PAT_15", // Sorry could you repeat — repair R1
  "EN_M02_S10": "PAT_01", // Could I have ten pounds — request R2 (DRILL)

  // ── MISSION 3 ────────────────────────────────────────────
  "EN_M03_S01": "PAT_14", // Could you take me to X — spatial R1
  "EN_M03_S02": "PAT_14", // Could you stop at X — spatial R2
  "EN_M03_S03": "PAT_14", // Could you turn left — spatial R3
  "EN_M03_S04": "PAT_06", // Is this the right road — yes/no R2
  "EN_M03_S05": "PAT_04", // How much is the fare — price R1
  "EN_M03_S06": "PAT_11", // This doesn't look right — negation R1
  "EN_M03_S07": "PAT_01", // Could I have my change — request R3 (DRILL)
  "EN_M03_S08": "PAT_15", // Sorry could you repeat — repair R2
  "EN_M03_S09": "PAT_12", // I'm absolutely knackered — medical R2 (DRILL)
  "EN_M03_S10": "PAT_16", // Cheers have a good one — social R4

  // ── MISSION 4 ────────────────────────────────────────────
  "EN_M04_S01": "PAT_02", // I'd like to check in — want/need R2
  "EN_M04_S02": "PAT_05", // My name is X — identity R3
  "EN_M04_S03": "PAT_08", // Here is my passport — handover R2
  "EN_M04_S04": "PAT_03", // Where is the lift — location R2
  "EN_M04_S05": "PAT_06", // Do you have WiFi — yes/no R3
  "EN_M04_S06": "PAT_10", // What time is breakfast — time R2
  "EN_M04_S07": "PAT_07", // I'm a student — self declaration R2
  "EN_M04_S08": "PAT_13", // One more towel please — quantity R1
  "EN_M04_S09": "PAT_15", // Could you write that down — repair R3
  "EN_M04_S10": "PAT_01", // Could I have a blanket — request R4 (DRILL)

  // ── MISSION 5 ────────────────────────────────────────────
  "EN_M05_S01": "PAT_06", // Do you have a table — yes/no R4
  "EN_M05_S02": "PAT_02", // I'd like the full English — want/need R3
  "EN_M05_S03": "PAT_01", // Could I have a tea — request R5
  "EN_M05_S04": "PAT_12", // I'm allergic to gluten — medical R3
  "EN_M05_S05": "PAT_04", // How much is the pudding — price R2
  "EN_M05_S06": "PAT_13", // A bit less milk — quantity R2
  "EN_M05_S07": "PAT_11", // This isn't what I ordered — negation R2
  "EN_M05_S08": "PAT_09", // Box to take away — purpose R2
  "EN_M05_S09": "PAT_07", // I'm vegetarian — self declaration R3 (DRILL)
  "EN_M05_S10": "PAT_16", // That was absolutely lovely — social R5

  // ── MISSION 6 ────────────────────────────────────────────
  "EN_M06_S01": "PAT_04", // How much is this — price R3
  "EN_M06_S02": "PAT_02", // Is there a discount — want/need R4
  "EN_M06_S03": "PAT_13", // Would you take forty-five — quantity R3
  "EN_M06_S04": "PAT_11", // This buckle isn't right — negation R3
  "EN_M06_S05": "PAT_14", // I'll have a look around — spatial R4 (DRILL)
  "EN_M06_S06": "PAT_08", // Here you go fifty pounds — handover R3 (DRILL)
  "EN_M06_S07": "PAT_15", // Excuse me sorry to interrupt — repair R4
  "EN_M06_S08": "PAT_09", // It's for a friend as a gift — purpose R3
  "EN_M06_S09": "PAT_06", // Do you have this in green — yes/no R5
  "EN_M06_S10": "PAT_01", // Could I have a receipt — request R6

  // ── MISSION 7 ────────────────────────────────────────────
  "EN_M07_S01": "PAT_12", // I have a terrible headache — medical R4
  "EN_M07_S02": "PAT_12", // I've had it since morning — medical R5
  "EN_M07_S03": "PAT_12", // I'm allergic to ibuprofen — medical R6
  "EN_M07_S04": "PAT_02", // I'd also like antacid — want/need R5
  "EN_M07_S05": "PAT_04", // How much all together — price R4
  "EN_M07_S06": "PAT_10", // How often should I take — time R3
  "EN_M07_S07": "PAT_11", // I don't have a prescription — negation R4
  "EN_M07_S08": "PAT_06", // Do you have sunscreen — yes/no R6
  "EN_M07_S09": "PAT_08", // Here is my insurance card — handover R4
  "EN_M07_S10": "PAT_15", // Before or after food — repair R5

  // ── MISSION 8 ────────────────────────────────────────────
  "EN_M08_S01": "PAT_09", // Return to Edinburgh — purpose R4
  "EN_M08_S02": "PAT_02", // I'd like standard class — want/need R6
  "EN_M08_S03": "PAT_05", // My seat is 34C — identity R4
  "EN_M08_S04": "PAT_03", // Where is platform three — location R3
  "EN_M08_S05": "PAT_10", // What time does it leave — time R4
  "EN_M08_S06": "PAT_06", // Is this the Edinburgh train — yes/no R7 ✅ FINAL
  "EN_M08_S07": "PAT_04", // How much is first class — price R5
  "EN_M08_S08": "PAT_14", // Which way is Coach A — spatial R5
  "EN_M08_S09": "PAT_11", // My ticket isn't scanning — negation R5
  "EN_M08_S10": "PAT_08", // Here is my booking reference — handover R5

  // ── MISSION 9 ────────────────────────────────────────────
  "EN_M09_S01": "PAT_16", // All right Oliver! — social R6
  "EN_M09_S02": "PAT_17", // I'd love one if you're making — indirect R1
  "EN_M09_S03": "PAT_18", // Dreadful weather, isn't it — small talk R1
  "EN_M09_S04": "PAT_07", // I'm a photographer, actually — self decl R4
  "EN_M09_S05": "PAT_03", // Where's the loo — location R4
  "EN_M09_S06": "PAT_13", // A bit more gravy — quantity R4
  "EN_M09_S07": "PAT_18", // Dreadful delays on the Northern — small talk R2
  "EN_M09_S08": "PAT_17", // Would you mind if I had a biscuit — indirect R2
  "EN_M09_S09": "PAT_12", // I'm absolutely stuffed — medical R7 ✅ FINAL
  "EN_M09_S10": "PAT_14", // Could you walk me to the bus stop — spatial R6
  "EN_M09_S11": "PAT_17", // What do you actually think — indirect R3
  "EN_M09_S12": "PAT_18", // Absolutely lovely please thank mum — small talk R3

  // ── MISSION 10 ───────────────────────────────────────────
  "EN_M10_S01": "PAT_07", // Whereabouts are you from — self decl R5
  "EN_M10_S02": "PAT_07", // I'm from X, actually — self decl R6
  "EN_M10_S03": "PAT_09", // I'm off to X next — purpose R5
  "EN_M10_S04": "PAT_17", // I'm curious how long — indirect R4
  "EN_M10_S05": "PAT_13", // Another round of teas — quantity R5
  "EN_M10_S06": "PAT_15", // I didn't catch your name — repair R6
  "EN_M10_S07": "PAT_18", // Teaching the Tube rule — small talk R4
  "EN_M10_S08": "PAT_16", // Absolutely lovely safe travels — social R7 ✅ FINAL
};

// Lookup helpers
class EnglishPatternRegistry {
  static String? getPatternForScenario(String scenarioId) =>
      englishScenarioPatternMap[scenarioId];

  static List<String> getScenariosForPattern(String patternId) =>
      englishScenarioPatternMap.entries
          .where((e) => e.value == patternId)
          .map((e) => e.key)
          .toList();

  static Map<String, int> getRepCounts() {
    final counts = <String, int>{};
    for (final patternId in englishScenarioPatternMap.values) {
      counts[patternId] = (counts[patternId] ?? 0) + 1;
    }
    return counts;
  }

  static bool validateAllPatternsComplete() {
    final counts = getRepCounts();
    final targets = {
      'PAT_01': 10, 'PAT_02': 8,  'PAT_03': 7,  'PAT_04': 7,
      'PAT_05': 7,  'PAT_06': 7,  'PAT_07': 7,  'PAT_08': 7,
      'PAT_09': 7,  'PAT_10': 7,  'PAT_11': 7,  'PAT_12': 7,
      'PAT_13': 7,  'PAT_14': 7,  'PAT_15': 7,  'PAT_16': 10,
      'PAT_17': 7,  'PAT_18': 7,
    };
    return targets.entries.every(
      (e) => (counts[e.key] ?? 0) >= e.value,
    );
  }
}
