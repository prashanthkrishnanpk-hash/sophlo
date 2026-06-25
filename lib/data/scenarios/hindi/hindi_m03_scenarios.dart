// lib/data/scenarios/hindi/hindi_m03_scenarios.dart
//
// MISSION 3: THE TAXI — 10 SCENARIOS
// =====================================
// Type: SPATIAL COMMANDS + PRICING
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2-DRILL), PAT_16(R4)
// Primary words drilled: चलिए, रोकना, मुड़िए, सीधे, बाईं/दाईं तरफ,
//   कितना, मीटर, रुपये, छुट्टे, माफ़ कीजिए, तकलीफ, शुक्रिया

import '../../../models/models.dart';

const List<Scenario> hindiM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Spatial command: go to ───────────
  Scenario(
    scenarioId: "M03_S01",
    missionId: 3,
    environmentContext:
        "Black and yellow cab. Cracked leather seat. A tiny "
        "Ganesh idol swings from the mirror. Driver waits.",
    introFlag: true,
    environmentalTextPrompt: "🚕 MUMBAI TAXI — WHERE TO?",
    sophieClueEnglishIntent: "Tell the driver to go to [X]",
    sophiePhoneticHint: "[X] cha-li-ye",
    targetLanguageAnchor: "[X] चलिए",
    slotOptions: ["कोलाबा", "बांद्रा", "जुहू", "अंधेरी", "दादर", "फोर्ट"],
    npcAudioResponseTranscript:
        "जी साहब, बैठ जाइए। रास्ता लंबा है — ट्रैफिक भी होगा।",
    graffitiStyleTag: "Yellow 'चलो!' bold road tag — Mumbai street font",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S2: PAT_14 Rep 2 — Spatial command: stop at ─────────
  Scenario(
    scenarioId: "M03_S02",
    missionId: 3,
    environmentContext:
        "Ten minutes in. You spot an ATM on the left. "
        "You need cash before reaching the hostel.",
    introFlag: false,
    environmentalTextPrompt: "🏧 ATM SPOTTED — STOP FIRST",
    sophieClueEnglishIntent: "Ask him to stop at the ATM first",
    sophiePhoneticHint: "peh-le [X] ro-kna",
    targetLanguageAnchor: "पहले [X] रोकना",
    slotOptions: ["एटीएम पर", "उस दुकान पर", "कोने पर", "सिग्नल पर"],
    npcAudioResponseTranscript:
        "ठीक है साहब, रोकता हूँ — जल्दी आइएगा।",
    graffitiStyleTag: "Cyan '📍 रोको' location pin stop tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S3: PAT_14 Rep 3 — Spatial command: turn ───────────
  Scenario(
    scenarioId: "M03_S03",
    missionId: 3,
    environmentContext:
        "Back in the cab. Moving again. Driver is about to "
        "miss the turn. You recognise the road from the map.",
    introFlag: false,
    environmentalTextPrompt: "↩️ NEXT SIGNAL — TURN!",
    sophieClueEnglishIntent: "Tell him to turn left at the signal",
    sophiePhoneticHint: "ag-le sig-nal par baa-yin ta-raf mu-di-ye",
    targetLanguageAnchor: "अगले सिग्नल पर बाईं तरफ मुड़िए",
    slotOptions: ["बाईं तरफ मुड़िए", "दाईं तरफ मुड़िए", "यू-टर्न लीजिए"],
    npcAudioResponseTranscript:
        "अरे हाँ, माफ़ करना साहब — मुड़ रहा हूँ।",
    graffitiStyleTag: "Green 'बाईं →' direction arrow neon tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S4: PAT_06 Rep 2 — Yes/no: right road ───────────────
  Scenario(
    scenarioId: "M03_S04",
    missionId: 3,
    environmentContext:
        "Twenty minutes and this doesn't look right. "
        "Buildings getting older. Less familiar. Unease creeps in.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ WRONG DIRECTION? — CHECK",
    sophieClueEnglishIntent: "Ask if this is the right road",
    sophiePhoneticHint: "kya yeh sahi ras-ta hai",
    targetLanguageAnchor: "क्या यह सही रास्ता है?",
    slotOptions: ["सही रास्ता", "कोलाबा का रास्ता", "छोटा रास्ता"],
    npcAudioResponseTranscript:
        "हाँ जी, ट्रैफिक की वजह से घूम कर जाना पड़ेगा।",
    graffitiStyleTag: "Red '?' question mark graffiti — road concern",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S5: PAT_04 Rep 1 — Price question: meter ────────────
  Scenario(
    scenarioId: "M03_S05",
    missionId: 3,
    environmentContext:
        "Hostel in sight. But the meter is running and "
        "you haven't looked at it once. Time to check.",
    introFlag: true,
    environmentalTextPrompt: "💰 METER RUNNING — HOW MUCH?",
    sophieClueEnglishIntent: "Ask what the meter reads",
    sophiePhoneticHint: "mee-tar mein kit-na hai",
    targetLanguageAnchor: "मीटर में कितना है?",
    slotOptions: ["मीटर में कितना", "कुल कितने रुपये", "किराया कितना"],
    npcAudioResponseTranscript:
        "एक सौ अस्सी रुपये, साहब।",
    graffitiStyleTag: "Orange '₹ मीटर' price display tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S6: PAT_11 Rep 1 — Negation problem: meter tampered ─
  Scenario(
    scenarioId: "M03_S06",
    missionId: 3,
    environmentContext:
        "Wait. One eighty? Google Maps said it was twelve "
        "kilometres. Something doesn't add up at all.",
    introFlag: true,
    environmentalTextPrompt: "⚠️ METER — SEEMS WRONG",
    sophieClueEnglishIntent: "Say the meter is not running correctly",
    sophiePhoneticHint: "yeh mee-tar sahi na-hin chal ra-ha",
    targetLanguageAnchor: "यह मीटर सही नहीं चल रहा",
    slotOptions: ["मीटर सही नहीं चल रहा", "यह बहुत ज़्यादा है", "यह गलत है"],
    npcAudioResponseTranscript:
        "अरे नहीं साहब! सही है — रात का किराया अलग होता है।",
    graffitiStyleTag: "Red '⚠️ गलत' warning splatter tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: give me change ────────────
  Scenario(
    scenarioId: "M03_S07",
    missionId: 3,
    environmentContext:
        "You hand him two hundred rupees. He pockets it. "
        "Starts to drive away. Not today.",
    introFlag: false,
    environmentalTextPrompt: "💵 PAID ₹200 — NEED CHANGE",
    sophieClueEnglishIntent: "Ask for your change back",
    sophiePhoneticHint: "chhut-te dee-ji-ye",
    targetLanguageAnchor: "छुट्टे दीजिए",
    slotOptions: ["छुट्टे दीजिए", "बाकी पैसे दीजिए", "वापसी दीजिए"],
    npcAudioResponseTranscript:
        "हाँ हाँ, लीजिए — बीस रुपये वापस।",
    graffitiStyleTag: "Purple '₹ वापस' change tag — bold Devanagari",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: didn't understand price ──
  Scenario(
    scenarioId: "M03_S08",
    missionId: 3,
    environmentContext:
        "Driver mumbles something about a toll charge. "
        "Fast Hindi. Numbers. You catch none of it.",
    introFlag: false,
    environmentalTextPrompt: "😕 TOLL CHARGE — DIDN'T CATCH",
    sophieClueEnglishIntent: "Say you didn't understand, ask to repeat",
    sophiePhoneticHint: "sam-jha na-hin, dob-a-ra bata-i-ye",
    targetLanguageAnchor: "समझ नहीं आया, दोबारा बताइए",
    slotOptions: ["दोबारा बताइए", "धीरे बोलिए", "हिंदी में समझाइए"],
    npcAudioResponseTranscript:
        "टोल — वो — अलग — पचास — रुपये।",
    graffitiStyleTag: "White 'क्या?' speech bubble chalk tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S9: PAT_12 Rep 2 — DRILL: feel carsick ──────────────
  Scenario(
    scenarioId: "M03_S09",
    missionId: 3,
    environmentContext:
        "Traffic jam. Stop-start for twenty minutes. Fumes, "
        "heat, the cab swaying. Your stomach is turning.",
    introFlag: false,
    environmentalTextPrompt: "😰 TRAFFIC JAM — FEELING ILL",
    sophieClueEnglishIntent: "Tell the driver you feel carsick",
    sophiePhoneticHint: "muj-he cha-kkar aa ra-ha hai",
    targetLanguageAnchor: "मुझे चक्कर आ रहा है",
    slotOptions: ["चक्कर आ रहा है", "उल्टी जैसा लग रहा है", "तकलीफ हो रही है"],
    npcAudioResponseTranscript:
        "अरे! खिड़की खोल लीजिए साहब, अभी पहुँचते हैं।",
    graffitiStyleTag: "Blue '😰 रुको' carsick emergency tag",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),

  // ── S10: PAT_16 Rep 4 — Social cluster: thank driver ────
  Scenario(
    scenarioId: "M03_S10",
    missionId: 3,
    environmentContext:
        "Finally. The hostel sign. You grab your bag. "
        "Step out into the evening air. Relief.",
    introFlag: false,
    environmentalTextPrompt: "🚪 ARRIVED — SAY GOODBYE",
    sophieClueEnglishIntent: "Thank the driver warmly",
    sophiePhoneticHint: "shuk-ri-ya bhaa-i, al-vi-da",
    targetLanguageAnchor: "शुक्रिया भाई, अलविदा",
    slotOptions: ["शुक्रिया भाई", "धन्यवाद", "बहुत शुक्रिया"],
    npcAudioResponseTranscript:
        "आइए फिर साहब! मुंबई में मज़े करिए!",
    graffitiStyleTag: "GOLD 'मिशन पूर्ण' — taxi door stamp, street ink",
    npcName: "Driver Raju",
    npcAvatarEmoji: "🧔",
  ),
];
