// lib/data/scenarios/hindi/hindi_m04_scenarios.dart
//
// MISSION 4: THE HOSTEL — 10 SCENARIOS
// =======================================
// Type: BOOKING + IDENTITY + NAVIGATION
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Primary words drilled: चाहिए, मेरी बुकिंग, मेरा नाम, पासपोर्ट,
//   कहाँ, वाईफाई, कितने बजे, मैं, और, माफ़ कीजिए, दीजिए

import '../../../models/models.dart';

const List<Scenario> hindiM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Want/need: booking ───────────────
  Scenario(
    scenarioId: "M04_S01",
    missionId: 4,
    environmentContext:
        "Peeling paint. Hand-drawn signs. Three backpacks "
        "against the wall. The reception desk is unmanned, then isn't.",
    introFlag: false,
    environmentalTextPrompt: "🏨 HOSTEL RECEPTION — CHECK IN",
    sophieClueEnglishIntent: "Say you have a booking",
    sophiePhoneticHint: "me-ri boo-king hai",
    targetLanguageAnchor: "मेरी बुकिंग है",
    slotOptions: ["बुकिंग है", "रिज़र्वेशन है", "कमरा बुक है"],
    npcAudioResponseTranscript:
        "जी, आपका नाम?",
    graffitiStyleTag: "Blue 'बुकिंग' front desk stamp — worn ink",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S2: PAT_05 Rep 3 — Identity: name ───────────────────
  Scenario(
    scenarioId: "M04_S02",
    missionId: 4,
    environmentContext:
        "She pulls out a battered ledger. Runs her finger "
        "down the page. Looking for your name.",
    introFlag: false,
    environmentalTextPrompt: "📋 NAME IN THE LEDGER",
    sophieClueEnglishIntent: "Tell her your name",
    sophiePhoneticHint: "me-ra naam [X] hai",
    targetLanguageAnchor: "मेरा नाम [X] है",
    slotOptions: ["राहुल शर्मा", "प्रिया सिंह", "आर्यन वर्मा", "अनन्या"],
    npcAudioResponseTranscript:
        "एक मिनट... हाँ, मिल गया। तीन रात, सही है?",
    graffitiStyleTag: "White 'नाम' chalk tag — ledger page style",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport ───────────────
  Scenario(
    scenarioId: "M04_S03",
    missionId: 3,
    environmentContext:
        "She nods at a small sign on the desk. ID required "
        "for all guests. Government rule. You already know this drill.",
    introFlag: false,
    environmentalTextPrompt: "🪪 ID REQUIRED — HOSTEL RULE",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "yeh ra-ha me-ra paas-port",
    targetLanguageAnchor: "यह रहा मेरा पासपोर्ट",
    slotOptions: ["पासपोर्ट", "आधार कार्ड", "वीज़ा"],
    npcAudioResponseTranscript:
        "शुक्रिया। एक फ़ोटो लेती हूँ — बस एक सेकंड।",
    graffitiStyleTag: "Orange 'पहचान' ID stamp — passport style",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S4: PAT_03 Rep 2 — Location: lift ───────────────────
  Scenario(
    scenarioId: "M04_S04",
    missionId: 4,
    environmentContext:
        "Key in hand. Room twelve. Third floor. Your bag "
        "weighs twenty kilos. You look around for the lift.",
    introFlag: false,
    environmentalTextPrompt: "🛗 ROOM 12 — 3RD FLOOR",
    sophieClueEnglishIntent: "Ask where the lift is",
    sophiePhoneticHint: "lift ka-han hai",
    targetLanguageAnchor: "लिफ्ट कहाँ है?",
    slotOptions: ["लिफ्ट", "सीढ़ियाँ", "कमरा नंबर बारह"],
    npcAudioResponseTranscript:
        "दाईं तरफ मुड़िए, सामने दिख जाएगी।",
    graffitiStyleTag: "Green '↑ लिफ्ट' floor arrow — signage style",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S5: PAT_06 Rep 3 — Yes/no: WiFi ─────────────────────
  Scenario(
    scenarioId: "M04_S05",
    missionId: 4,
    environmentContext:
        "Room found. Bed located. First order of business: "
        "tell everyone back home you're alive.",
    introFlag: false,
    environmentalTextPrompt: "📶 NEED WIFI — BADLY",
    sophieClueEnglishIntent: "Ask if there is WiFi and what the password is",
    sophiePhoneticHint: "kya yeh-han waa-i-faa-i hai? pass-word kya hai?",
    targetLanguageAnchor: "क्या यहाँ वाईफाई है? पासवर्ड क्या है?",
    slotOptions: ["वाईफाई है?", "इंटरनेट है?", "नेटवर्क है?"],
    npcAudioResponseTranscript:
        "हाँ है। पासवर्ड है — Mumbai@2024 — यह लिख लीजिए।",
    graffitiStyleTag: "Cyan '📶 वाईफाई' signal tag — pixel font",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S6: PAT_10 Rep 2 — Time question: breakfast ─────────
  Scenario(
    scenarioId: "M04_S06",
    missionId: 4,
    environmentContext:
        "Stomach growling. You realise you haven't eaten "
        "a proper meal since the flight.",
    introFlag: false,
    environmentalTextPrompt: "🍳 BREAKFAST — WHAT TIME?",
    sophieClueEnglishIntent: "Ask what time breakfast is served",
    sophiePhoneticHint: "naash-ta ki-tne ba-je mi-lta hai",
    targetLanguageAnchor: "नाश्ता कितने बजे मिलता है?",
    slotOptions: ["नाश्ता कितने बजे", "खाना कितने बजे", "रात का खाना"],
    npcAudioResponseTranscript:
        "सात से दस बजे तक — ऊपर वाले कमरे में।",
    graffitiStyleTag: "Yellow '🍳 नाश्ता' morning glow tag",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S7: PAT_07 Rep 2 — Self declaration: job ────────────
  Scenario(
    scenarioId: "M04_S07",
    missionId: 4,
    environmentContext:
        "She gets curious. Solo traveller, foreign look. "
        "She asks what you do. Hostel small talk begins.",
    introFlag: false,
    environmentalTextPrompt: "💼 SMALL TALK — WHAT DO YOU DO?",
    sophieClueEnglishIntent: "Say you are a [X]",
    sophiePhoneticHint: "main [X] hoon",
    targetLanguageAnchor: "मैं [X] हूँ",
    slotOptions: ["छात्र", "फ्रीलांसर", "फ़ोटोग्राफ़र", "इंजीनियर", "शिक्षक"],
    npcAudioResponseTranscript:
        "अच्छा! यहाँ पहली बार आए हैं?",
    graffitiStyleTag: "Purple '💼 काम' job identity tag",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S8: PAT_13 Rep 1 — Quantity modifier: towels ────────
  Scenario(
    scenarioId: "M04_S08",
    missionId: 4,
    environmentContext:
        "Room check. One thin towel. Two nights minimum. "
        "You go back to the desk.",
    introFlag: true,
    environmentalTextPrompt: "🛁 NEED MORE TOWELS",
    sophieClueEnglishIntent: "Ask for one more towel",
    sophiePhoneticHint: "ek aur tau-li-ya dee-ji-ye",
    targetLanguageAnchor: "एक और तौलिया दीजिए",
    slotOptions: ["तौलिया", "कम्बल", "तकिया", "चाबी"],
    npcAudioResponseTranscript:
        "जी, अभी भेजती हूँ।",
    graffitiStyleTag: "Green '+ एक और' quantity plus tag",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: write it down ────────────
  Scenario(
    scenarioId: "M04_S09",
    missionId: 4,
    environmentContext:
        "She rattles off checkout time, breakfast rules, "
        "locker policy. Too much. Too fast.",
    introFlag: false,
    environmentalTextPrompt: "📝 TOO MUCH INFO — NEED WRITTEN",
    sophieClueEnglishIntent: "Ask her to write it down",
    sophiePhoneticHint: "maaf keejiye, kya aap yeh likh sak-ti hain",
    targetLanguageAnchor: "माफ़ कीजिए, क्या आप यह लिख सकती हैं?",
    slotOptions: ["लिख सकती हैं", "दोबारा बता सकती हैं", "धीरे बोल सकती हैं"],
    npcAudioResponseTranscript:
        "हाँ बिल्कुल — लीजिए यह कागज़।",
    graffitiStyleTag: "White '✍️ लिखिए' chalk write tag",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: extra blanket ────────────
  Scenario(
    scenarioId: "M04_S10",
    missionId: 4,
    environmentContext:
        "Night falls. The AC is blasting and your thin "
        "blanket is a joke. You pick up the room phone.",
    introFlag: false,
    environmentalTextPrompt: "🥶 TOO COLD — NEED BLANKET",
    sophieClueEnglishIntent: "Ask for an extra blanket",
    sophiePhoneticHint: "ek aur kam-bal dee-ji-ye",
    targetLanguageAnchor: "एक और कम्बल दीजिए",
    slotOptions: ["कम्बल", "चादर", "तकिया", "रज़ाई"],
    npcAudioResponseTranscript:
        "जी साहब, पाँच मिनट में आ जाएगा।",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — hostel key stamp seal",
    npcName: "Receptionist Neha",
    npcAvatarEmoji: "👩‍💼",
  ),
];
