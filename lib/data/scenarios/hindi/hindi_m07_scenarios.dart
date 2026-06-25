// lib/data/scenarios/hindi/hindi_m07_scenarios.dart
//
// MISSION 7: THE PHARMACY — 10 SCENARIOS
// =========================================
// Type: SYMPTOMS + DOSAGE + MEDICAL VOCAB
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Primary words: दर्द, बुखार, एलर्जी, दवाई, कितना, गोली,
//   खाने के बाद, नहीं, बीमा, माफ़ कीजिए

import '../../../models/models.dart';

const List<Scenario> hindiM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Medical state: headache ──────────
  Scenario(
    scenarioId: "M07_S01",
    missionId: 7,
    environmentContext:
        "Morning three. You wake up with a headache "
        "that feels like a drill behind your left eye.",
    introFlag: false,
    environmentalTextPrompt: "💊 MEDICAL STORE — OPEN 24HRS",
    sophieClueEnglishIntent: "Tell the pharmacist you have a headache",
    sophiePhoneticHint: "sir mein dard hai",
    targetLanguageAnchor: "सिर में दर्द है",
    slotOptions: ["सिर में दर्द", "बुखार है", "पेट दर्द है", "खाँसी है"],
    npcAudioResponseTranscript:
        "कब से है? बुखार भी है क्या?",
    graffitiStyleTag: "Red '🤕 दर्द' medical cross tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Medical: duration ────────────────
  Scenario(
    scenarioId: "M07_S02",
    missionId: 7,
    environmentContext:
        "She needs to know how long. She's checking "
        "whether this needs medicine or a doctor.",
    introFlag: false,
    environmentalTextPrompt: "⏰ SINCE WHEN — DURATION",
    sophieClueEnglishIntent: "Say you've had it since this morning",
    sophiePhoneticHint: "sub-ah se hai",
    targetLanguageAnchor: "सुबह से है",
    slotOptions: ["सुबह से", "कल से", "दो दिन से", "रात से"],
    npcAudioResponseTranscript:
        "ठीक है। बुखार है?",
    graffitiStyleTag: "Orange '⏰ कब से' time duration tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_12 Rep 6 — Medical: allergy to medicine ─────
  Scenario(
    scenarioId: "M07_S03",
    missionId: 7,
    environmentContext:
        "She reaches for something. You remember — "
        "you cannot take ibuprofen. Stomach issues.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ MEDICINE ALLERGY — STOP HER",
    sophieClueEnglishIntent: "Say you are allergic to ibuprofen",
    sophiePhoneticHint: "muj-he i-boo-pro-fen se el-er-jee hai",
    targetLanguageAnchor: "मुझे ibuprofen से एलर्जी है",
    slotOptions: ["ibuprofen से", "पेनिसिलिन से", "एस्पिरिन से"],
    npcAudioResponseTranscript:
        "अच्छा! तो पैरासिटामोल दे देती हूँ — वो safe है।",
    graffitiStyleTag: "Red '⚠️ एलर्जी' medicine allergy tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_02 Rep 5 — Want/need: specific medicine ─────
  Scenario(
    scenarioId: "M07_S04",
    missionId: 7,
    environmentContext:
        "She recommends paracetamol. Good. You also "
        "need antacid and vitamin C while you're here.",
    introFlag: false,
    environmentalTextPrompt: "🛒 ALSO NEED — [X]",
    sophieClueEnglishIntent: "Say you also need antacid",
    sophiePhoneticHint: "[X] bhi chaa-hi-ye",
    targetLanguageAnchor: "[X] भी चाहिए",
    slotOptions: ["एन्टासिड", "विटामिन C", "पानी की बोतल", "बैंडेज"],
    npcAudioResponseTranscript:
        "जी, और कुछ?",
    graffitiStyleTag: "Green '+ भी चाहिए' add-on request tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_04 Rep 4 — Price question: medicine cost ────
  Scenario(
    scenarioId: "M07_S05",
    missionId: 7,
    environmentContext:
        "She assembles everything. Before you take it "
        "you want to know the damage.",
    introFlag: false,
    environmentalTextPrompt: "💰 TOTAL COST — CHECK BEFORE PAY",
    sophieClueEnglishIntent: "Ask how much everything costs",
    sophiePhoneticHint: "sab mi-la-kar kit-na hua",
    targetLanguageAnchor: "सब मिलाकर कितना हुआ?",
    slotOptions: ["सब मिलाकर कितना", "कुल कितना", "कितने रुपये"],
    npcAudioResponseTranscript:
        "दो सौ बीस रुपये।",
    graffitiStyleTag: "Yellow '₹ कुल' total price tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_10 Rep 3 — Time: dosage frequency ───────────
  Scenario(
    scenarioId: "M07_S06",
    missionId: 7,
    environmentContext:
        "Paid. Medicine in bag. But you realise you "
        "have no idea how many tablets or how often.",
    introFlag: false,
    environmentalTextPrompt: "💊 DOSAGE — HOW MANY TIMES?",
    sophieClueEnglishIntent: "Ask how many tablets to take per day",
    sophiePhoneticHint: "roz kit-ni go-li-yan le-ni hain",
    targetLanguageAnchor: "रोज़ कितनी गोलियाँ लेनी हैं?",
    slotOptions: ["कितनी गोलियाँ", "कितनी बार", "कितने घंटे में"],
    npcAudioResponseTranscript:
        "दिन में तीन बार — सुबह, दोपहर, रात।",
    graffitiStyleTag: "Blue '💊 खुराक' dosage chart tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_11 Rep 4 — Negation: no prescription ────────
  Scenario(
    scenarioId: "M07_S07",
    missionId: 7,
    environmentContext:
        "She points to a stronger painkiller on the shelf. "
        "Prescription required. You don't have one.",
    introFlag: false,
    environmentalTextPrompt: "📋 PRESCRIPTION — DON'T HAVE ONE",
    sophieClueEnglishIntent: "Say you don't have a prescription",
    sophiePhoneticHint: "me-re paas parch-i na-hin hai",
    targetLanguageAnchor: "मेरे पास पर्ची नहीं है",
    slotOptions: ["पर्ची नहीं है", "नुस्खा नहीं है", "डॉक्टर की चिट्ठी नहीं"],
    npcAudioResponseTranscript:
        "कोई बात नहीं — पैरासिटामोल काफी है सिरदर्द के लिए।",
    graffitiStyleTag: "Red '❌ पर्ची' no prescription tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_06 Rep 6 — Yes/no: sunscreen stock ──────────
  Scenario(
    scenarioId: "M07_S08",
    missionId: 7,
    environmentContext:
        "Mumbai sun is merciless. You've been burning "
        "for three days. You spot the skincare shelf.",
    introFlag: false,
    environmentalTextPrompt: "☀️ SKINCARE SHELF — SUNSCREEN?",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "sun-screen mi-l-ti hai kya",
    targetLanguageAnchor: "सनस्क्रीन मिलती है क्या?",
    slotOptions: ["सनस्क्रीन", "मॉश्चराइज़र", "एलोवेरा जेल", "साबुन"],
    npcAudioResponseTranscript:
        "हाँ जी — SPF 30 या 50, कौन सा चाहिए?",
    graffitiStyleTag: "Cyan '☀️ सनस्क्रीन' sun protection tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S9: PAT_08 Rep 4 — Handover: insurance card ─────────
  Scenario(
    scenarioId: "M07_S09",
    missionId: 7,
    environmentContext:
        "Travel insurance. You remember you have it. "
        "Might help with the cost — worth trying.",
    introFlag: false,
    environmentalTextPrompt: "🪪 INSURANCE — PRESENT CARD",
    sophieClueEnglishIntent: "Show your insurance card",
    sophiePhoneticHint: "yeh ra-ha me-ra in-sho-rance card",
    targetLanguageAnchor: "यह रहा मेरा इंश्योरेंस कार्ड",
    slotOptions: ["इंश्योरेंस कार्ड", "ट्रैवल कार्ड", "हेल्थ कार्ड"],
    npcAudioResponseTranscript:
        "हम क्लेम नहीं लेते जी — लेकिन रसीद दे देती हूँ।",
    graffitiStyleTag: "Green '🪪 बीमा' insurance card tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_15 Rep 5 — Repair: dosage unclear ──────────
  Scenario(
    scenarioId: "M07_S10",
    missionId: 7,
    environmentContext:
        "She explains the dosage again quickly. Before "
        "or after food? With water? You missed it.",
    introFlag: false,
    environmentalTextPrompt: "😕 DOSAGE UNCLEAR — BEFORE OR AFTER?",
    sophieClueEnglishIntent: "Ask if to take before or after food",
    sophiePhoneticHint: "khaa-ne se peh-le ya baad mein",
    targetLanguageAnchor: "खाने से पहले या बाद में?",
    slotOptions: ["खाने से पहले", "खाने के बाद", "खाने के साथ"],
    npcAudioResponseTranscript:
        "खाने के बाद — खाली पेट मत लेना, पेट खराब हो जाएगा।",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — pharmacy cross seal, medicine tag",
    npcName: "Pharmacist Didi",
    npcAvatarEmoji: "👩‍⚕️",
  ),
];
