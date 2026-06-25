// lib/data/languages/hindi/hindi_pattern_registry.dart
//
// THE HINDI 20% PATTERN REGISTRY
// ================================
// 80 scenarios across 10 missions reduce to 16 core grammar patterns.
// These 16 patterns ARE the 20% of Hindi that covers 80% of traveller needs.
//
// Every scenario is tagged with its patternId.
// The drill engine uses patternId — not scenarioId — to track mastery.
// When a pattern is missed, it resurfaces in a DIFFERENT mission context.
// Same structure. Different noun. Different situation. Maximum retention.

class HindiGrammarPattern {
  final String patternId;
  final String patternTemplate;       // The structural skeleton
  final String englishMeaning;        // What it does in plain English
  final String linguisticLabel;       // Technical label for the pattern type
  final int difficultyTier;           // 1 = basic, 2 = intermediate, 3 = complex
  final int frequencyRank;            // 1 = highest real-world frequency
  final List<String> scenarioIds;     // Every scenario that drills this pattern
  final List<int> missionIds;         // Which missions it appears in (the drill spread)
  final String drillNote;             // Why this pattern is critical

  const HindiGrammarPattern({
    required this.patternId,
    required this.patternTemplate,
    required this.englishMeaning,
    required this.linguisticLabel,
    required this.difficultyTier,
    required this.frequencyRank,
    required this.scenarioIds,
    required this.missionIds,
    required this.drillNote,
  });
}

// ============================================================
// THE 16 CORE HINDI PATTERNS
// ============================================================

const List<HindiGrammarPattern> hindiPatterns = [

  // ── PATTERN 01 ──────────────────────────────────────────
  // [NOUN] दीजिए — "Give me [NOUN]"
  // THE most important pattern. Works in every transaction.
  // Frequency rank 1. Appears 7 times across 6 missions.
  HindiGrammarPattern(
    patternId: "HI_PAT_01",
    patternTemplate: "[NOUN] दीजिए",
    englishMeaning: "Give me / Please give [NOUN]",
    linguisticLabel: "IMPERATIVE_REQUEST",
    difficultyTier: 1,
    frequencyRank: 1,
    scenarioIds: [
      "HI_003", // Flight: पानी दीजिए (water)
      "HI_007", // Flight: पेन दीजिए (pen)
      "HI_023", // Taxi: छुट्टे दीजिए (change)
      "HI_036", // Café: [X] दीजिए (drink)
      "HI_037", // Café: चम्मच दीजिए (spoon)
      "HI_046", // Market: [X] नग दीजिए (quantity)
      "HI_047", // Market: थैली दीजिए (bag)
      "HI_048", // Market: बाकी पैसे वापस दीजिए (change back)
      "HI_052", // Pharmacy: [X] भी दीजिए (also give me)
      "HI_060", // Station: हाँ, काट दीजिए (cut the ticket)
    ],
    missionIds: [1, 3, 5, 6, 7, 8],
    drillNote:
        "दीजिए is the polite imperative of देना. Master this and you can request anything "
        "anywhere. Drill it across flight, taxi, café, market, pharmacy, station.",
  ),

  // ── PATTERN 02 ──────────────────────────────────────────
  // मुझे [NOUN] चाहिए — "I want/need [NOUN]"
  // Core want/need expression. Second most important pattern.
  HindiGrammarPattern(
    patternId: "HI_PAT_02",
    patternTemplate: "मुझे [NOUN] चाहिए",
    englishMeaning: "I want / I need [NOUN]",
    linguisticLabel: "DATIVE_WANT_CONSTRUCTION",
    difficultyTier: 1,
    frequencyRank: 2,
    scenarioIds: [
      "HI_005", // Flight: मुझे [X] चाहिए (meal)
      "HI_016", // Terminal: शहर के लिए प्रीपेड टैक्सी चाहिए (taxi)
      "HI_057", // Station: [X] के लिए एक टिकट चाहिए (ticket)
      "HI_058", // Station: स्लीपर क्लास चाहिए (class)
      "HI_065", // SIM Shop: लोकल सिम कार्ड चाहिए (SIM)
    ],
    missionIds: [1, 2, 8, 9],
    drillNote:
        "चाहिए attaches to मुझे (dative 'to me'). The slot [NOUN] takes almost any "
        "object — food, ticket, SIM, taxi. One pattern, infinite uses.",
  ),

  // ── PATTERN 03 ──────────────────────────────────────────
  // [NOUN] कहाँ है? — "Where is [NOUN]?"
  // The navigation survival pattern. Critical for any physical space.
  HindiGrammarPattern(
    patternId: "HI_PAT_03",
    patternTemplate: "[NOUN] कहाँ है?",
    englishMeaning: "Where is [NOUN]?",
    linguisticLabel: "LOCATION_QUESTION",
    difficultyTier: 1,
    frequencyRank: 3,
    scenarioIds: [
      "HI_013", // Terminal: मेरा सामान कहाँ है? (bag)
      "HI_015", // Terminal: बाहर जाने का रास्ता कहाँ है? (exit)
      "HI_031", // Hostel: लिफ्ट कहाँ है? (lift)
      "HI_061", // Station: प्लेटफ़ॉर्म [X] कहाँ है? (platform)
      "HI_063", // Station: मेरी सीट [X] कहाँ है? (seat)
    ],
    missionIds: [2, 4, 8],
    drillNote:
        "कहाँ है is the universal location question. Swap [NOUN] for any object or place. "
        "Drilled across terminal, hostel, and station — three distinct navigation contexts.",
  ),

  // ── PATTERN 04 ──────────────────────────────────────────
  // मेरा/मेरी [NOUN] [X] है — "My [NOUN] is [X]"
  // Identity and possession declaration. Used constantly at checkpoints.
  HindiGrammarPattern(
    patternId: "HI_PAT_04",
    patternTemplate: "मेरा/मेरी [NOUN] [X] है",
    englishMeaning: "My [NOUN] is [X]",
    linguisticLabel: "POSSESSIVE_DECLARATION",
    difficultyTier: 1,
    frequencyRank: 4,
    scenarioIds: [
      "HI_002", // Flight: मेरी सीट [X] है (seat number)
      "HI_014", // Terminal: मेरी फ्लाइट [X] थी (flight number)
      "HI_025", // Hostel: मेरी बुकिंग है (booking)
      "HI_026", // Hostel: मेरा नाम [X] है (name)
    ],
    missionIds: [1, 2, 4],
    drillNote:
        "मेरा (masculine) / मेरी (feminine) agreement with the noun is the key grammar "
        "point. Drilled with सीट (f), फ्लाइट (f), नाम (m), बुकिंग (f).",
  ),

  // ── PATTERN 05 ──────────────────────────────────────────
  // मैं [X] से हूँ — "I am from [X]"
  // Identity origin pattern. Used at customs and in social contexts.
  HindiGrammarPattern(
    patternId: "HI_PAT_05",
    patternTemplate: "मैं [X] से हूँ",
    englishMeaning: "I am from [X]",
    linguisticLabel: "ORIGIN_DECLARATION",
    difficultyTier: 1,
    frequencyRank: 5,
    scenarioIds: [
      "HI_074", // Lounge: मैं [X] से हूँ (country)
    ],
    missionIds: [10],
    drillNote:
        "से marks origin/source. Foundation of identity statements. Intentionally "
        "appears late — by Mission 10 the user has seen से in other patterns (HI_PAT_08).",
  ),

  // ── PATTERN 06 ──────────────────────────────────────────
  // मैं [X] हूँ — "I am [X]"
  // Core identity / state declaration.
  HindiGrammarPattern(
    patternId: "HI_PAT_06",
    patternTemplate: "मैं [X] हूँ",
    englishMeaning: "I am [X]",
    linguisticLabel: "IDENTITY_DECLARATION",
    difficultyTier: 1,
    frequencyRank: 6,
    scenarioIds: [
      "HI_010", // Terminal: मैं पर्यटन के लिए आया हूँ (purpose)
      "HI_012", // Terminal: मैं [X] में रह रहा हूँ (staying)
      "HI_076", // Lounge: मैं [X] हूँ (job/identity)
      "HI_077", // Lounge: मैं [X] दिन रहा (stayed X days)
      "HI_078", // Lounge: अब मैं [X] जा रहा हूँ (going to X)
    ],
    missionIds: [2, 10],
    drillNote:
        "मैं + verb/noun + हूँ is the bedrock of Hindi self-expression. Five different "
        "contexts drill the same subject-verb frame with different completions.",
  ),

  // ── PATTERN 07 ──────────────────────────────────────────
  // क्या [NOUN] है? / क्या [X] चलता है? — "Is there [NOUN]? / Does [X] work?"
  // Yes/no question frame. Used for availability and confirmation.
  HindiGrammarPattern(
    patternId: "HI_PAT_07",
    patternTemplate: "क्या [NOUN] है? / क्या [X] चलता है?",
    englishMeaning: "Is there [NOUN]? / Does [X] work/accept?",
    linguisticLabel: "YES_NO_QUESTION",
    difficultyTier: 2,
    frequencyRank: 7,
    scenarioIds: [
      "HI_018", // Taxi: क्या यह सही रास्ता है? (right road?)
      "HI_033", // Café: क्या मेज़ खाली है? (table free?)
      "HI_040", // Café: क्या कार्ड चलता है? (card accepted?)
      "HI_055", // Pharmacy: सनस्क्रीन मिलती है क्या? (have sunscreen?)
      "HI_062", // Station: क्या यह पुणे की गाड़ी है? (right train?)
      "HI_071", // SIM Shop: [X] चार्जर है क्या? (have charger?)
    ],
    missionIds: [3, 5, 7, 8, 9],
    drillNote:
        "क्या at sentence start or end flips any statement into a yes/no question. "
        "Six missions, six different nouns — the pattern becomes automatic.",
  ),

  // ── PATTERN 08 ──────────────────────────────────────────
  // [X] के लिए — "For [X]" (purpose/destination marker)
  // The postposition के लिए is everywhere in Hindi travel.
  HindiGrammarPattern(
    patternId: "HI_PAT_08",
    patternTemplate: "[X] के लिए [NOUN]",
    englishMeaning: "For [X] / [NOUN] for [X]",
    linguisticLabel: "PURPOSE_POSTPOSITION",
    difficultyTier: 2,
    frequencyRank: 8,
    scenarioIds: [
      "HI_010", // Terminal: पर्यटन के लिए आया हूँ (for tourism)
      "HI_016", // Terminal: शहर के लिए टैक्सी (taxi for city)
      "HI_057", // Station: पुणे के लिए टिकट (ticket for Pune)
    ],
    missionIds: [2, 8],
    drillNote:
        "के लिए (postposition) follows the noun it modifies. Three distinct uses: "
        "purpose (tourism), destination (city/Pune), and need (ticket). Core connective tissue.",
  ),

  // ── PATTERN 09 ──────────────────────────────────────────
  // कितना/कितनी [NOUN] है? — "How much/many [NOUN]?"
  // The price and quantity interrogation pattern.
  HindiGrammarPattern(
    patternId: "HI_PAT_09",
    patternTemplate: "कितना/कितनी [NOUN] है?",
    englishMeaning: "How much / How many [NOUN]?",
    linguisticLabel: "QUANTITY_QUESTION",
    difficultyTier: 2,
    frequencyRank: 9,
    scenarioIds: [
      "HI_022", // Taxi: मीटर में कितना है? (meter amount)
      "HI_053", // Pharmacy: कितनी गोलियाँ लेनी हैं? (how many tablets)
      "HI_064", // Station: कितना वक्त लगेगा? (how long)
      "HI_067", // SIM Shop: महीने का कितना है? (monthly cost)
    ],
    missionIds: [3, 7, 8, 9],
    drillNote:
        "कितना (m) / कितनी (f) agrees with the noun being measured. Four missions "
        "drill it with: amount (meter), tablets (f), time, cost. Gender agreement is the key learning.",
  ),

  // ── PATTERN 10 ──────────────────────────────────────────
  // यह रहा/रही मेरा/मेरी [NOUN] — "Here is my [NOUN]"
  // The document handover phrase. Critical at every checkpoint.
  HindiGrammarPattern(
    patternId: "HI_PAT_10",
    patternTemplate: "यह रहा मेरा [NOUN]",
    englishMeaning: "Here is my [NOUN]",
    linguisticLabel: "PRESENTATIONAL_HANDOVER",
    difficultyTier: 1,
    frequencyRank: 10,
    scenarioIds: [
      "HI_009", // Terminal: यह मेरा पासपोर्ट है (customs)
      "HI_028", // Hostel: यह रहा मेरा पासपोर्ट (check-in)
      "HI_068", // SIM Shop: यह रहा मेरा पासपोर्ट (KYC)
    ],
    missionIds: [2, 4, 9],
    drillNote:
        "Same object (passport), three completely different situations: customs, "
        "hostel check-in, SIM registration. Contextual overlearning at its best.",
  ),

  // ── PATTERN 11 ──────────────────────────────────────────
  // [NOUN] में दीजिए / [X] रोकना — Spatial/directional commands
  // Movement and location commands for transit situations.
  HindiGrammarPattern(
    patternId: "HI_PAT_11",
    patternTemplate: "[LOCATION] [DIRECTION/COMMAND]",
    englishMeaning: "Stop at [X] / Turn [direction] at [place]",
    linguisticLabel: "SPATIAL_COMMAND",
    difficultyTier: 2,
    frequencyRank: 11,
    scenarioIds: [
      "HI_017", // Taxi: [X] चलिए (go to X)
      "HI_019", // Taxi: पहले [X] रोकना (stop at X first)
      "HI_020", // Taxi: बाईं तरफ मुड़िए (turn left)
      "HI_021", // Taxi: यहाँ रोकना (stop here)
    ],
    missionIds: [3],
    drillNote:
        "Four directional commands consolidated in one mission. चलिए, रोकना, मुड़िए "
        "are the three movement verbs a taxi passenger needs. All drilled in Mission 3.",
  ),

  // ── PATTERN 12 ──────────────────────────────────────────
  // मुझे [X] से एलर्जी है / मुझे [X] हो रही है — "I have [condition]"
  // Medical/health state declarations. Survival-critical.
  HindiGrammarPattern(
    patternId: "HI_PAT_12",
    patternTemplate: "मुझे [CONDITION] है / हो रही है",
    englishMeaning: "I have [condition] / I am experiencing [condition]",
    linguisticLabel: "DATIVE_MEDICAL_STATE",
    difficultyTier: 2,
    frequencyRank: 12,
    scenarioIds: [
      "HI_004", // Flight: मुझे तकलीफ हो रही है (feeling unwell)
      "HI_038", // Café: मुझे मेवों से एलर्जी है (allergy)
      "HI_049", // Pharmacy: सिर में दर्द है (headache)
    ],
    missionIds: [1, 5, 7],
    drillNote:
        "The dative मुझे with health states is critical. Three missions: emergency "
        "on flight, allergy at café, symptoms at pharmacy. Different urgency levels same structure.",
  ),

  // ── PATTERN 13 ──────────────────────────────────────────
  // [X] का/की/के [NOUN] क्या है? — "What is the [NOUN] of [X]?"
  // Ownership/attribute interrogation. Used for WiFi, prices, timetables.
  HindiGrammarPattern(
    patternId: "HI_PAT_13",
    patternTemplate: "[X] का/की/के [NOUN] क्या है?",
    englishMeaning: "What is the [NOUN] of [X]?",
    linguisticLabel: "GENITIVE_QUESTION",
    difficultyTier: 2,
    frequencyRank: 13,
    scenarioIds: [
      "HI_030", // Hostel: वाईफाई का पासवर्ड क्या है? (WiFi password)
      "HI_041", // Market: इसका क्या दाम है? (price of this)
      "HI_066", // SIM: सबसे अच्छा डेटा किसका है? (whose data is best)
    ],
    missionIds: [4, 6, 9],
    drillNote:
        "का/की/के is the genitive postposition — it shows possession/belonging. "
        "Three different genitive questions: password, price, data quality.",
  ),

  // ── PATTERN 14 ──────────────────────────────────────────
  // [X] किस वक्त / कितना वक्त — Time interrogatives
  // Time-based questions for schedules and durations.
  HindiGrammarPattern(
    patternId: "HI_PAT_14",
    patternTemplate: "[X] किस वक्त / कितना वक्त [VERB]?",
    englishMeaning: "What time is [X]? / How long does [X] take?",
    linguisticLabel: "TIME_INTERROGATIVE",
    difficultyTier: 2,
    frequencyRank: 14,
    scenarioIds: [
      "HI_029", // Hostel: नाश्ता किस वक्त मिलता है? (breakfast time)
      "HI_059", // Station: आज जाना है (travel today — time anchor)
      "HI_064", // Station: कितना वक्त लगेगा? (journey duration)
    ],
    missionIds: [4, 8],
    drillNote:
        "किस वक्त (at what time) and कितना वक्त (how much time) are the two "
        "time interrogatives. Drilled in hostel (schedule) and station (journey) contexts.",
  ),

  // ── PATTERN 15 ──────────────────────────────────────────
  // [X] नहीं [VERB] रहा — "X is not working / happening"
  // Negation of ongoing state. Used for complaints and troubleshooting.
  HindiGrammarPattern(
    patternId: "HI_PAT_15",
    patternTemplate: "[X] नहीं [VERB] रहा",
    englishMeaning: "[X] is not working / [X] is not happening",
    linguisticLabel: "PROGRESSIVE_NEGATION",
    difficultyTier: 3,
    frequencyRank: 15,
    scenarioIds: [
      "HI_051", // Pharmacy: बुखार नहीं, सिर्फ सिर दर्द (negating fever)
      "HI_070", // SIM Shop: इंटरनेट नहीं चल रहा (internet not working)
    ],
    missionIds: [7, 9],
    drillNote:
        "नहीं + progressive verb = the complaint/troubleshooting construction. "
        "Two uses: denying a symptom (pharmacy) and reporting a malfunction (SIM shop).",
  ),

  // ── PATTERN 16 ──────────────────────────────────────────
  // Fixed social phrases — Greetings, thanks, farewells
  // Not a grammatical pattern but a fixed phrase cluster. Still core 20%.
  HindiGrammarPattern(
    patternId: "HI_PAT_16",
    patternTemplate: "नमस्ते / शुक्रिया / धन्यवाद / अलविदा",
    englishMeaning: "Hello / Thank you / Goodbye cluster",
    linguisticLabel: "SOCIAL_FIXED_PHRASES",
    difficultyTier: 1,
    frequencyRank: 16,
    scenarioIds: [
      "HI_001", // Flight: नमस्ते (greeting)
      "HI_008", // Flight: धन्यवाद, नमस्ते (farewell)
      "HI_024", // Taxi: शुक्रिया भाई (thanks)
      "HI_032", // Hostel: शुक्रिया (thanks)
      "HI_056", // Pharmacy: शुक्रिया, ख़याल रखना (thanks + care)
      "HI_072", // SIM: सब ठीक है, शुक्रिया (thanks)
      "HI_080", // Lounge: मिलकर बहुत अच्छा लगा, अलविदा (farewell)
    ],
    missionIds: [1, 3, 4, 7, 9, 10],
    drillNote:
        "Social lubricant phrases appear in every mission. Not just politeness — "
        "नमस्ते opens doors, शुक्रिया closes transactions. Both are survival tools.",
  ),
];

// ============================================================
// PATTERN LOOKUP UTILITIES
// ============================================================

class PatternRegistry {
  // Get the pattern for a given scenario
  static HindiGrammarPattern? getPatternForScenario(String scenarioId) {
    try {
      return hindiPatterns.firstWhere(
        (p) => p.scenarioIds.contains(scenarioId),
      );
    } catch (_) {
      return null;
    }
  }

  // Get all scenarios that share a pattern (for cross-mission re-drill)
  static List<String> getSiblingScenarios(String scenarioId) {
    final pattern = getPatternForScenario(scenarioId);
    if (pattern == null) return [];
    return pattern.scenarioIds.where((id) => id != scenarioId).toList();
  }

  // Get all patterns at a given difficulty tier
  static List<HindiGrammarPattern> getPatternsByTier(int tier) {
    return hindiPatterns.where((p) => p.difficultyTier == tier).toList();
  }

  // Get the top N patterns by frequency rank (the real 20%)
  static List<HindiGrammarPattern> getTopPatterns(int count) {
    final sorted = [...hindiPatterns]
      ..sort((a, b) => a.frequencyRank.compareTo(b.frequencyRank));
    return sorted.take(count).toList();
  }

  // Summary stats
  static int get totalPatterns => hindiPatterns.length;
  static int get tier1Count =>
      hindiPatterns.where((p) => p.difficultyTier == 1).length;
  static int get tier2Count =>
      hindiPatterns.where((p) => p.difficultyTier == 2).length;
  static int get tier3Count =>
      hindiPatterns.where((p) => p.difficultyTier == 3).length;
}
