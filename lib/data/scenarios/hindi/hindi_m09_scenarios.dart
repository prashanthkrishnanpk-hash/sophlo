// lib/data/scenarios/hindi/hindi_m09_scenarios.dart
//
// MISSION 9: LOCAL FRIEND'S HOUSE — 12 SCENARIOS
// =================================================
// Type: SOCIAL IMMERSION + REGISTER SHIFT + CULTURAL RITUAL
// Pattern coverage:
//   PAT_16(R6), PAT_17(R1,R2,R3), PAT_18(R1,R2,R3),
//   PAT_07(R4), PAT_03(R4), PAT_13(R4), PAT_12(R7-FINAL),
//   PAT_14(R6), PAT_19(R1,R2), PAT_20(R1), PAT_21(R1)
//
// KEY CULTURAL NOTES:
//   - PAT_17: Formal आप → Informal तुम shift introduced here ONLY
//   - PAT_18: The chai ritual — offering, accepting, declining gracefully
//   - Register shift happens naturally through the host's lead
//   - User must navigate family dynamics — host, host's mother, peer guest

import '../../../models/models.dart';

const List<Scenario> hindiM09Scenarios = [

  // ── S1: PAT_16 Rep 6 — Informal greeting at door ────────
  Scenario(
    scenarioId: "M09_S01",
    missionId: 9,
    environmentContext:
        "Andheri. Third floor walkup. Your travel contact "
        "Arjun pulls open the door before you can knock. "
        "Warm light. The smell of dal from inside.",
    introFlag: false,
    environmentalTextPrompt: "🏠 FRIEND'S DOOR — EVENING",
    sophieClueEnglishIntent: "Greet Arjun warmly and informally",
    sophiePhoneticHint: "ar-jun bhaa-i, na-mas-te! kai-sa hai",
    targetLanguageAnchor: "अर्जुन भाई, नमस्ते! कैसा है?",
    slotOptions: ["नमस्ते! कैसा है?", "हाय! क्या हाल है?", "नमस्ते! सब ठीक?"],
    npcAudioResponseTranscript:
        "अरे यार, आ गए! बढ़िया है — आओ अंदर आओ। माँ से मिलो।",
    graffitiStyleTag: "Saffron '🏠 नमस्ते' warm home greeting tag",
    npcName: "Arjun (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S2: PAT_17 Rep 1 — Register shift INTRO (FULL ASSIST)
  Scenario(
    scenarioId: "M09_S02",
    missionId: 9,
    environmentContext:
        "Arjun's mother comes out. Sari. Warm smile. "
        "This is formal territory. Arjun switches — "
        "watch how the language changes with her.",
    introFlag: true,
    environmentalTextPrompt: "👵 MEET ARJUN'S MOTHER — FORMAL",
    sophieClueEnglishIntent:
        "Greet his mother formally using आप (not तुम)",
    sophiePhoneticHint: "na-mas-te aun-ti ji, aap kai-si hain",
    targetLanguageAnchor: "नमस्ते आंटी जी, आप कैसी हैं?",
    slotOptions: ["आप कैसी हैं?", "आप ठीक हैं?", "आपसे मिलकर खुशी हुई"],
    npcAudioResponseTranscript:
        "अरे बेटा, बहुत अच्छे! बैठो बैठो — चाय लाती हूँ।",
    graffitiStyleTag: "Gold 'आप vs तुम' register shift tag — formal stencil",
    npcName: "Arjun's Mother",
    npcAvatarEmoji: "👵",
  ),

  // ── S3: PAT_18 Rep 1 — Cultural ritual INTRO: chai offer
  Scenario(
    scenarioId: "M09_S03",
    missionId: 9,
    environmentContext:
        "She's already in the kitchen. Clattering cups. "
        "Chai is coming whether you want it or not. "
        "First offer — accept gracefully.",
    introFlag: true,
    environmentalTextPrompt: "☕ CHAI RITUAL — FIRST OFFER: ACCEPT",
    sophieClueEnglishIntent:
        "Accept the chai offer gracefully and thank her",
    sophiePhoneticHint: "haan aun-ti ji, za-roor — bahut shuk-ri-ya",
    targetLanguageAnchor: "हाँ आंटी जी, ज़रूर — बहुत शुक्रिया",
    slotOptions: ["हाँ ज़रूर", "बिल्कुल", "क्यों नहीं"],
    npcAudioResponseTranscript:
        "लो बेटा — ताज़ी बनाई है। अदरक डाली है, अच्छी लगेगी।",
    graffitiStyleTag: "Warm '☕ चाय' chai cup ritual tag — hand-drawn",
    npcName: "Arjun's Mother",
    npcAvatarEmoji: "👵",
  ),

  // ── S4: PAT_07 Rep 4 — Self declaration: job/study ──────
  Scenario(
    scenarioId: "M09_S04",
    missionId: 9,
    environmentContext:
        "Arjun's mother sits. Chai in hand. The questions "
        "begin. What do you do? Where are you from? "
        "She is genuinely curious.",
    introFlag: false,
    environmentalTextPrompt: "💬 GETTING TO KNOW YOU — JOB?",
    sophieClueEnglishIntent: "Tell her what you do for work",
    sophiePhoneticHint: "main [X] hoon",
    targetLanguageAnchor: "मैं [X] हूँ",
    slotOptions: ["छात्र", "फ्रीलांसर", "फ़ोटोग्राफ़र", "इंजीनियर", "लेखक"],
    npcAudioResponseTranscript:
        "वाह! बहुत अच्छा। पहली बार भारत आए हो?",
    graffitiStyleTag: "Purple '💼 मैं हूँ' identity tag",
    npcName: "Arjun's Mother",
    npcAvatarEmoji: "👵",
  ),

  // ── S5: PAT_03 Rep 4 — Location: bathroom ───────────────
  Scenario(
    scenarioId: "M09_S05",
    missionId: 9,
    environmentContext:
        "Long train journey earlier. You need the "
        "bathroom. Now. The apartment is small but unfamiliar.",
    introFlag: false,
    environmentalTextPrompt: "🚽 URGENT — NEED BATHROOM",
    sophieClueEnglishIntent: "Ask Arjun where the bathroom is",
    sophiePhoneticHint: "yaar, wash-room kah-an hai",
    targetLanguageAnchor: "यार, वॉशरूम कहाँ है?",
    slotOptions: ["वॉशरूम", "बाथरूम", "टॉयलेट"],
    npcAudioResponseTranscript:
        "अरे, उधर — बाईं तरफ, दरवाज़े के पास।",
    graffitiStyleTag: "Cyan '🚽 कहाँ' location urgency tag",
    npcName: "Arjun (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S6: PAT_13 Rep 4 — Quantity: more food ──────────────
  Scenario(
    scenarioId: "M09_S06",
    missionId: 9,
    environmentContext:
        "Dinner time. Mother has cooked dal, roti, "
        "sabzi, rice. She keeps serving. The food is extraordinary.",
    introFlag: false,
    environmentalTextPrompt: "🍛 DINNER — SERVED WITH LOVE",
    sophieClueEnglishIntent: "Ask for a little more dal please",
    sophiePhoneticHint: "thoda aur daal dee-ji-ye na",
    targetLanguageAnchor: "थोड़ी और दाल दीजिए ना",
    slotOptions: ["दाल", "चावल", "रोटी", "सब्ज़ी"],
    npcAudioResponseTranscript:
        "लो लो, और लो! खाना खाओ, इतना कम क्यों खा रहे हो?",
    graffitiStyleTag: "Orange '🍛 और लो' generous serving tag",
    npcName: "Arjun's Mother",
    npcAvatarEmoji: "👵",
  ),

  // ── S7: PAT_18 Rep 2 — Cultural ritual: decline chai ────
  Scenario(
    scenarioId: "M09_S07",
    missionId: 9,
    environmentContext:
        "Third cup of chai offered. You are absolutely "
        "full. But refusing must be done right — "
        "not abruptly, not rudely.",
    introFlag: false,
    environmentalTextPrompt: "☕ THIRD CHAI — DECLINE GRACEFULLY",
    sophieClueEnglishIntent:
        "Decline the third chai gracefully using the ritual phrase",
    sophiePhoneticHint: "bas bas aun-ti ji, bahut ho ga-ya — pet bhar ga-ya",
    targetLanguageAnchor: "बस बस आंटी जी, बहुत हो गया — पेट भर गया",
    slotOptions: ["बहुत हो गया", "बस काफी है", "नहीं शुक्रिया"],
    npcAudioResponseTranscript:
        "अरे एक और पी लो — बनाई है तुम्हारे लिए।",
    graffitiStyleTag: "Red '✋ बस बस' polite refusal tag — warm style",
    npcName: "Arjun's Mother",
    npcAvatarEmoji: "👵",
  ),

  // ── S8: PAT_17 Rep 2 — Register shift: peer to peer ─────
  Scenario(
    scenarioId: "M09_S08",
    missionId: 9,
    environmentContext:
        "Arjun's friend Priya arrives. Your age. "
        "Arjun introduces you. She immediately "
        "switches to informal — you follow.",
    introFlag: false,
    environmentalTextPrompt: "👋 MEET PRIYA — PEER REGISTER",
    sophieClueEnglishIntent:
        "Greet Priya informally using तुम register",
    sophiePhoneticHint: "haa-i pri-ya, tu-m kai-si ho",
    targetLanguageAnchor: "हाय प्रिया, तुम कैसी हो?",
    slotOptions: ["तुम कैसी हो?", "क्या हाल है?", "सब ठीक?"],
    npcAudioResponseTranscript:
        "बढ़िया हूँ यार! तुम Mumbai enjoy कर रहे हो?",
    graffitiStyleTag: "Blue 'तुम' informal register tag — casual font",
    npcName: "Priya (peer)",
    npcAvatarEmoji: "👩",
  ),

  // ── S9: PAT_12 Rep 7 — FINAL REP: slightly tired ────────
  Scenario(
    scenarioId: "M09_S09",
    missionId: 9,
    environmentContext:
        "Ten PM. It's been a long, wonderful day. "
        "You feel the exhaustion coming — in the best way. "
        "Priya notices you slowing down.",
    introFlag: false,
    environmentalTextPrompt: "😴 GETTING TIRED — LONG DAY",
    sophieClueEnglishIntent: "Tell Priya you are feeling a bit tired",
    sophiePhoneticHint: "yaar, thoda thaka hua hoon",
    targetLanguageAnchor: "यार, थोड़ा थका हुआ हूँ",
    slotOptions: ["थका हुआ हूँ", "नींद आ रही है", "आँखें भारी हैं"],
    npcAudioResponseTranscript:
        "अरे हाँ — सफ़र बहुत लंबा था ना। आराम करो।",
    graffitiStyleTag: "Purple '😴 थका' tired state tag — soft glow",
    npcName: "Priya (peer)",
    npcAvatarEmoji: "👩",
  ),

  // ── S10: PAT_14 Rep 6 — Spatial: help to main road ──────
  Scenario(
    scenarioId: "M09_S10",
    missionId: 9,
    environmentContext:
        "Time to leave. It's late. The building exit "
        "leads into a maze of lanes. You need to "
        "find the main road for a cab.",
    introFlag: false,
    environmentalTextPrompt: "🌙 LEAVING — NEED MAIN ROAD",
    sophieClueEnglishIntent:
        "Ask Arjun to show you to the main road",
    sophiePhoneticHint: "yaar, mu-jhay mu-kh-ya saa-dak tak chho-d do",
    targetLanguageAnchor: "यार, मुझे मुख्य सड़क तक छोड़ दो",
    slotOptions: ["मुख्य सड़क तक", "बाहर तक", "टैक्सी मिलने तक"],
    npcAudioResponseTranscript:
        "हाँ हाँ चलो — मैं साथ आता हूँ। ऑटो मिल जाएगा।",
    graffitiStyleTag: "Green '🚶 साथ चलो' companion walk tag",
    npcName: "Arjun (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S11: PAT_17 Rep 3 — Register: casual question ───────
  Scenario(
    scenarioId: "M09_S11",
    missionId: 9,
    environmentContext:
        "Walking to the main road. Just you and Arjun. "
        "Night air. The city humming. Real conversation.",
    introFlag: false,
    environmentalTextPrompt: "🌃 NIGHT WALK — REAL TALK",
    sophieClueEnglishIntent:
        "Ask Arjun informally what his favourite part of Mumbai is",
    sophiePhoneticHint: "yaar, tu-m-he Mum-bai mein kya sab-se zyaa-da pasand hai",
    targetLanguageAnchor: "यार, तुम्हें Mumbai में क्या सबसे ज़्यादा पसंद है?",
    slotOptions: ["सबसे ज़्यादा पसंद", "सबसे अच्छा", "सबसे मज़ेदार"],
    npcAudioResponseTranscript:
        "समुद्र किनारा — रात को Marine Drive पर बैठना, यार! "
        "तुम गए? कल चलते हैं।",
    graffitiStyleTag: "Cyan '🌃 बातें' night conversation tag",
    npcName: "Arjun (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S12: PAT_18 Rep 3 — Cultural farewell ritual ────────
  Scenario(
    scenarioId: "M09_S12",
    missionId: 9,
    environmentContext:
        "Auto found. You get in. Arjun stands at "
        "the roadside. His mother called him twice "
        "already. This was a perfect evening.",
    introFlag: false,
    environmentalTextPrompt: "🛺 AUTO FOUND — FINAL GOODBYE",
    sophieClueEnglishIntent:
        "Thank Arjun and his family, use the farewell ritual phrase",
    sophiePhoneticHint:
        "yaar, mil-kar bahut ach-cha la-ga — aun-ti ko bhi shuk-ri-ya bol-na, al-vi-da",
    targetLanguageAnchor:
        "यार, मिलकर बहुत अच्छा लगा — आंटी को भी शुक्रिया बोलना, अलविदा",
    slotOptions: ["बहुत अच्छा लगा", "बड़ा मज़ा आया", "शानदार शाम थी"],
    npcAudioResponseTranscript:
        "अरे यार, फिर आओ! माँ को भी बहुत अच्छा लगा। "
        "Mumbai आओ तो सीधे यहाँ आना — ठीक है?",
    graffitiStyleTag:
        "GOLD 'मिशन पूर्ण' — home visit stamp, warm ink, family style",
    npcName: "Arjun (friend)",
    npcAvatarEmoji: "🧑",
  ),
];
