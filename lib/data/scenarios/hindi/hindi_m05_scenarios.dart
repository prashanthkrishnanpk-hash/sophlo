// lib/data/scenarios/hindi/hindi_m05_scenarios.dart
//
// MISSION 5: THE CAFÉ — 10 SCENARIOS
// =====================================
// Type: ORDERING + DIETARY + COMPLAINTS + PAYMENT
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Primary words drilled: खाली, चाहिए, दीजिए, एलर्जी, कितना,
//   थोड़ा, नहीं, के लिए, मैं शाकाहारी, शुक्रिया

import '../../../models/models.dart';

const List<Scenario> hindiM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Yes/no: table free ───────────────
  Scenario(
    scenarioId: "M05_S01",
    missionId: 5,
    environmentContext:
        "Irani café. Morning rush. Every table packed. "
        "Steam, chai smell, the clatter of plates. A waiter spots you.",
    introFlag: false,
    environmentalTextPrompt: "☕ IRANI CAFÉ — NEED A TABLE",
    sophieClueEnglishIntent: "Ask if there is a free table",
    sophiePhoneticHint: "kya koi mez kha-li hai",
    targetLanguageAnchor: "क्या कोई मेज़ खाली है?",
    slotOptions: ["मेज़ खाली है", "जगह है", "बैठने की जगह"],
    npcAudioResponseTranscript:
        "हाँ जी, कोने में एक है — आइए।",
    graffitiStyleTag: "Saffron 'मेज़' chai glass tag — Irani café style",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S2: PAT_02 Rep 3 — Want/need: order food ────────────
  Scenario(
    scenarioId: "M05_S02",
    missionId: 5,
    environmentContext:
        "Seated. Menu arrives — laminated, stained, wonderful. "
        "The local special is scrawled on a chalkboard.",
    introFlag: false,
    environmentalTextPrompt: "📋 MENU — ORDER THE LOCAL SPECIAL",
    sophieClueEnglishIntent: "Order [X] please",
    sophiePhoneticHint: "muj-he [X] cha-hi-ye",
    targetLanguageAnchor: "मुझे [X] चाहिए",
    slotOptions: ["वड़ा पाव", "पाव भाजी", "मिसल पाव", "भेल पुरी", "कीमा पाव"],
    npcAudioResponseTranscript:
        "बढ़िया चुनाव! पीने को क्या लाऊँ?",
    graffitiStyleTag: "Orange '🍛 ऑर्डर' local food order tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — Request: drink ───────────────────
  Scenario(
    scenarioId: "M05_S03",
    missionId: 5,
    environmentContext:
        "He's waiting. Tray in hand. The heat outside "
        "already making you sweat at nine in the morning.",
    introFlag: false,
    environmentalTextPrompt: "🥤 DRINKS ORDER — [X]",
    sophieClueEnglishIntent: "Ask for [X] to drink",
    sophiePhoneticHint: "[X] dee-ji-ye",
    targetLanguageAnchor: "[X] दीजिए",
    slotOptions: ["चाय", "लस्सी", "नींबू पानी", "छाछ", "पानी", "कॉफ़ी"],
    npcAudioResponseTranscript:
        "जी ज़रूर, अभी लाता हूँ।",
    graffitiStyleTag: "Blue '☕ पीना' drink order tag — steam rising",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Medical: allergy warning ─────────
  Scenario(
    scenarioId: "M05_S04",
    missionId: 5,
    environmentContext:
        "He starts to walk away. Wait — the menu said "
        "the bhaji has peanuts. You have a nut allergy.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ NUT ALLERGY — MUST TELL",
    sophieClueEnglishIntent: "Tell him you are allergic to nuts",
    sophiePhoneticHint: "muj-he me-von se el-er-jee hai",
    targetLanguageAnchor: "मुझे मेवों से एलर्जी है",
    slotOptions: ["मेवों से", "मूंगफली से", "दूध से", "गेहूँ से"],
    npcAudioResponseTranscript:
        "ठीक है जी, बिना मेवों के बनवा देता हूँ — थोड़ा वक्त लगेगा।",
    graffitiStyleTag: "Red '⚠️ एलर्जी' allergy warning tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Price question: dish cost ────────
  Scenario(
    scenarioId: "M05_S05",
    missionId: 5,
    environmentContext:
        "You eye a special dessert on the next table. "
        "Not on the printed menu. No price listed.",
    introFlag: false,
    environmentalTextPrompt: "🍮 DESSERT — NO PRICE LISTED",
    sophieClueEnglishIntent: "Ask how much the dessert costs",
    sophiePhoneticHint: "yeh kit-ne ka hai",
    targetLanguageAnchor: "यह कितने का है?",
    slotOptions: ["यह मिठाई", "वह dessert", "खीर", "फालूदा"],
    npcAudioResponseTranscript:
        "पचास रुपये — एकदम ताज़ा बनी है।",
    graffitiStyleTag: "Green '₹ कितना' price question tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_13 Rep 2 — Quantity: less spice ─────────────
  Scenario(
    scenarioId: "M05_S06",
    missionId: 5,
    environmentContext:
        "Food arrives. Steam rising. One bite and your "
        "eyes are watering. Beautiful but lethal.",
    introFlag: false,
    environmentalTextPrompt: "🌶️ TOO SPICY — NEED LESS",
    sophieClueEnglishIntent: "Ask for a little less spice",
    sophiePhoneticHint: "thoda kam ma-sa-la kar-na",
    targetLanguageAnchor: "थोड़ा कम मसाला करना",
    slotOptions: ["कम मसाला", "कम तीखा", "कम नमक", "और चावल"],
    npcAudioResponseTranscript:
        "जी, बदल देता हूँ — बस दो मिनट।",
    graffitiStyleTag: "Orange '🌶️ कम' spice reducer tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S7: PAT_11 Rep 2 — Negation: wrong order ────────────
  Scenario(
    scenarioId: "M05_S07",
    missionId: 5,
    environmentContext:
        "New plate arrives. But this is not what you "
        "ordered. Someone else's order. Cold.",
    introFlag: false,
    environmentalTextPrompt: "❌ WRONG ORDER — COLD FOOD",
    sophieClueEnglishIntent: "Say this is not what you ordered",
    sophiePhoneticHint: "yeh me-ra or-der na-hin hai",
    targetLanguageAnchor: "यह मेरा ऑर्डर नहीं है",
    slotOptions: ["मेरा ऑर्डर नहीं", "यह ठंडा है", "यह गलत है"],
    npcAudioResponseTranscript:
        "ओह! माफ़ कीजिए जी, अभी बदलता हूँ।",
    graffitiStyleTag: "Red '❌ गलत' wrong order tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Purpose: takeaway box ────────────
  Scenario(
    scenarioId: "M05_S08",
    missionId: 5,
    environmentContext:
        "Too much food. Wonderful problem. You can't "
        "finish the vada pav. You want to take it.",
    introFlag: false,
    environmentalTextPrompt: "📦 TAKEAWAY — PACK IT UP",
    sophieClueEnglishIntent: "Ask for a box to take it away",
    sophiePhoneticHint: "isa-ko pack kar dena — bahar le ja-na hai",
    targetLanguageAnchor: "इसको पैक कर देना — बाहर ले जाना है",
    slotOptions: ["बाहर ले जाना", "पैक करना", "डिब्बे में देना"],
    npcAudioResponseTranscript:
        "जी बिल्कुल, थैले में दे देता हूँ।",
    graffitiStyleTag: "Purple '📦 पैक' takeaway tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: I am vegetarian ───────────
  Scenario(
    scenarioId: "M05_S09",
    missionId: 5,
    environmentContext:
        "Dessert menu comes. Half the sweets have egg. "
        "He needs to know before recommending.",
    introFlag: false,
    environmentalTextPrompt: "🥗 DESSERT — DIETARY INFO NEEDED",
    sophieClueEnglishIntent: "Tell him you are vegetarian",
    sophiePhoneticHint: "main shaa-ka-haa-ri hoon",
    targetLanguageAnchor: "मैं शाकाहारी हूँ",
    slotOptions: ["शाकाहारी", "वीगन", "जैन"],
    npcAudioResponseTranscript:
        "ठीक है जी — तो खीर या रबड़ी — दोनों बढ़िया हैं।",
    graffitiStyleTag: "Green '🌿 शाकाहारी' plant tag",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S10: PAT_16 Rep 5 — Social: thank + compliment ──────
  Scenario(
    scenarioId: "M05_S10",
    missionId: 5,
    environmentContext:
        "Bill paid. Belly full. This was exactly what "
        "you needed. The waiter clears your table.",
    introFlag: false,
    environmentalTextPrompt: "😊 MEAL DONE — EXPRESS THANKS",
    sophieClueEnglishIntent: "Thank him and say the food was delicious",
    sophiePhoneticHint: "shuk-ri-ya, khaa-na bahut swaad-isht tha",
    targetLanguageAnchor: "शुक्रिया, खाना बहुत स्वादिष्ट था",
    slotOptions: ["बहुत स्वादिष्ट था", "बहुत बढ़िया था", "कमाल का था"],
    npcAudioResponseTranscript:
        "आइए फिर जी! रोज़ आइए!",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — café receipt seal, chai stain",
    npcName: "Waiter Suresh",
    npcAvatarEmoji: "🧑‍🍳",
  ),
];
