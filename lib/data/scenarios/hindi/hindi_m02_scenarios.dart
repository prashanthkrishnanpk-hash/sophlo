// lib/data/scenarios/hindi/hindi_m02_scenarios.dart
//
// MISSION 2: THE TERMINAL — 10 SCENARIOS
// ========================================
// Type: FIRST REAL PRESSURE
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Primary words: नमस्ते, मैं, पर्यटन, मेरा/मेरी, नाम, पासपोर्ट,
//               के लिए, कहाँ, है क्या, कितने बजे, माफ़ कीजिए, दीजिए

import '../../../models/models.dart';

const List<Scenario> hindiM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Greeting in formal context ───────
  Scenario(
    scenarioId: "M02_S01",
    missionId: 2,
    environmentContext:
        "Immigration. A stern officer in uniform taps the counter "
        "without looking up. The queue behind you is long.",
    introFlag: true,
    environmentalTextPrompt: "🛂 IMMIGRATION COUNTER — MUMBAI",
    sophieClueEnglishIntent: "Greet the officer politely",
    sophiePhoneticHint: "na-mas-te",
    targetLanguageAnchor: "नमस्ते",
    slotOptions: ["नमस्ते", "नमस्कार", "सुप्रभात"],
    npcAudioResponseTranscript:
        "नमस्ते। पासपोर्ट दीजिए।",
    graffitiStyleTag: "Saffron 'नमस्ते' formal stencil — immigration stamp style",
    npcName: "Officer Sharma",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Self declaration: purpose ────────
  Scenario(
    scenarioId: "M02_S02",
    missionId: 2,
    environmentContext:
        "The officer studies your passport, then looks up. "
        "One word. Direct. You know what's coming.",
    introFlag: true,
    environmentalTextPrompt: "📋 PURPOSE OF VISIT?",
    sophieClueEnglishIntent: "Say you are here for tourism",
    sophiePhoneticHint: "main par-ya-tan ke li-ye aa-ya/aa-yi hoon",
    targetLanguageAnchor: "मैं पर्यटन के लिए आया हूँ",
    slotOptions: ["पर्यटन के लिए", "घूमने के लिए", "छुट्टियों के लिए"],
    npcAudioResponseTranscript:
        "ठीक है। कितने दिन रहेंगे?",
    graffitiStyleTag: "Blue 'पर्यटन' travel stamp — bold block letters",
    npcName: "Officer Sharma",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity possession: name ────────
  Scenario(
    scenarioId: "M02_S03",
    missionId: 2,
    environmentContext:
        "He types something into the computer. Eyes still on "
        "the screen. Then — your name?",
    introFlag: false,
    environmentalTextPrompt: "📋 NAME CHECK — PASSPORT",
    sophieClueEnglishIntent: "Say your name is [X]",
    sophiePhoneticHint: "me-ra naam [X] hai",
    targetLanguageAnchor: "मेरा नाम [X] है",
    slotOptions: ["अर्जुन", "प्रिया", "रोहन", "अनन्या", "विक्रम"],
    npcAudioResponseTranscript:
        "हाँ। सात दिन के लिए वीज़ा है। जाइए।",
    graffitiStyleTag: "White 'नाम' chalk tag — worn document aesthetic",
    npcName: "Officer Sharma",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Document handover: passport ──────
  Scenario(
    scenarioId: "M02_S04",
    missionId: 2,
    environmentContext:
        "A second officer stops you. Spot check. Hand on the "
        "counter. He needs your documents again.",
    introFlag: true,
    environmentalTextPrompt: "🪪 DOCUMENT CHECK — SPOT INSPECTION",
    sophieClueEnglishIntent: "Hand over your passport and say here it is",
    sophiePhoneticHint: "yeh ra-ha me-ra paas-port",
    targetLanguageAnchor: "यह रहा मेरा पासपोर्ट",
    slotOptions: ["पासपोर्ट", "वीज़ा", "बोर्डिंग पास"],
    npcAudioResponseTranscript:
        "शुक्रिया। सब ठीक है, जाइए।",
    graffitiStyleTag: "Orange 'पासपोर्ट' document stamp — ink bleed",
    npcName: "Security Officer",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Purpose destination ───────────────
  Scenario(
    scenarioId: "M02_S05",
    missionId: 2,
    environmentContext:
        "Baggage claim. Your bag is not on the belt. A ground "
        "staff member in orange vest approaches.",
    introFlag: true,
    environmentalTextPrompt: "🧳 BAGGAGE CLAIM — BAG MISSING",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "me-ra sa-maan [X] flight se aa-na tha",
    targetLanguageAnchor: "मेरा सामान [X] फ्लाइट से आना था",
    slotOptions: ["AI202", "6E456", "UK789", "SG101"],
    npcAudioResponseTranscript:
        "जी, फ्लाइट नंबर बताइए — देखते हैं।",
    graffitiStyleTag: "Green 'सामान' conveyor belt tag — industrial font",
    npcName: "Ground Staff",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location question: exit ───────────
  Scenario(
    scenarioId: "M02_S06",
    missionId: 2,
    environmentContext:
        "Bag finally in hand. The terminal is enormous. Exits "
        "everywhere. Signs in three languages you can't read.",
    introFlag: true,
    environmentalTextPrompt: "🚪 FIND THE EXIT",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "ba-har ja-ne ka ras-ta ka-han hai",
    targetLanguageAnchor: "बाहर जाने का रास्ता कहाँ है?",
    slotOptions: ["बाहर जाने का रास्ता", "मुख्य द्वार", "टैक्सी स्टैंड", "मेट्रो"],
    npcAudioResponseTranscript:
        "सीधे जाइए, फिर दाईं तरफ मुड़िए — वहाँ दिख जाएगा।",
    graffitiStyleTag: "Cyan 'बाहर→' neon exit arrow tag",
    npcName: "Airport Staff",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Yes/no availability: taxi ────────
  Scenario(
    scenarioId: "M02_S07",
    missionId: 2,
    environmentContext:
        "Outside. Heat hits you. A wall of noise. Touts, "
        "horns, the smell of diesel. You need a prepaid taxi.",
    introFlag: true,
    environmentalTextPrompt: "🚕 OUTSIDE TERMINAL — NEED TAXI",
    sophieClueEnglishIntent: "Ask if there is a prepaid taxi stand",
    sophiePhoneticHint: "kya yeh-han pre-paid taxi hai",
    targetLanguageAnchor: "क्या यहाँ प्रीपेड टैक्सी है?",
    slotOptions: ["प्रीपेड टैक्सी", "टैक्सी स्टैंड", "मेट्रो स्टेशन", "बस"],
    npcAudioResponseTranscript:
        "हाँ जी, वो सामने है — नीली छत वाला बूथ।",
    graffitiStyleTag: "Yellow 'टैक्सी?' question tag — street font",
    npcName: "Policeman",
    npcAvatarEmoji: "👮",
  ),

  // ── S8: PAT_10 Rep 1 — Time question: last metro ────────
  Scenario(
    scenarioId: "M02_S08",
    missionId: 2,
    environmentContext:
        "You spot a metro sign. Cheaper than taxi. You check "
        "your watch — it's 10:45 PM. Last train?",
    introFlag: true,
    environmentalTextPrompt: "🚇 METRO — LAST TRAIN TIME?",
    sophieClueEnglishIntent: "Ask what time the last metro is",
    sophiePhoneticHint: "akh-ri me-tro ki-tne ba-je hai",
    targetLanguageAnchor: "आखिरी मेट्रो कितने बजे है?",
    slotOptions: ["आखिरी मेट्रो", "पहली बस", "अगली ट्रेन"],
    npcAudioResponseTranscript:
        "ग्यारह बजे तक है। अभी जाइए, नहीं तो छूट जाएगी।",
    graffitiStyleTag: "Purple 'आखिरी ट्रेन' clock tag — urgency aesthetic",
    npcName: "Metro Staff",
    npcAvatarEmoji: "🚇",
  ),

  // ── S9: PAT_15 Rep 1 — Politeness repair: repeat ────────
  Scenario(
    scenarioId: "M02_S09",
    missionId: 2,
    environmentContext:
        "The metro booth. The attendant says something fast "
        "in Hindi. Too fast. You didn't catch a word.",
    introFlag: true,
    environmentalTextPrompt: "😕 DIDN'T UNDERSTAND — NEED REPEAT",
    sophieClueEnglishIntent: "Ask them to repeat slowly",
    sophiePhoneticHint: "maaf keejiye, dheere dob-a-ra kahe-ye",
    targetLanguageAnchor: "माफ़ कीजिए, धीरे दोबारा कहिए",
    slotOptions: ["दोबारा कहिए", "धीरे बोलिए", "समझ नहीं आया"],
    npcAudioResponseTranscript:
        "जी — टिकट — चाहिए — कहाँ — जाना है?",
    graffitiStyleTag: "White 'दोबारा?' speech bubble tag — chalk style",
    npcName: "Metro Attendant",
    npcAvatarEmoji: "🎫",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL INJECTION: ticket ─────────
  Scenario(
    scenarioId: "M02_S10",
    missionId: 2,
    environmentContext:
        "You understand now. She needs to know where you're going. "
        "You hand over money and ask for a ticket to Colaba.",
    introFlag: false,
    environmentalTextPrompt: "🎫 TICKET TO [X] — PAY NOW",
    sophieClueEnglishIntent: "Ask for one ticket to [X]",
    sophiePhoneticHint: "[X] ka ek ti-kat dee-ji-ye",
    targetLanguageAnchor: "[X] का एक टिकट दीजिए",
    slotOptions: ["कोलाबा", "बांद्रा", "अंधेरी", "दादर", "चर्चगेट"],
    npcAudioResponseTranscript:
        "लीजिए। बीस रुपये। शुक्रिया।",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — Terminal cleared stamp, Mumbai ink",
    npcName: "Metro Attendant",
    npcAvatarEmoji: "🎫",
  ),
];
