// lib/data/scenarios/korean/korean_m03_scenarios.dart
//
// MISSION 3: 택시 — THE TAXI — 10 SCENARIOS
// ============================================
// Location: Seoul taxi — Incheon / Hongdae / Myeongdong
// Type: DIRECTION + TRANSACTION — polite -어요 form
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2), PAT_16(R4)
// Key forms: ~로 가 주세요, 직진해 주세요, 왼쪽/오른쪽으로,
//   카드 돼요, 얼마예요, 비싸요, 영수증 주세요,
//   이해했어요, 여기서 세워 주세요, 감사합니다

import '../../../models/models.dart';

const List<Scenario> koreanM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Direction: tell driver destination
  Scenario(
    scenarioId: "KO_M03_S01",
    missionId: 3,
    environmentContext:
        "A Seoul taxi — orange and black, or silver. "
        "The driver glances in the rearview mirror. "
        "Destination?",
    introFlag: true,
    environmentalTextPrompt: "🚕 택시 — 어디 가세요?",
    sophieClueEnglishIntent: "Tell the driver where you want to go",
    sophiePhoneticHint: "[X]-ro ga ju-se-yo",
    targetLanguageAnchor: "[X]로 가 주세요",
    slotOptions: ["홍대", "명동", "강남역", "경복궁"],
    npcAudioResponseTranscript: "네, 알겠습니다. 조금 막힐 수도 있어요.",
    graffitiStyleTag: "Orange '택시' bold Seoul cab tag",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S2: PAT_14 Rep 2 — Direction: go straight ───────────
  Scenario(
    scenarioId: "KO_M03_S02",
    missionId: 3,
    environmentContext:
        "The driver is about to turn. Your map shows "
        "straight ahead is clearly faster. "
        "Politely correct him.",
    introFlag: true,
    environmentalTextPrompt: "📍 직진해 주세요",
    sophieClueEnglishIntent: "Tell the driver to go straight",
    sophiePhoneticHint: "jik-jin-hae ju-se-yo",
    targetLanguageAnchor: "직진해 주세요",
    slotOptions: ["직진해 주세요", "이 길로 가 주세요", "돌지 마세요"],
    npcAudioResponseTranscript: "아, 네. 이쪽으로 가겠습니다.",
    graffitiStyleTag: "Blue '→ 직진' road marking tag",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S3: PAT_14 Rep 3 — Direction: turn left ─────────────
  Scenario(
    scenarioId: "KO_M03_S03",
    missionId: 3,
    environmentContext:
        "Almost there. Your guesthouse is down "
        "a narrow alley to the left. "
        "Easy to miss.",
    introFlag: false,
    environmentalTextPrompt: "↙️ 왼쪽으로 가 주세요",
    sophieClueEnglishIntent: "Tell the driver to turn left",
    sophiePhoneticHint: "oen-jjok-eu-ro ga ju-se-yo",
    targetLanguageAnchor: "왼쪽으로 가 주세요",
    slotOptions: ["왼쪽으로", "오른쪽으로", "다음 골목으로"],
    npcAudioResponseTranscript: "네, 왼쪽이요. 다 왔네요.",
    graffitiStyleTag: "White '↙ 왼쪽' chalk arrow — pavement",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S4: PAT_06 Rep 2 — Ask if card payment accepted ─────
  Scenario(
    scenarioId: "KO_M03_S04",
    missionId: 3,
    environmentContext:
        "Arrived. Meter reads ₩18,400. "
        "You haven't got won yet — only a card. "
        "Korean taxis generally accept cards but confirm.",
    introFlag: true,
    environmentalTextPrompt: "💳 카드 돼요?",
    sophieClueEnglishIntent: "Ask if card payment is OK",
    sophiePhoneticHint: "ka-deu dwae-yo",
    targetLanguageAnchor: "카드 돼요?",
    slotOptions: ["카드 돼요?", "신용카드 써요?", "카드로 내도 돼요?"],
    npcAudioResponseTranscript: "네, 카드 됩니다. 꽂아 주세요.",
    graffitiStyleTag: "Green '카드 ✓' payment accepted tag",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S5: PAT_04 Rep 1 — Price: how much ──────────────────
  Scenario(
    scenarioId: "KO_M03_S05",
    missionId: 3,
    environmentContext:
        "A traditional rickshaw near Gyeongbokgung Palace. "
        "Charming, photo-worthy. But before you get in, "
        "you need the price.",
    introFlag: true,
    environmentalTextPrompt: "🛺 인력거 — 경복궁 앞",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "eol-ma-ye-yo",
    targetLanguageAnchor: "얼마예요?",
    slotOptions: ["얼마예요?", "가격이 어떻게 돼요?", "얼마 해요?"],
    npcAudioResponseTranscript: "30분 코스에 15,000원이에요!",
    graffitiStyleTag: "Orange '가격?' question tag — market style",
    npcName: "인력거꾼",
    npcAvatarEmoji: "🛺",
  ),

  // ── S6: PAT_11 Rep 1 — Too expensive ────────────────────
  Scenario(
    scenarioId: "KO_M03_S06",
    missionId: 3,
    environmentContext:
        "15,000 won per person. Two of you. 30,000 won. "
        "Worth a polite try — this is Korea, "
        "gentle negotiation is acceptable.",
    introFlag: false,
    environmentalTextPrompt: "💸 비싸요 — 깎아 주세요?",
    sophieClueEnglishIntent: "Say it's expensive and ask for a discount",
    sophiePhoneticHint: "bi-ssa-yo, kka-kka ju-se-yo",
    targetLanguageAnchor: "비싸요. 깎아 주세요",
    slotOptions: ["깎아 주세요", "할인 돼요?", "좀 싸게 해 주세요"],
    npcAudioResponseTranscript: "흠... 두 분이시니까 25,000원에 해 드릴게요!",
    graffitiStyleTag: "Red '비싸요!' price splatter tag",
    npcName: "인력거꾼",
    npcAvatarEmoji: "🛺",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: ask for receipt ───────────
  Scenario(
    scenarioId: "KO_M03_S07",
    missionId: 3,
    environmentContext:
        "Ride done. Gyeongbokgung at sunset from a rickshaw — "
        "unforgettable. You need the receipt.",
    introFlag: false,
    environmentalTextPrompt: "🧾 영수증 주세요",
    sophieClueEnglishIntent: "Ask for a receipt please",
    sophiePhoneticHint: "yeong-su-jeung ju-se-yo",
    targetLanguageAnchor: "영수증 주세요",
    slotOptions: ["영수증 주세요", "영수증 끊어 주세요", "영수증 받을 수 있어요?"],
    npcAudioResponseTranscript: "네, 여기요. 또 이용해 주세요!",
    graffitiStyleTag: "Grey '영수증' receipt tear-off tag",
    npcName: "인력거꾼",
    npcAvatarEmoji: "🛺",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: confirm address ──────────
  Scenario(
    scenarioId: "KO_M03_S08",
    missionId: 3,
    environmentContext:
        "Back in a taxi. You gave the guesthouse name "
        "but the driver repeated something slightly different. "
        "You need to check.",
    introFlag: true,
    environmentalTextPrompt: "😕 제 말 이해하셨어요?",
    sophieClueEnglishIntent: "Ask if they understood you",
    sophiePhoneticHint: "je mal i-hae-ha-syeo-sseo-yo",
    targetLanguageAnchor: "제 말 이해하셨어요?",
    slotOptions: ["이해하셨어요?", "맞아요?", "제대로 들으셨어요?"],
    npcAudioResponseTranscript: "홍대 게스트하우스요? 맞죠?",
    graffitiStyleTag: "White '확인' confirmation bubble — chalk",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S9: PAT_12 Rep 2 — Stop here ────────────────────────
  Scenario(
    scenarioId: "KO_M03_S09",
    missionId: 3,
    environmentContext:
        "You can see your guesthouse sign. "
        "The driver is about to overshoot. "
        "Say it now.",
    introFlag: false,
    environmentalTextPrompt: "🛑 여기서 세워 주세요!",
    sophieClueEnglishIntent: "Tell the driver to stop here",
    sophiePhoneticHint: "yeo-gi-seo se-wo ju-se-yo",
    targetLanguageAnchor: "여기서 세워 주세요",
    slotOptions: ["여기서 세워 주세요", "여기요!", "잠깐만요!"],
    npcAudioResponseTranscript: "네, 알겠습니다!",
    graffitiStyleTag: "Red '정지 ✋' stop sign tag — road style",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),

  // ── S10: PAT_16 Rep 4 — Farewell: thank the driver ──────
  Scenario(
    scenarioId: "KO_M03_S10",
    missionId: 3,
    environmentContext:
        "Out on the pavement. Seoul night — "
        "neon, the smell of tteokbokki, K-pop "
        "drifting from a shopfront. Perfect.",
    introFlag: false,
    environmentalTextPrompt: "🌆 서울 — 숙소 도착",
    sophieClueEnglishIntent: "Thank the driver warmly",
    sophiePhoneticHint: "gam-sa-ham-ni-da, ssu-go-ha-syeo-sseo-yo",
    targetLanguageAnchor: "감사합니다, 수고하셨어요!",
    slotOptions: ["감사합니다", "고마워요", "수고하셨어요"],
    npcAudioResponseTranscript: "감사합니다! 서울 즐기세요!",
    graffitiStyleTag: "GOLD '미션 완료' — 서울 택시 stamp",
    npcName: "택시기사",
    npcAvatarEmoji: "🚖",
  ),
];
