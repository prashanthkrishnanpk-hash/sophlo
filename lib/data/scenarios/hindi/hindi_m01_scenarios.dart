// lib/data/scenarios/hindi/hindi_m01_scenarios.dart
//
// MISSION 1: THE FLIGHT — 6 SCENARIOS
// =====================================
// Type: ONBOARDING
// Goal: Teach the app mechanic. Language is secondary.
// ALL scenarios use introFlag: true — full assist throughout.
// Pattern coverage: PAT_16(R1,R2), PAT_05(R1), PAT_01(R1), PAT_12(R1), PAT_02(R1)
// Primary words drilled: नमस्ते, शुक्रिया, मेरी, सीट, दीजिए, चाहिए, तकलीफ

import '../../../models/models.dart';

const List<Scenario> hindiM01Scenarios = [

  // ── S1: PAT_16 Rep 1 — First greeting ──────────────────
  Scenario(
    scenarioId: "M01_S01",
    missionId: 1,
    environmentContext:
        "You board the flight to Mumbai. The cabin fills with the smell "
        "of fresh air. A flight attendant smiles at the door.",
    introFlag: true,
    environmentalTextPrompt: "🛫 BOARDING — FLIGHT TO MUMBAI",
    sophieClueEnglishIntent: "Greet the flight attendant warmly",
    sophiePhoneticHint: "na-mas-te",
    targetLanguageAnchor: "नमस्ते",
    slotOptions: ["नमस्ते", "नमस्कार", "प्रणाम"],
    npcAudioResponseTranscript:
        "नमस्ते! मुंबई जा रहे हैं? बढ़िया। अपनी सीट ढूंढने में मदद चाहिए?",
    graffitiStyleTag: "Saffron 'नमस्ते' Devanagari spray — dripping ink",
    npcName: "Priya",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 1 — Identity possession intro ────────
  Scenario(
    scenarioId: "M01_S02",
    missionId: 1,
    environmentContext:
        "You scan the cabin looking for your row. The attendant "
        "glances at your boarding pass and points ahead.",
    introFlag: true,
    environmentalTextPrompt: "🎫 BOARDING PASS — SEAT [X]",
    sophieClueEnglishIntent: "Tell her your seat number",
    sophiePhoneticHint: "me-ri seat [X] hai",
    targetLanguageAnchor: "मेरी सीट [X] है",
    slotOptions: ["12A", "24B", "7C", "31F", "18D"],
    npcAudioResponseTranscript:
        "जी, वो रही आपकी सीट — बाईं तरफ, खिड़की के पास।",
    graffitiStyleTag: "Orange 'सीट' block neon — boarding pass aesthetic",
    npcName: "Priya",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S3: PAT_01 Rep 1 — Request imperative intro ─────────
  Scenario(
    scenarioId: "M01_S03",
    missionId: 1,
    environmentContext:
        "Takeoff complete. The seat belt sign goes off. The drink "
        "cart rattles down the aisle towards you.",
    introFlag: true,
    environmentalTextPrompt: "🥤 DRINK CART — [X] AVAILABLE",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "[X] dee-ji-ye",
    targetLanguageAnchor: "[X] दीजिए",
    slotOptions: ["पानी", "चाय", "कॉफ़ी", "जूस", "ठंडा पानी"],
    npcAudioResponseTranscript:
        "जी बिल्कुल, अभी लाती हूँ। कुछ और चाहिए?",
    graffitiStyleTag: "Green 'पानी' drip tag — Devanagari serif",
    npcName: "Rahul",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S4: PAT_12 Rep 1 — Medical state intro ──────────────
  Scenario(
    scenarioId: "M01_S04",
    missionId: 1,
    environmentContext:
        "An hour in. The plane hits turbulence. Your stomach lurches. "
        "The fasten seatbelt sign flashes red.",
    introFlag: true,
    environmentalTextPrompt: "😰 TURBULENCE — FEEL UNWELL",
    sophieClueEnglishIntent: "Tell the attendant you feel unwell",
    sophiePhoneticHint: "muj-he tak-leef ho ra-hi hai",
    targetLanguageAnchor: "मुझे तकलीफ हो रही है",
    slotOptions: ["तकलीफ हो रही है", "उल्टी जैसा लग रहा है", "चक्कर आ रहा है"],
    npcAudioResponseTranscript:
        "अरे! एक मिनट रुकिए, मैं अभी आती हूँ। पानी लाऊँ?",
    graffitiStyleTag: "Red 'सहायता' urgent splatter — emergency style",
    npcName: "Rahul",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S5: PAT_02 Rep 1 — Want/need intro ──────────────────
  Scenario(
    scenarioId: "M01_S05",
    missionId: 1,
    environmentContext:
        "Meal service. The attendant stops at your row and opens "
        "the trolley. The smell of warm food fills the air.",
    introFlag: true,
    environmentalTextPrompt: "🍛 MEAL SERVICE — [X] OR [Y]?",
    sophieClueEnglishIntent: "Say you want [X]",
    sophiePhoneticHint: "muj-he [X] cha-hi-ye",
    targetLanguageAnchor: "मुझे [X] चाहिए",
    slotOptions: ["शाकाहारी खाना", "मांसाहारी खाना", "दाल चावल", "पनीर"],
    npcAudioResponseTranscript:
        "बहुत अच्छा, लीजिए। खाना खाइए, अभी और गरम है।",
    graffitiStyleTag: "Yellow 'भोजन' thali stamp — gold ink",
    npcName: "Priya",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S6: PAT_16 Rep 2 — Social cluster close ─────────────
  Scenario(
    scenarioId: "M01_S06",
    missionId: 1,
    environmentContext:
        "Wheels down. Mumbai. The attendant stands at the door "
        "as passengers file out. Your eyes meet.",
    introFlag: true,
    environmentalTextPrompt: "🛬 WHEELS DOWN — MUMBAI AIRPORT",
    sophieClueEnglishIntent: "Thank her and say goodbye",
    sophiePhoneticHint: "shuk-ri-ya, al-vi-da",
    targetLanguageAnchor: "शुक्रिया, अलविदा",
    slotOptions: ["शुक्रिया", "धन्यवाद", "बहुत बहुत शुक्रिया"],
    npcAudioResponseTranscript:
        "शुक्रिया! मुंबई में आपका स्वागत है। मज़े करिए!",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — ink-bleed passport seal, Mumbai stamp",
    npcName: "Priya",
    npcAvatarEmoji: "👩‍✈️",
  ),
];
