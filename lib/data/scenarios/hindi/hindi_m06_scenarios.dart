// lib/data/scenarios/hindi/hindi_m06_scenarios.dart
//
// MISSION 6: STREET MARKET — 10 SCENARIOS
// ==========================================
// Type: NEGOTIATION + PRICING + QUANTITIES
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Primary words: कितना, चाहिए, नग, महँगा, कहीं और, यह रहा,
//   सुनिए, के लिए, है क्या, दीजिए, छूट, रुपये

import '../../../models/models.dart';

const List<Scenario> hindiM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question: first look ───────
  Scenario(
    scenarioId: "M06_S01",
    missionId: 6,
    environmentContext:
        "Crawford Market. A wall of sound and colour. "
        "Vendor holds up a leather bag, eyes locked on yours.",
    introFlag: false,
    environmentalTextPrompt: "🛒 CRAWFORD MARKET — VENDOR APPROACHES",
    sophieClueEnglishIntent: "Ask how much this costs",
    sophiePhoneticHint: "is-ka kya daam hai",
    targetLanguageAnchor: "इसका क्या दाम है?",
    slotOptions: ["क्या दाम है", "कितने का है", "कीमत क्या है"],
    npcAudioResponseTranscript:
        "पाँच सौ रुपये, साहब — एकदम असली चमड़ा।",
    graffitiStyleTag: "Saffron '💰 दाम?' price tag — bazaar bold",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S2: PAT_02 Rep 4 — Want/need: state desire ──────────
  Scenario(
    scenarioId: "M06_S02",
    missionId: 6,
    environmentContext:
        "Five hundred. Tourist pricing. You know it, "
        "he knows it. The game begins.",
    introFlag: false,
    environmentalTextPrompt: "😤 ₹500 — TOO MUCH",
    sophieClueEnglishIntent: "Say it's too expensive and you want a discount",
    sophiePhoneticHint: "bahut meh-n-ga hai, chhu-t chaa-hi-ye",
    targetLanguageAnchor: "बहुत महँगा है, छूट चाहिए",
    slotOptions: ["छूट चाहिए", "कम चाहिए", "सस्ता चाहिए"],
    npcAudioResponseTranscript:
        "अरे साहब! इतने में तो बनता भी नहीं। कितना देंगे?",
    graffitiStyleTag: "Red '😤 महँगा!' protest tag — market style",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S3: PAT_13 Rep 3 — Quantity: counter offer ──────────
  Scenario(
    scenarioId: "M06_S03",
    missionId: 6,
    environmentContext:
        "He asked your price. Time to make a move. "
        "Confident. Committed. Don't blink.",
    introFlag: false,
    environmentalTextPrompt: "🤝 COUNTER OFFER — YOUR PRICE",
    sophieClueEnglishIntent: "Offer two hundred and fifty rupees",
    sophiePhoneticHint: "dhaa-i sau ru-paye mein dee-ji-ye",
    targetLanguageAnchor: "ढाई सौ रुपये में दीजिए",
    slotOptions: ["ढाई सौ", "तीन सौ", "दो सौ", "दो सौ पचास"],
    npcAudioResponseTranscript:
        "अरे साहब, कम से कम चार सौ तो दीजिए — मेरे बच्चे भूखे हैं।",
    graffitiStyleTag: "Green '🤝 सौदा' deal handshake tag",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S4: PAT_11 Rep 3 — Negation: this is broken ─────────
  Scenario(
    scenarioId: "M06_S04",
    missionId: 6,
    environmentContext:
        "You inspect the bag. The zip. It's stiff, "
        "almost stuck. This will break in a week.",
    introFlag: false,
    environmentalTextPrompt: "🔍 INSPECT BAG — ZIP BROKEN",
    sophieClueEnglishIntent: "Say the zip is not working properly",
    sophiePhoneticHint: "zip sahi na-hin chal ra-hi",
    targetLanguageAnchor: "ज़िप सही नहीं चल रही",
    slotOptions: ["ज़िप सही नहीं चल रही", "यह टूटा है", "यह खराब है"],
    npcAudioResponseTranscript:
        "अरे नहीं साहब, बस थोड़ा तेल लगाना होगा — बिल्कुल ठीक है।",
    graffitiStyleTag: "Orange '⚠️ टूटा' defect tag",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: walk away ─────────────────
  Scenario(
    scenarioId: "M06_S05",
    missionId: 6,
    environmentContext:
        "Four hundred for a broken zip. You start "
        "to stand. This is the move. Watch him fold.",
    introFlag: false,
    environmentalTextPrompt: "🚶 WALKING AWAY — THE MOVE",
    sophieClueEnglishIntent: "Say you will go look somewhere else",
    sophiePhoneticHint: "main kah-in aur dekh-ta hoon",
    targetLanguageAnchor: "मैं कहीं और देखता हूँ",
    slotOptions: ["कहीं और देखता हूँ", "दूसरी दुकान जाता हूँ", "आगे जाता हूँ"],
    npcAudioResponseTranscript:
        "अरे रुकिए रुकिए! साढ़े तीन सौ में दे देता हूँ — आखिरी दाम।",
    graffitiStyleTag: "Yellow '🚶 जाता हूँ' walk-away tag",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: here is money ─────────────
  Scenario(
    scenarioId: "M06_S06",
    missionId: 6,
    environmentContext:
        "Three fifty. Deal. You pull out the cash. "
        "Exact amount. No room for confusion.",
    introFlag: false,
    environmentalTextPrompt: "💵 PAY ₹350 — HAND OVER",
    sophieClueEnglishIntent: "Hand over the money and say here it is",
    sophiePhoneticHint: "yeh ra-he tee-n sau pan-chaas ru-paye",
    targetLanguageAnchor: "यह रहे तीन सौ पचास रुपये",
    slotOptions: ["तीन सौ पचास", "चार सौ", "तीन सौ"],
    npcAudioResponseTranscript:
        "शुक्रिया साहब! बढ़िया खरीदारी की।",
    graffitiStyleTag: "Purple '₹ दिया' payment tag",
    npcName: "Vendor Pappu",
    npcAvatarEmoji: "🧑‍🤝‍🧑",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: getting attention ────────
  Scenario(
    scenarioId: "M06_S07",
    missionId: 6,
    environmentContext:
        "Next stall. Scarves. The vendor has his back "
        "turned, talking to someone. You need his attention.",
    introFlag: false,
    environmentalTextPrompt: "👋 VENDOR — GET ATTENTION",
    sophieClueEnglishIntent: "Get the vendor's attention politely",
    sophiePhoneticHint: "su-ni-ye ji",
    targetLanguageAnchor: "सुनिए जी",
    slotOptions: ["सुनिए जी", "भाई साहब", "बहन जी", "माफ़ कीजिए"],
    npcAudioResponseTranscript:
        "हाँ हाँ, आइए — क्या चाहिए?",
    graffitiStyleTag: "Cyan '👋 सुनिए' attention tag — market crowd",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S8: PAT_09 Rep 3 — Purpose: gift for friend ─────────
  Scenario(
    scenarioId: "M06_S08",
    missionId: 6,
    environmentContext:
        "Beautiful silk scarf. Perfect. Your friend back "
        "home loves this kind of thing.",
    introFlag: false,
    environmentalTextPrompt: "🎁 BUYING A GIFT — FOR FRIEND",
    sophieClueEnglishIntent: "Say you want this as a gift for a friend",
    sophiePhoneticHint: "dost ke li-ye toh-fa cha-hi-ye",
    targetLanguageAnchor: "दोस्त के लिए तोहफ़ा चाहिए",
    slotOptions: ["दोस्त के लिए", "परिवार के लिए", "माँ के लिए"],
    npcAudioResponseTranscript:
        "बहुत अच्छा! यह रंग बहुत पसंद आएगा। गिफ्ट पैक करूँ?",
    graffitiStyleTag: "Pink '🎁 तोहफ़ा' gift tag",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S9: PAT_06 Rep 5 — Yes/no: other colour ────────────
  Scenario(
    scenarioId: "M06_S09",
    missionId: 6,
    environmentContext:
        "The red is nice but your friend's favourite "
        "colour is blue. Worth asking.",
    introFlag: false,
    environmentalTextPrompt: "🎨 WANT BLUE — CHECK STOCK",
    sophieClueEnglishIntent: "Ask if there is a blue one",
    sophiePhoneticHint: "kya nee-le rang mein hai",
    targetLanguageAnchor: "क्या नीले रंग में है?",
    slotOptions: ["नीले रंग में", "हरे रंग में", "पीले रंग में", "काले रंग में"],
    npcAudioResponseTranscript:
        "हाँ है — एक मिनट, पीछे से निकालता हूँ।",
    graffitiStyleTag: "Blue '🎨 रंग' colour palette tag",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S10: PAT_01 Rep 6 — Request: receipt ────────────────
  Scenario(
    scenarioId: "M06_S10",
    missionId: 6,
    environmentContext:
        "Blue scarf. Paid. But you want proof of purchase "
        "in case customs asks. Some vendors have slips.",
    introFlag: false,
    environmentalTextPrompt: "🧾 NEED RECEIPT — JUST IN CASE",
    sophieClueEnglishIntent: "Ask for a receipt",
    sophiePhoneticHint: "ek pa-r-chi dee-ji-ye",
    targetLanguageAnchor: "एक पर्ची दीजिए",
    slotOptions: ["पर्ची", "रसीद", "बिल"],
    npcAudioResponseTranscript:
        "पर्ची तो नहीं है साहब — लेकिन नाम लिख देता हूँ।",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — market haggle seal, Mumbai ink",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),
];
