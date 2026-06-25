// lib/data/core/universal_patterns.dart
//
// THE 18 UNIVERSAL PATTERN DEFINITIONS
// =====================================
// This is the single source of truth for all pattern metadata.
// Language-specific surface forms live in each language's pattern file.
// The structure, rep targets, and mission spread are defined here ONCE.
// All 7 languages reference this file.

// ── Pattern Tier ─────────────────────────────────────────────
enum PatternTier {
  tier1_immediateSurvival,   // Patterns 1-6:  Must have day 1
  tier2_functionalFluency,   // Patterns 7-12: Makes you competent
  tier3_socialCompetence,    // Patterns 13-16: Makes you human
  culturalSpecific,          // Patterns 17-18: Makes you local
}

// ── Universal Pattern Definition ────────────────────────────
class UniversalPattern {
  final String patternId;
  final String templateDescription;     // Language-agnostic description
  final String englishTemplate;         // English surface form as reference
  final PatternTier tier;
  final int frequencyRank;
  final int targetReps;
  final List<int> missionSpread;        // Which missions this appears in
  final bool isDrillInjectable;         // Can appear as cross-mission drill
  final String acquisitionNote;         // Why this pattern matters

  const UniversalPattern({
    required this.patternId,
    required this.templateDescription,
    required this.englishTemplate,
    required this.tier,
    required this.frequencyRank,
    required this.targetReps,
    required this.missionSpread,
    required this.isDrillInjectable,
    required this.acquisitionNote,
  });
}

// ── The 18 Universal Patterns ────────────────────────────────
const List<UniversalPattern> universalPatterns = [

  // ══ TIER 1: IMMEDIATE SURVIVAL ══════════════════════════

  UniversalPattern(
    patternId: "PAT_01",
    templateDescription: "REQUEST_IMPERATIVE — Give me / Please give [NOUN]",
    englishTemplate: "Could I have [X], please?",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 1,
    targetReps: 10,
    missionSpread: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "The master transaction key. Every purchase, every request, "
        "every interaction uses this frame. Must reach automaticity by M4.",
  ),

  UniversalPattern(
    patternId: "PAT_02",
    templateDescription: "WANT_NEED — I want / I need [NOUN]",
    englishTemplate: "I'd like / I need [X]",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 2,
    targetReps: 8,
    missionSpread: [1, 3, 4, 5, 6, 7, 8, 9],
    isDrillInjectable: true,
    acquisitionNote:
        "Subtly different from PAT_01 — expresses desire/need rather than "
        "a direct request. Covers situations where you're stating need to "
        "an official (customs, clinic) rather than requesting from a vendor.",
  ),

  UniversalPattern(
    patternId: "PAT_03",
    templateDescription: "LOCATION_QUESTION — Where is [NOUN]?",
    englishTemplate: "Where is [X]?",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 3,
    targetReps: 7,
    missionSpread: [2, 3, 4, 5, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "The navigation survival pattern. A traveller who can ask "
        "where something is and understand a directional answer can "
        "survive almost anywhere. Slot [X] takes any noun.",
  ),

  UniversalPattern(
    patternId: "PAT_04",
    templateDescription: "PRICE_QUESTION — How much is [NOUN]?",
    englishTemplate: "How much is [X]?",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 4,
    targetReps: 7,
    missionSpread: [3, 5, 6, 7, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "Every financial transaction begins here. Knowing this pattern "
        "prevents tourist pricing exploitation and enables negotiation. "
        "Critically: the response (a number) is universally comprehensible.",
  ),

  UniversalPattern(
    patternId: "PAT_05",
    templateDescription: "IDENTITY_POSSESSION — My [NOUN] is [X]",
    englishTemplate: "My [X] is [Y]",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 5,
    targetReps: 7,
    missionSpread: [1, 2, 4, 8, 9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "Identity and possession. At every checkpoint — airport, hostel, "
        "train — you must declare who you are and what you have. "
        "Gender agreement in inflected languages (Hindi, French, German, "
        "Spanish) is the key grammar point to drill here.",
  ),

  UniversalPattern(
    patternId: "PAT_06",
    templateDescription: "YES_NO_AVAILABILITY — Is there [NOUN]? / Do you have [NOUN]?",
    englishTemplate: "Is there [X]? / Do you have [X]?",
    tier: PatternTier.tier1_immediateSurvival,
    frequencyRank: 6,
    targetReps: 7,
    missionSpread: [2, 4, 5, 7, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "The availability check. Converts any noun into a yes/no question "
        "about its existence. The answer YES opens the transaction; NO "
        "triggers PAT_03 (where is it?) or PAT_14 (go somewhere else).",
  ),

  // ══ TIER 2: FUNCTIONAL FLUENCY ══════════════════════════

  UniversalPattern(
    patternId: "PAT_07",
    templateDescription: "SELF_DECLARATION — I am [X] / I am from [X]",
    englishTemplate: "I am [X] / I'm from [X]",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 7,
    targetReps: 7,
    missionSpread: [2, 4, 5, 7, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "Identity declaration. Used at customs (purpose), hostel (name/job), "
        "café (dietary preference), pharmacy (condition), and social contexts. "
        "The slot [X] is the most varied of all patterns — nationality, job, "
        "dietary label, medical condition, personality.",
  ),

  UniversalPattern(
    patternId: "PAT_08",
    templateDescription: "DOCUMENT_HANDOVER — Here is my [NOUN]",
    englishTemplate: "Here is my [X]",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 8,
    targetReps: 7,
    missionSpread: [1, 2, 4, 7, 8, 9],
    isDrillInjectable: true,
    acquisitionNote:
        "The physical handover phrase. Passport at customs, ID at hostel, "
        "ticket on train, insurance at pharmacy. Three different nouns, "
        "three different high-stakes situations, identical structure. "
        "Contextual overlearning at its most powerful.",
  ),

  UniversalPattern(
    patternId: "PAT_09",
    templateDescription: "PURPOSE_DESTINATION — [NOUN] for/to [X]",
    englishTemplate: "[NOUN] for/to [X]",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 9,
    targetReps: 7,
    missionSpread: [2, 3, 5, 6, 8, 9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "The postposition/preposition of purpose. In Hindi: के लिए. "
        "In French/Spanish: pour. In German: für/nach. In Korean: 으로. "
        "This tiny word/particle connects every destination and purpose "
        "statement. It is the most-used grammatical connector in travel.",
  ),

  UniversalPattern(
    patternId: "PAT_10",
    templateDescription: "TIME_QUESTION — What time / How long [VERB]?",
    englishTemplate: "What time is [X]? / How long does [X] take?",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 10,
    targetReps: 7,
    missionSpread: [2, 4, 5, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "Two time question forms bundled: clock time (What time does it open?) "
        "and duration (How long does it take?). The distinction matters — "
        "confusing them is a common source of missed trains and closed shops.",
  ),

  UniversalPattern(
    patternId: "PAT_11",
    templateDescription: "NEGATION_PROBLEM — [X] is not working / I don't have [X]",
    englishTemplate: "[X] isn't working / I don't have [X]",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 11,
    targetReps: 7,
    missionSpread: [3, 5, 7, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "The complaint and troubleshooting frame. Negation structure varies "
        "significantly by language — Hindi progressive negation differs from "
        "French ne...pas which differs from Korean 안/못. The cognitive load "
        "of negation under stress is high. Drill it early and often.",
  ),

  UniversalPattern(
    patternId: "PAT_12",
    templateDescription: "MEDICAL_STATE — I have [symptom] / I'm allergic to [X]",
    englishTemplate: "I have [X] / I'm allergic to [X]",
    tier: PatternTier.tier2_functionalFluency,
    frequencyRank: 12,
    targetReps: 7,
    missionSpread: [1, 5, 6, 7, 9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "Survival-critical. A traveller who cannot communicate a medical "
        "condition or allergy is genuinely at risk. Two forms: active symptom "
        "(I have a headache) and pre-existing condition (I am allergic). "
        "Both must be automatic by Mission 7.",
  ),

  // ══ TIER 3: SOCIAL COMPETENCE ═══════════════════════════

  UniversalPattern(
    patternId: "PAT_13",
    templateDescription: "QUANTITY_MODIFIER — More / Less / [NUMBER] of [NOUN]",
    englishTemplate: "A bit more [X] / Less [X] / [N] of [X]",
    tier: PatternTier.tier3_socialCompetence,
    frequencyRank: 13,
    targetReps: 7,
    missionSpread: [5, 6, 7, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "Quantity modification. The difference between ordering one item "
        "and two, between getting too much spice and the right amount. "
        "Also the negotiation tool in markets — 'two of these for X price'.",
  ),

  UniversalPattern(
    patternId: "PAT_14",
    templateDescription: "SPATIAL_COMMAND — Go to / Stop at / Turn [direction]",
    englishTemplate: "Go to [X] / Stop here / Turn [direction]",
    tier: PatternTier.tier3_socialCompetence,
    frequencyRank: 14,
    targetReps: 7,
    missionSpread: [3, 4, 8, 9, 10],
    isDrillInjectable: true,
    acquisitionNote:
        "Movement commands. Primarily used in taxi (M3) but recurs whenever "
        "you're directing someone — delivery, hostel staff, friend's house. "
        "The three core commands: go, stop, turn — memorised as a cluster.",
  ),

  UniversalPattern(
    patternId: "PAT_15",
    templateDescription: "POLITENESS_REPAIR — Excuse me / Sorry / Can you repeat?",
    englishTemplate: "Excuse me / Could you say that again?",
    tier: PatternTier.tier3_socialCompetence,
    frequencyRank: 15,
    targetReps: 7,
    missionSpread: [2, 3, 4, 6, 7, 9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "The repair toolkit. When communication breaks down — and it will — "
        "these phrases let the user recover gracefully instead of freezing. "
        "'Can you repeat?' is arguably the single most useful phrase a "
        "language learner can possess.",
  ),

  UniversalPattern(
    patternId: "PAT_16",
    templateDescription: "SOCIAL_CLUSTER — Hello / Thank you / Goodbye / Welcome",
    englishTemplate: "Hello / Thank you / Goodbye / You're welcome",
    tier: PatternTier.tier3_socialCompetence,
    frequencyRank: 16,
    targetReps: 10,
    missionSpread: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "Social lubricant. These phrases open and close every interaction. "
        "They are not 'basic' — they are constant. Grouped as a cluster "
        "because they are always learned and recalled together.",
  ),

  // ══ LANGUAGE-SPECIFIC CULTURAL SLOTS ════════════════════

  UniversalPattern(
    patternId: "PAT_17",
    templateDescription: "REGISTER_SHIFT — Formal vs Informal address",
    englishTemplate: "Language-specific (see implementation per language)",
    tier: PatternTier.culturalSpecific,
    frequencyRank: 17,
    targetReps: 7,
    missionSpread: [9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "Hindi: आप→तुम. Korean: 존댓말→반말. Japanese: 敬語→普通語. "
        "French: Vous→Tu. German: Sie→du. Spanish: Quisiera conditional. "
        "English: Indirect request forms. "
        "Introduced ONLY in Mission 9 (Local Friend's House) where the "
        "social context makes the register shift natural and necessary.",
  ),

  UniversalPattern(
    patternId: "PAT_18",
    templateDescription: "CULTURAL_RITUAL — Language-specific social ritual script",
    englishTemplate: "Language-specific (see implementation per language)",
    tier: PatternTier.culturalSpecific,
    frequencyRank: 18,
    targetReps: 7,
    missionSpread: [9, 10],
    isDrillInjectable: false,
    acquisitionNote:
        "Hindi: Chai ritual. Korean: Bow + meal blessing. Japanese: Gift giving. "
        "Spanish: Greeting kiss. French: Bonjour protocol. German: Directness script. "
        "English: Small talk. "
        "This is the pattern that makes users feel like they understand the culture, "
        "not just the language. The emotional payoff of Mission 9.",
  ),
];

// ── Utility class ─────────────────────────────────────────────
class UniversalPatternRegistry {
  static UniversalPattern? getById(String patternId) {
    try {
      return universalPatterns.firstWhere((p) => p.patternId == patternId);
    } catch (_) {
      return null;
    }
  }

  static List<UniversalPattern> getByTier(PatternTier tier) =>
      universalPatterns.where((p) => p.tier == tier).toList();

  static List<UniversalPattern> getByMission(int missionId) =>
      universalPatterns
          .where((p) => p.missionSpread.contains(missionId))
          .toList();

  static int totalRepsBudgetForMission(int missionId) =>
      getByMission(missionId).fold(0, (sum, p) => sum + 1);

  // Returns the rep number for a pattern in a given mission
  // e.g. PAT_01 in M3 = Rep 3 (third time user sees this pattern)
  static int getRepNumberForMission(String patternId, int missionId) {
    final pattern = getById(patternId);
    if (pattern == null) return 0;
    final idx = pattern.missionSpread.indexOf(missionId);
    return idx == -1 ? 0 : idx + 1;
  }
}
