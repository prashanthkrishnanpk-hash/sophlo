// lib/data/scenarios/hindi/hindi_m08_scenarios.dart
//
// MISSION 8: TRAIN STATION — 10 SCENARIOS
// ==========================================
// Type: TRANSPORT + NAVIGATION + TIMING
// Pattern coverage:
//   PAT_09(R4), PAT_02(R6), PAT_05(R4), PAT_03(R3), PAT_10(R4),
//   PAT_06(R7-FINAL), PAT_04(R5), PAT_14(R5), PAT_11(R5), PAT_08(R5)
// Primary words: के लिए, टिकट, स्लीपर, सीट, प्लेटफ़ॉर्म, कितने बजे,
//   क्या यह, कितना, कहाँ, नहीं चल रहा, यह रहा

import '../../../models/models.dart';

const List<Scenario> hindiM08Scenarios = [

  // ── S1: PAT_09 Rep 4 — Purpose destination: ticket ──────
  Scenario(
    scenarioId: "M08_S01",
    missionId: 8,
    environmentContext:
        "CST. Gothic arches, pigeons, the roar of "
        "trains. Ticket window eight has a short queue.",
    introFlag: false,
    environmentalTextPrompt: "🚆 CST STATION — TICKET WINDOW",
    sophieClueEnglishIntent: "Ask for one ticket to Pune",
    sophiePhoneticHint: "[X] ke li-ye ek ti-kat chaa-hi-ye",
    targetLanguageAnchor: "[X] के लिए एक टिकट चाहिए",
    slotOptions: ["पुणे", "नासिक", "गोवा", "सूरत", "दिल्ली"],
    npcAudioResponseTranscript:
        "कौन सी क्लास — जनरल, स्लीपर या AC?",
    graffitiStyleTag: "Saffron '🚆 टिकट' railway arch tag — CST style",
    npcName: "Ticket Clerk",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S2: PAT_02 Rep 6 — Want/need: class ─────────────────
  Scenario(
    scenarioId: "M08_S02",
    missionId: 8,
    environmentContext:
        "Long journey. Overnight. You want to "
        "actually sleep. Sleeper class.",
    introFlag: false,
    environmentalTextPrompt: "🛏️ CHOOSE CLASS — SLEEPER",
    sophieClueEnglishIntent: "Say you want sleeper class",
    sophiePhoneticHint: "slee-par class chaa-hi-ye",
    targetLanguageAnchor: "स्लीपर क्लास चाहिए",
    slotOptions: ["स्लीपर क्लास", "जनरल", "थर्ड AC", "सेकंड AC"],
    npcAudioResponseTranscript:
        "आज की गाड़ी शाम छह बजे है। कितने टिकट?",
    graffitiStyleTag: "Blue '🛏️ स्लीपर' berth seat tag",
    npcName: "Ticket Clerk",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S3: PAT_05 Rep 4 — Identity: seat number ────────────
  Scenario(
    scenarioId: "M08_S03",
    missionId: 8,
    environmentContext:
        "Ticket in hand. Seat 22, Coach B4. Train "
        "arrives. Someone is sitting in your seat.",
    introFlag: false,
    environmentalTextPrompt: "🪑 SOMEONE IN YOUR SEAT",
    sophieClueEnglishIntent: "Tell them your seat is number 22",
    sophiePhoneticHint: "me-ri seat baa-is hai",
    targetLanguageAnchor: "मेरी सीट बाईस है",
    slotOptions: ["बाईस", "पैंतीस", "सत्रह", "चालीस", "ग्यारह"],
    npcAudioResponseTranscript:
        "ओह सॉरी — यह मेरी सीट थी क्या? गलती से बैठ गया।",
    graffitiStyleTag: "Orange '🪑 मेरी सीट' seat claim tag",
    npcName: "Passenger",
    npcAvatarEmoji: "🧑",
  ),

  // ── S4: PAT_03 Rep 3 — Location: find platform ──────────
  Scenario(
    scenarioId: "M08_S04",
    missionId: 8,
    environmentContext:
        "Back on the platform. The display board "
        "shows five platforms. Your train is on five.",
    introFlag: false,
    environmentalTextPrompt: "🚉 FIND PLATFORM 5",
    sophieClueEnglishIntent: "Ask where platform five is",
    sophiePhoneticHint: "plat-form paanch kah-an hai",
    targetLanguageAnchor: "प्लेटफ़ॉर्म पाँच कहाँ है?",
    slotOptions: ["प्लेटफ़ॉर्म पाँच", "तीन", "सात", "एक"],
    npcAudioResponseTranscript:
        "सीधे जाइए, दाईं तरफ — तीसरा प्लेटफ़ॉर्म है।",
    graffitiStyleTag: "Green 'प्लेटफ़ॉर्म→' direction platform tag",
    npcName: "Station Guard",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_10 Rep 4 — Time: departure time ─────────────
  Scenario(
    scenarioId: "M08_S05",
    missionId: 8,
    environmentContext:
        "Platform five. Train not here yet. A board "
        "shows multiple trains. Which one, when?",
    introFlag: false,
    environmentalTextPrompt: "⏰ WHAT TIME DOES IT LEAVE?",
    sophieClueEnglishIntent: "Ask what time the Pune train leaves",
    sophiePhoneticHint: "poo-ne ki gaa-di kit-ne ba-je ja-ye-gi",
    targetLanguageAnchor: "पुणे की गाड़ी कितने बजे जाएगी?",
    slotOptions: ["पुणे की गाड़ी", "मुंबई एक्सप्रेस", "शताब्दी"],
    npcAudioResponseTranscript:
        "छह बजकर पंद्रह मिनट पर — अभी दस मिनट बाकी हैं।",
    graffitiStyleTag: "Purple '⏰ रवाना' departure time tag",
    npcName: "Station Staff",
    npcAvatarEmoji: "🚉",
  ),

  // ── S6: PAT_06 Rep 7 — FINAL REP: right train? ──────────
  Scenario(
    scenarioId: "M08_S06",
    missionId: 8,
    environmentContext:
        "Train pulls in. Long, green, ancient. You "
        "ask a fellow passenger before stepping on.",
    introFlag: false,
    environmentalTextPrompt: "🚂 IS THIS THE PUNE TRAIN?",
    sophieClueEnglishIntent: "Ask if this is the train to Pune",
    sophiePhoneticHint: "kya yeh poo-ne ki gaa-di hai",
    targetLanguageAnchor: "क्या यह पुणे की गाड़ी है?",
    slotOptions: ["पुणे की गाड़ी", "मुंबई एक्सप्रेस", "सही गाड़ी"],
    npcAudioResponseTranscript:
        "हाँ जी, यही है। Coach B4 उधर है — जल्दी चढ़िए।",
    graffitiStyleTag: "Cyan '✅ सही गाड़ी' confirm train tag",
    npcName: "Passenger",
    npcAvatarEmoji: "🧑",
  ),

  // ── S7: PAT_04 Rep 5 — Price: upgrade cost ──────────────
  Scenario(
    scenarioId: "M08_S07",
    missionId: 8,
    environmentContext:
        "On board. The AC carriage looks appealing. "
        "TTE walks past. Worth asking.",
    introFlag: false,
    environmentalTextPrompt: "💺 AC UPGRADE — HOW MUCH?",
    sophieClueEnglishIntent: "Ask how much an AC upgrade costs",
    sophiePhoneticHint: "AC up-grade kit-ne ka ho-ga",
    targetLanguageAnchor: "AC अपग्रेड कितने का होगा?",
    slotOptions: ["AC अपग्रेड", "फर्स्ट क्लास", "बेहतर सीट"],
    npcAudioResponseTranscript:
        "तीन सौ और लगेंगे — ऑनलाइन नहीं हो सकता, नकद चाहिए।",
    graffitiStyleTag: "Yellow '₹ अपग्रेड' upgrade price tag",
    npcName: "TTE",
    npcAvatarEmoji: "👨‍✈️",
  ),

  // ── S8: PAT_14 Rep 5 — Spatial: which direction? ────────
  Scenario(
    scenarioId: "M08_S08",
    missionId: 8,
    environmentContext:
        "Long train. Your coach B4 could be at "
        "either end. Ask before walking the wrong way.",
    introFlag: false,
    environmentalTextPrompt: "🚃 COACH B4 — WHICH DIRECTION?",
    sophieClueEnglishIntent: "Ask which direction Coach B4 is",
    sophiePhoneticHint: "coach B4 kis taraf hai",
    targetLanguageAnchor: "Coach B4 किस तरफ है?",
    slotOptions: ["उस तरफ", "इस तरफ", "आगे", "पीछे"],
    npcAudioResponseTranscript:
        "पीछे की तरफ — दस डिब्बे पार करने होंगे।",
    graffitiStyleTag: "Green '→ B4' coach direction tag",
    npcName: "Station Guard",
    npcAvatarEmoji: "💂",
  ),

  // ── S9: PAT_11 Rep 5 — Negation: ticket not scanning ────
  Scenario(
    scenarioId: "M08_S09",
    missionId: 8,
    environmentContext:
        "Gate scanner. Your ticket QR code. You try "
        "three times. The machine keeps beeping red.",
    introFlag: false,
    environmentalTextPrompt: "❌ TICKET NOT SCANNING",
    sophieClueEnglishIntent: "Tell the guard the ticket is not scanning",
    sophiePhoneticHint: "me-ra ti-kat scan na-hin ho ra-ha",
    targetLanguageAnchor: "मेरा टिकट स्कैन नहीं हो रहा",
    slotOptions: ["स्कैन नहीं हो रहा", "काम नहीं कर रहा", "बीप कर रहा है"],
    npcAudioResponseTranscript:
        "दीजिए — मैं मैन्युअली चेक करता हूँ।",
    graffitiStyleTag: "Red '❌ स्कैन' error tag",
    npcName: "Gate Guard",
    npcAvatarEmoji: "💂",
  ),

  // ── S10: PAT_08 Rep 5 — Handover: ticket on train ───────
  Scenario(
    scenarioId: "M08_S10",
    missionId: 8,
    environmentContext:
        "Seated. Train moving. The TTE does rounds. "
        "Clip-board, torch, checking every berth.",
    introFlag: false,
    environmentalTextPrompt: "🎫 TTE CHECK — SHOW TICKET",
    sophieClueEnglishIntent: "Hand over your ticket to the TTE",
    sophiePhoneticHint: "yeh ra-ha me-ra ti-kat",
    targetLanguageAnchor: "यह रहा मेरा टिकट",
    slotOptions: ["टिकट", "बुकिंग कन्फर्मेशन", "ई-टिकट"],
    npcAudioResponseTranscript:
        "शुक्रिया। अच्छी यात्रा हो।",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — railway stamp seal, CST arch",
    npcName: "TTE",
    npcAvatarEmoji: "👨‍✈️",
  ),
];
