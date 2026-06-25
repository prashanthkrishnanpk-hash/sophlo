// lib/data/scenarios/korean/korean_m06_scenarios.dart
//
// MISSION 6: 시장 — MARKET — 10 SCENARIOS
// ==========================================
// Location: Namdaemun Market / Dongdaemun Design Plaza area
// Type: COMMERCE + NEGOTIATION — Korean market culture (흥정)
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Key forms: 얼마예요, ~주세요, 포장해 주세요, 비싸요/깎아주세요,
//   이쪽으로, 여기 있어요, 다시 말씀해 주세요, 선물로,
//   ~이/가 있어요, 봉투 주세요

import '../../../models/models.dart';

const List<Scenario> koreanM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question ───────────────────
  Scenario(
    scenarioId: "KO_M06_S01",
    missionId: 6,
    environmentContext:
        "남대문시장. Namdaemun Market — labyrinthine, "
        "loud, electrifying. A dried seafood stall. "
        "Rows of golden dried squid. No price visible.",
    introFlag: true,
    environmentalTextPrompt: "🦑 남대문시장 — 이거 얼마예요?",
    sophieClueEnglishIntent: "Ask how much this costs",
    sophiePhoneticHint: "i-geo eol-ma-ye-yo",
    targetLanguageAnchor: "이거 얼마예요?",
    slotOptions: ["이거 얼마예요?", "가격이 어떻게 돼요?", "얼마 해요?"],
    npcAudioResponseTranscript: "오징어요? 한 봉에 5,000원이에요.",
    graffitiStyleTag: "Orange '₩5,000' market price tag",
    npcName: "상인",
    npcAvatarEmoji: "🦑",
  ),

  // ── S2: PAT_02 Rep 4 — Order: two bags ──────────────────
  Scenario(
    scenarioId: "KO_M06_S02",
    missionId: 6,
    environmentContext:
        "Good price. You want two bags — "
        "one for now, one as an 선물 (gift).",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 두 봉 주세요",
    sophieClueEnglishIntent: "Ask for two bags of it",
    sophiePhoneticHint: "du bong ju-se-yo",
    targetLanguageAnchor: "두 봉 주세요",
    slotOptions: ["두 봉 주세요", "한 봉 주세요", "세 봉 주세요"],
    npcAudioResponseTranscript: "네! 10,000원이에요. 맛있게 드세요!",
    graffitiStyleTag: "Green '두 봉 ✓' count tag — market",
    npcName: "상인",
    npcAvatarEmoji: "🦑",
  ),

  // ── S3: PAT_13 Rep 3 — Request: gift wrap it ─────────────
  Scenario(
    scenarioId: "KO_M06_S03",
    missionId: 6,
    environmentContext:
        "동대문 design complex. A ceramics stall — "
        "beautiful celadon pottery. You found a small "
        "bowl but need it wrapped carefully.",
    introFlag: true,
    environmentalTextPrompt: "🏺 포장해 주세요",
    sophieClueEnglishIntent: "Ask if they can wrap it for you",
    sophiePhoneticHint: "po-jang-hae ju-se-yo",
    targetLanguageAnchor: "포장해 주세요",
    slotOptions: ["포장해 주세요", "선물 포장해 주세요", "안전하게 싸 주세요"],
    npcAudioResponseTranscript: "네, 버블랩으로 감아 드릴게요.",
    graffitiStyleTag: "Teal '포장 ⚠' fragile wrap tag",
    npcName: "도예가",
    npcAvatarEmoji: "🏺",
  ),

  // ── S4: PAT_11 Rep 3 — Negotiate: too expensive ──────────
  Scenario(
    scenarioId: "KO_M06_S04",
    missionId: 6,
    environmentContext:
        "The bowl is ₩35,000. Beautiful but steep. "
        "Korean markets expect 흥정 — negotiation. "
        "It's part of the culture here.",
    introFlag: false,
    environmentalTextPrompt: "💸 비싸요 — 깎아 주세요",
    sophieClueEnglishIntent: "Say it's expensive and ask for a discount",
    sophiePhoneticHint: "bi-ssa-yo, kkak-kka ju-se-yo",
    targetLanguageAnchor: "비싸요, 깎아 주세요",
    slotOptions: ["깎아 주세요", "좀 싸게 해 주세요", "할인 돼요?"],
    npcAudioResponseTranscript: "흠... 30,000원에 드릴게요. 이 가격엔 못 해요.",
    graffitiStyleTag: "Red '흥정!' negotiation tag — market",
    npcName: "도예가",
    npcAvatarEmoji: "🏺",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: ask for directions ─────────
  Scenario(
    scenarioId: "KO_M06_S05",
    missionId: 6,
    environmentContext:
        "Lost in the market's endless corridors. "
        "The food stalls should be nearby — "
        "you can smell them but can't find them.",
    introFlag: true,
    environmentalTextPrompt: "🧭 이쪽으로 가면 돼요?",
    sophieClueEnglishIntent: "Ask if you should go this way",
    sophiePhoneticHint: "i-jjok-eu-ro ga-myeon dwae-yo",
    targetLanguageAnchor: "이쪽으로 가면 돼요?",
    slotOptions: ["이쪽으로요?", "저쪽으로요?", "직진이요?"],
    npcAudioResponseTranscript: "아니요, 저쪽이에요. 냄새 맡으면 알아요!",
    graffitiStyleTag: "White '이쪽?' direction tag — market alley",
    npcName: "상인 아저씨",
    npcAvatarEmoji: "👴",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: hand over cash ─────────────
  Scenario(
    scenarioId: "KO_M06_S06",
    missionId: 6,
    environmentContext:
        "You agreed on ₩30,000. Cash only at this stall. "
        "You hand over three 10,000-won notes — "
        "with two hands.",
    introFlag: false,
    environmentalTextPrompt: "💵 현금으로 드릴게요",
    sophieClueEnglishIntent: "Hand over the money",
    sophiePhoneticHint: "yeo-gi i-sseum-ni-da",
    targetLanguageAnchor: "여기 있습니다",
    slotOptions: ["여기 있습니다", "여기요", "드릴게요"],
    npcAudioResponseTranscript: "감사합니다! 잘 쓰세요.",
    graffitiStyleTag: "Gold '결제 완료 ✓' cash stamp",
    npcName: "도예가",
    npcAvatarEmoji: "🏺",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: didn't catch the price ───
  Scenario(
    scenarioId: "KO_M06_S07",
    missionId: 6,
    environmentContext:
        "A kimchi stall. The vendor named the price quickly "
        "while ladling. Was it 8,000 or 18,000? "
        "You need her to repeat.",
    introFlag: true,
    environmentalTextPrompt: "🥬 얼마라고 하셨어요?",
    sophieClueEnglishIntent: "Ask how much she said",
    sophiePhoneticHint: "eol-ma-ra-go ha-syeo-sseo-yo",
    targetLanguageAnchor: "얼마라고 하셨어요?",
    slotOptions: ["얼마라고 하셨어요?", "다시 말씀해 주세요", "못 들었어요"],
    npcAudioResponseTranscript: "8,000원이요. 팔천 원. 맵게 담갔어요.",
    graffitiStyleTag: "White '다시요?' repeat request bubble",
    npcName: "김치 아주머니",
    npcAvatarEmoji: "🥬",
  ),

  // ── S8: PAT_09 Rep 3 — Ask for something as a gift ───────
  Scenario(
    scenarioId: "KO_M06_S08",
    missionId: 6,
    environmentContext:
        "You want to bring home 선물 — gifts. "
        "Korean gift culture is important. "
        "You ask a stall owner for ideas.",
    introFlag: true,
    environmentalTextPrompt: "🎁 선물 찾고 있어요",
    sophieClueEnglishIntent: "Say you are looking for a gift",
    sophiePhoneticHint: "seon-mul chan-go i-sseo-yo",
    targetLanguageAnchor: "선물 찾고 있어요",
    slotOptions: ["선물 찾고 있어요", "선물 살 거예요", "한국 특산물 있어요?"],
    npcAudioResponseTranscript: "남자분이에요 여자분이에요? 예산이 어떻게 되세요?",
    graffitiStyleTag: "Pink '선물 🎁' gift tag — silk ribbon",
    npcName: "기념품 상인",
    npcAvatarEmoji: "🎁",
  ),

  // ── S9: PAT_06 Rep 5 — Ask if they have smaller size ─────
  Scenario(
    scenarioId: "KO_M06_S09",
    missionId: 6,
    environmentContext:
        "A hanji (Korean paper) fan stall. "
        "Beautiful design but only large ones on display. "
        "Maybe a smaller one exists.",
    introFlag: false,
    environmentalTextPrompt: "🪭 더 작은 거 있어요?",
    sophieClueEnglishIntent: "Ask if they have a smaller one",
    sophiePhoneticHint: "deo ja-geun geo i-sseo-yo",
    targetLanguageAnchor: "더 작은 거 있어요?",
    slotOptions: ["더 작은 거", "다른 색깔", "다른 디자인", "미니 사이즈"],
    npcAudioResponseTranscript: "네, 여기 작은 거 있어요. 이게 더 예뻐요!",
    graffitiStyleTag: "Celadon '더 작은 거?' size tag — Hanji",
    npcName: "부채 상인",
    npcAvatarEmoji: "🪭",
  ),

  // ── S10: PAT_01 Rep 6 — DRILL: ask for a bag ─────────────
  Scenario(
    scenarioId: "KO_M06_S10",
    missionId: 6,
    environmentContext:
        "Arms full — dried squid, celadon bowl, "
        "hanji fan, kimchi. You need a bag.",
    introFlag: false,
    environmentalTextPrompt: "🛍️ 봉투 주세요",
    sophieClueEnglishIntent: "Ask for a bag please",
    sophiePhoneticHint: "bong-tu ju-se-yo",
    targetLanguageAnchor: "봉투 주세요",
    slotOptions: ["봉투 주세요", "큰 봉투 주세요", "쇼핑백 있어요?"],
    npcAudioResponseTranscript: "여기요! 두 개 드릴게요. 또 오세요!",
    graffitiStyleTag: "GOLD '미션 완료' — 남대문시장 stamp",
    npcName: "상인",
    npcAvatarEmoji: "🦑",
  ),
];
