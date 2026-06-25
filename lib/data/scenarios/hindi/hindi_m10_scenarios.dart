// lib/data/scenarios/hindi/hindi_m10_scenarios.dart
//
// MISSION 10: HOSTEL LOUNGE — 8 SCENARIOS
// ==========================================
// Type: SOCIAL CLOSURE + FINAL RETRIEVAL
// Pattern coverage:
//   PAT_07(R5,R6), PAT_09(R5), PAT_17(R4), PAT_13(R5),
//   PAT_15(R6), PAT_18(R4), PAT_16(R7-FINAL-MASTER-CLOSE)
// Primary words: कहाँ से, मैं से हूँ, जा रहा हूँ, तुम,
//   और, माफ़ कीजिए, मिलकर अच्छा लगा, अलविदा
//
// EMOTIONAL BRIEF:
// This is the end of the journey. Every conversation here
// should feel earned. The user has survived 9 missions.
// The language flows now — not perfectly, but naturally.
// Mission 10 should feel like confirmation of that.

import '../../../models/models.dart';

const List<Scenario> hindiM10Scenarios = [

  // ── S1: PAT_07 Rep 5 — Self declaration: ask origin ─────
  Scenario(
    scenarioId: "M10_S01",
    missionId: 10,
    environmentContext:
        "Last night. The hostel common room. Someone "
        "is strumming a guitar badly. A Japanese girl "
        "sits across from you with a cup of chai.",
    introFlag: false,
    environmentalTextPrompt: "🛋️ HOSTEL LOUNGE — FINAL NIGHT",
    sophieClueEnglishIntent: "Ask her where she is from",
    sophiePhoneticHint: "aap kah-an se hain",
    targetLanguageAnchor: "आप कहाँ से हैं?",
    slotOptions: ["कहाँ से हैं?", "किस देश से हैं?", "किस शहर से हैं?"],
    npcAudioResponseTranscript:
        "मैं जापान से हूँ — Tokyo से। आप?",
    graffitiStyleTag: "Saffron '🌍 कहाँ से?' world opener tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S2: PAT_07 Rep 6 — Self declaration: give origin ────
  Scenario(
    scenarioId: "M10_S02",
    missionId: 10,
    environmentContext:
        "She asked. Your turn. The whole journey "
        "has been practice for this moment — "
        "a real conversation with a stranger.",
    introFlag: false,
    environmentalTextPrompt: "🌏 YOUR TURN — WHERE ARE YOU FROM?",
    sophieClueEnglishIntent: "Tell her where you are from",
    sophiePhoneticHint: "main [X] se hoon",
    targetLanguageAnchor: "मैं [X] से हूँ",
    slotOptions: ["भारत", "इंग्लैंड", "अमेरिका", "ऑस्ट्रेलिया", "केरल", "दिल्ली"],
    npcAudioResponseTranscript:
        "वाह! Mumbai कैसी लगी? मुझे बहुत पसंद आई।",
    graffitiStyleTag: "Blue '🏠 मैं से हूँ' origin tag — world map",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S3: PAT_09 Rep 5 — Purpose destination: next stop ───
  Scenario(
    scenarioId: "M10_S03",
    missionId: 10,
    environmentContext:
        "She mentions she's heading to Rajasthan next. "
        "Asks about your plans. You have a train "
        "booked for tomorrow morning.",
    introFlag: false,
    environmentalTextPrompt: "✈️ NEXT DESTINATION — WHERE NEXT?",
    sophieClueEnglishIntent: "Tell her where you are going next",
    sophiePhoneticHint: "ab main [X] ja ra-ha hoon",
    targetLanguageAnchor: "अब मैं [X] जा रहा हूँ",
    slotOptions: ["गोवा", "राजस्थान", "केरल", "दिल्ली", "वापस घर"],
    npcAudioResponseTranscript:
        "वाह! वहाँ ज़रूर जाओ — बहुत अच्छी जगह है।",
    graffitiStyleTag: "Cyan '→ [X]' next stop arrow tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S4: PAT_17 Rep 4 — Register: peer conversation ──────
  Scenario(
    scenarioId: "M10_S04",
    missionId: 10,
    environmentContext:
        "Conversation deepens. She switches to informal — "
        "you follow. The guitar stops. Just the two "
        "of you talking now.",
    introFlag: false,
    environmentalTextPrompt: "💬 INFORMAL CHAT — SWITCH REGISTER",
    sophieClueEnglishIntent:
        "Ask her informally how long she has been travelling",
    sophiePhoneticHint: "tum ki-tne din se tra-vel kar ra-hi ho",
    targetLanguageAnchor: "तुम कितने दिन से travel कर रही हो?",
    slotOptions: ["कितने दिन से", "कब से", "कितने महीने से"],
    npcAudioResponseTranscript:
        "तीन महीने से! पहले Nepal, फिर India। तुम?",
    graffitiStyleTag: "Purple 'तुम' peer register tag — casual ink",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S5: PAT_13 Rep 5 — Quantity: one more drink ─────────
  Scenario(
    scenarioId: "M10_S05",
    missionId: 10,
    environmentContext:
        "The chai is finished. The conversation is not. "
        "The hostel kitchen is open. Small pleasures.",
    introFlag: false,
    environmentalTextPrompt: "☕ CHAI FINISHED — ONE MORE?",
    sophieClueEnglishIntent: "Ask if she wants one more chai",
    sophiePhoneticHint: "ek aur chaa-i le-gi",
    targetLanguageAnchor: "एक और चाय लेगी?",
    slotOptions: ["एक और चाय", "कुछ और", "पानी"],
    npcAudioResponseTranscript:
        "हाँ ज़रूर! मैं भी लेती हूँ — साथ में बनाते हैं।",
    graffitiStyleTag: "Orange '+ एक और' one more tag — warm kitchen",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S6: PAT_15 Rep 6 — Repair: missed name ──────────────
  Scenario(
    scenarioId: "M10_S06",
    missionId: 10,
    environmentContext:
        "A third traveller joins. French. He introduces "
        "himself but his name is unfamiliar and he spoke quietly.",
    introFlag: false,
    environmentalTextPrompt: "👋 NEW ARRIVAL — MISSED NAME",
    sophieClueEnglishIntent: "Politely say you didn't catch his name",
    sophiePhoneticHint: "maaf keejiye, naam sam-jha na-hin",
    targetLanguageAnchor: "माफ़ कीजिए, नाम समझ नहीं आया",
    slotOptions: ["नाम समझ नहीं आया", "दोबारा बताइए", "धीरे बोलिए"],
    npcAudioResponseTranscript:
        "Haha — je m'appelle Pierre. Pierre! P-I-E-R-R-E.",
    graffitiStyleTag: "White '😅 नाम?' missed name repair tag",
    npcName: "Pierre (French traveller)",
    npcAvatarEmoji: "🧑‍🦱",
  ),

  // ── S7: PAT_18 Rep 4 — Cultural exchange: teach them ────
  Scenario(
    scenarioId: "M10_S07",
    missionId: 10,
    environmentContext:
        "Yuki asks about the chai ritual. She stayed "
        "with a local family too and didn't know "
        "how to decline the fourth cup without offending.",
    introFlag: false,
    environmentalTextPrompt: "☕ TEACHING THE CHAI RITUAL",
    sophieClueEnglishIntent:
        "Explain the chai ritual — say 'bas bas' means enough",
    sophiePhoneticHint:
        "bas bas bol-te hain — ma-ta-lab hai 'bas kar-o, bahut ho ga-ya'",
    targetLanguageAnchor:
        "'बस बस' बोलते हैं — मतलब है 'बस करो, बहुत हो गया'",
    slotOptions: ["बस बस का मतलब", "बस करो का मतलब", "पेट भर गया का मतलब"],
    npcAudioResponseTranscript:
        "Ohhh! 'Bas bas'! I said this to the family and they laughed! "
        "Now I understand — arigatou!",
    graffitiStyleTag: "Gold '☕ बस बस' cultural teaching tag — chalk board",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S8: PAT_16 Rep 7 — FINAL REP — MASTER CLOSE ─────────
  Scenario(
    scenarioId: "M10_S08",
    missionId: 10,
    environmentContext:
        "1 AM. The hostel quietens. Tomorrow you leave "
        "for Goa on the early train. Yuki flies home "
        "next week. Pierre is heading north. "
        "You all stand at once — the unspoken signal. "
        "This is the last moment of the journey.",
    introFlag: false,
    environmentalTextPrompt: "🌙 LAST MOMENT — FINAL GOODBYE",
    sophieClueEnglishIntent:
        "Say goodbye warmly — tell them it was lovely meeting them",
    sophiePhoneticHint:
        "mil-kar bahut ach-cha la-ga — al-vi-da, phir mi-len-ge",
    targetLanguageAnchor:
        "मिलकर बहुत अच्छा लगा — अलविदा, फिर मिलेंगे",
    slotOptions: ["अलविदा", "फिर मिलेंगे", "शुभ यात्रा"],
    npcAudioResponseTranscript:
        "Yuki: मुझे भी! Safe travels! "
        "Pierre: Au revoir — et bonne route! "
        "Arjun (calling from upstairs): सुरक्षित यात्रा भाई!",
    graffitiStyleTag:
        "GOLD 'सम्पूर्ण यात्रा पूर्ण' — MASTER CLOSE STAMP "
        "Full journey passport seal — all 10 missions — Mumbai ink bleed "
        "🌍 SOPHLO COMPLETE",
    npcName: "Everyone",
    npcAvatarEmoji: "🌍",
  ),
];
