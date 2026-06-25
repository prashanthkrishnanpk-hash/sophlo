// lib/data/scenarios/korean/korean_m07_scenarios.dart
//
// MISSION 7: 약국 — PHARMACY — 10 SCENARIOS
// ============================================
// Location: 약국 (Yakguk), Seoul Myeongdong / Itaewon
// Type: HEALTH + URGENCY — survival-critical vocabulary
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Key forms: 머리가 아파요, 열이 있어요, ~알레르기가 있어요,
//   ~이/가 있어요, 얼마예요, 하루에 몇 번, ~주세요,
//   여기 있어요, 식전이에요 식후에요, 나아졌어요

import '../../../models/models.dart';

const List<Scenario> koreanM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Symptom: headache ────────────────
  Scenario(
    scenarioId: "KO_M07_S01",
    missionId: 7,
    environmentContext:
        "약국. Green cross, bright interior. "
        "The pharmacist in a white coat looks up. "
        "Korea's pharmacists are knowledgeable and helpful.",
    introFlag: true,
    environmentalTextPrompt: "💊 약국 — 저녁",
    sophieClueEnglishIntent: "Say you have a headache",
    sophiePhoneticHint: "meo-ri-ga a-pa-yo",
    targetLanguageAnchor: "머리가 아파요",
    slotOptions: ["머리가 아파요", "배가 아파요", "목이 아파요", "허리가 아파요"],
    npcAudioResponseTranscript: "언제부터요? 열도 있으세요?",
    graffitiStyleTag: "White '약국' green cross tag",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Symptom: fever ───────────────────
  Scenario(
    scenarioId: "KO_M07_S02",
    missionId: 7,
    environmentContext:
        "She asked about fever. Yes — 38.1°. "
        "Hot and cold since this afternoon.",
    introFlag: false,
    environmentalTextPrompt: "🌡️ 열이 있어요",
    sophieClueEnglishIntent: "Say you have a fever",
    sophiePhoneticHint: "yeo-ri i-sseo-yo",
    targetLanguageAnchor: "열이 있어요",
    slotOptions: ["열이 있어요", "오한이 있어요", "메스꺼워요", "어지러워요"],
    npcAudioResponseTranscript: "38도 1분이요. 해열제 드릴게요.",
    graffitiStyleTag: "Red '38.1°C' thermometer tag — clinical",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_02 Rep 5 — Request specific medicine ─────────
  Scenario(
    scenarioId: "KO_M07_S03",
    missionId: 7,
    environmentContext:
        "You know what you usually take. "
        "You ask for the Korean equivalent.",
    introFlag: false,
    environmentalTextPrompt: "💊 ~주세요",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "[X] ju-se-yo",
    targetLanguageAnchor: "[X] 주세요",
    slotOptions: ["이부프로펜", "타이레놀", "항히스타민제", "기침 시럽"],
    npcAudioResponseTranscript: "네, 같은 성분이에요. 이게 더 잘 들어요.",
    graffitiStyleTag: "Blue '해열제' pill tag — blister pack",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_04 Rep 4 — Ask how much it costs ─────────────
  Scenario(
    scenarioId: "KO_M07_S04",
    missionId: 7,
    environmentContext:
        "She places two boxes on the counter. "
        "No insurance cover for tourists at pharmacies. "
        "You want the cost first.",
    introFlag: false,
    environmentalTextPrompt: "💴 얼마예요?",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "eol-ma-ye-yo",
    targetLanguageAnchor: "얼마예요?",
    slotOptions: ["얼마예요?", "다 해서 얼마예요?", "더 싼 거 있어요?"],
    npcAudioResponseTranscript: "이부프로펜이 4,500원, 시럽이 6,800원이에요.",
    graffitiStyleTag: "Orange '가격' cost tag — pharmacy receipt",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_10 Rep 3 — Ask how often to take it ──────────
  Scenario(
    scenarioId: "KO_M07_S05",
    missionId: 7,
    environmentContext:
        "She's putting it in a bag. "
        "You need the dosage instructions. "
        "How many times a day?",
    introFlag: false,
    environmentalTextPrompt: "🕐 하루에 몇 번 먹어요?",
    sophieClueEnglishIntent: "Ask how many times a day to take it",
    sophiePhoneticHint: "ha-ru-e myeot beon meo-geo-yo",
    targetLanguageAnchor: "하루에 몇 번 먹어요?",
    slotOptions: ["하루에 몇 번?", "몇 시간마다?", "몇 알이에요?"],
    npcAudioResponseTranscript: "하루에 세 번, 식후에 드세요.",
    graffitiStyleTag: "Purple '하루 3번' dosage tag — prescription",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_11 Rep 4 — Allergy declaration ───────────────
  Scenario(
    scenarioId: "KO_M07_S06",
    missionId: 7,
    environmentContext:
        "She mentioned aspirin. "
        "You're allergic. Flag it immediately.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ 아스피린 알레르기가 있어요",
    sophieClueEnglishIntent: "Say you are allergic to aspirin",
    sophiePhoneticHint: "a-seu-pi-rin al-le-reu-gi-ga i-sseo-yo",
    targetLanguageAnchor: "아스피린 알레르기가 있어요",
    slotOptions: ["아스피린 알레르기", "페니실린 알레르기", "달걀 알레르기"],
    npcAudioResponseTranscript: "알겠어요. 아스피린 없는 걸로 드릴게요.",
    graffitiStyleTag: "Red '⚠ 알레르기' warning tag",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_06 Rep 6 — Ask if they have sunscreen ────────
  Scenario(
    scenarioId: "KO_M07_S07",
    missionId: 7,
    environmentContext:
        "While here — Korean sunscreens are world-famous. "
        "The Seoul summer sun caught you off guard. "
        "Time to invest in some K-beauty SPF.",
    introFlag: true,
    environmentalTextPrompt: "☀️ 선크림 있어요?",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "seon-keu-rim i-sseo-yo",
    targetLanguageAnchor: "선크림 있어요?",
    slotOptions: ["선크림", "자외선 차단제", "SPF50 있어요?"],
    npcAudioResponseTranscript: "네, 이쪽에 있어요. 아이소이가 잘 팔려요!",
    graffitiStyleTag: "Yellow 'SPF50 ☀ K-뷰티' sun tag",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_08 Rep 4 — DRILL: hand over prescription ─────
  Scenario(
    scenarioId: "KO_M07_S08",
    missionId: 7,
    environmentContext:
        "A clinic visit. The doctor gave you a 처방전. "
        "You present it at the pharmacy counter.",
    introFlag: true,
    environmentalTextPrompt: "📋 처방전 있어요",
    sophieClueEnglishIntent: "Hand over your prescription",
    sophiePhoneticHint: "yeo-gi i-sseum-ni-da, cheo-bang-jeon-i-e-yo",
    targetLanguageAnchor: "여기 있습니다, 처방전이에요",
    slotOptions: ["처방전이에요", "의사 선생님이 주셨어요", "여기요"],
    npcAudioResponseTranscript: "네, 잠깐만요. 조제해 드릴게요.",
    graffitiStyleTag: "Green '처방전 ✓' medical stamp",
    npcName: "약사",
    npcAvatarEmoji: "👨‍⚕️",
  ),

  // ── S9: PAT_15 Rep 5 — Repair: before or after meals? ────
  Scenario(
    scenarioId: "KO_M07_S09",
    missionId: 7,
    environmentContext:
        "She said something about 식사 quickly. "
        "Before or after meals? Critical to get right.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ 식전이에요, 식후예요?",
    sophieClueEnglishIntent: "Ask if it's before or after meals",
    sophiePhoneticHint: "si-jeon-i-e-yo si-ghu-ye-yo",
    targetLanguageAnchor: "식전이에요, 식후예요?",
    slotOptions: ["식전이에요?", "식후예요?", "식사랑 같이요?"],
    npcAudioResponseTranscript: "식후에요. 밥 먹고 30분 안에 드세요.",
    graffitiStyleTag: "White '식전/식후?' clarification bubble",
    npcName: "약사",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_12 Rep 6 — Next day: feeling better ─────────
  Scenario(
    scenarioId: "KO_M07_S10",
    missionId: 7,
    environmentContext:
        "Next morning. Same pharmacy — a different pharmacist. "
        "He asks how you're feeling today.",
    introFlag: false,
    environmentalTextPrompt: "😊 나아졌어요",
    sophieClueEnglishIntent: "Say you feel better now thank you",
    sophiePhoneticHint: "na-a-jyeo-sseo-yo gam-sa-ham-ni-da",
    targetLanguageAnchor: "나아졌어요, 감사합니다!",
    slotOptions: ["나아졌어요", "많이 좋아졌어요", "덕분에 나았어요"],
    npcAudioResponseTranscript: "다행이에요! 서울 남은 여행 즐겁게 하세요!",
    graffitiStyleTag: "GOLD '미션 완료' — 서울 약국 stamp",
    npcName: "약사",
    npcAvatarEmoji: "👨‍⚕️",
  ),
];
