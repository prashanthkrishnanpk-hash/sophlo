// lib/data/scenarios/korean/korean_m05_scenarios.dart
//
// MISSION 5: 카페 & 길거리 음식 — CAFÉ & STREET FOOD — 10 SCENARIOS
// ===================================================================
// Location: Édiya Coffee Hongdae / Myeongdong Street Food stalls
// Type: FOOD + SOCIAL — the daily rhythm of Seoul
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Key forms: 자리 있어요, ~주세요, ~주세요 (drill), 계산해 주세요,
//   얼마예요, ~해 주세요, 채식주의자예요, 포장해 주세요,
//   어디 출신이에요, 또 봐요

import '../../../models/models.dart';

const List<Scenario> koreanM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Ask if this seat is free ─────────
  Scenario(
    scenarioId: "KO_M05_S01",
    missionId: 5,
    environmentContext:
        "Édiya Coffee, Hongdae. Packed. "
        "A girl with AirPods and a laptop — "
        "one spare chair at her table.",
    introFlag: true,
    environmentalTextPrompt: "☕ 카페 — 자리 있어요?",
    sophieClueEnglishIntent: "Ask if this seat is free",
    sophiePhoneticHint: "i ja-ri i-sseo-yo",
    targetLanguageAnchor: "이 자리 있어요?",
    slotOptions: ["이 자리 있어요?", "여기 앉아도 돼요?", "자리 비었어요?"],
    npcAudioResponseTranscript: "네, 앉으세요!",
    graffitiStyleTag: "Yellow '자리 있음' open seat tag — café style",
    npcName: "대학생",
    npcAvatarEmoji: "💻",
  ),

  // ── S2: PAT_02 Rep 3 — Order coffee ─────────────────────
  Scenario(
    scenarioId: "KO_M05_S02",
    missionId: 5,
    environmentContext:
        "At the counter. The menu is huge — "
        "Koreans take their café orders seriously. "
        "You keep it simple.",
    introFlag: true,
    environmentalTextPrompt: "☕ 카운터 — 주문하기",
    sophieClueEnglishIntent: "Order an Americano please",
    sophiePhoneticHint: "a-me-ri-ka-no ju-se-yo",
    targetLanguageAnchor: "아메리카노 주세요",
    slotOptions: ["아메리카노", "카페라테", "아이스 아메리카노", "녹차라테"],
    npcAudioResponseTranscript: "아이스로 드릴까요, 따뜻하게 드릴까요?",
    graffitiStyleTag: "Brown '아메리카노' barista tag — ceramic",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — DRILL: order a food item ─────────
  Scenario(
    scenarioId: "KO_M05_S03",
    missionId: 5,
    environmentContext:
        "The display case has an egg tart "
        "that looks incredible. "
        "You point and ask.",
    introFlag: false,
    environmentalTextPrompt: "🥐 이거 주세요",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "[X] ju-se-yo",
    targetLanguageAnchor: "[X] 주세요",
    slotOptions: ["에그타르트", "크루아상", "치즈케이크", "마카롱"],
    npcAudioResponseTranscript: "네, 오늘 아침에 만든 거예요!",
    graffitiStyleTag: "Orange '이거!' pointing tag — bakery",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Ask for the bill ─────────────────
  Scenario(
    scenarioId: "KO_M05_S04",
    missionId: 5,
    environmentContext:
        "Coffee done. You have a tour in 20 minutes. "
        "In Korea you usually pay at the counter "
        "but you flag the staff.",
    introFlag: false,
    environmentalTextPrompt: "🧾 계산해 주세요",
    sophieClueEnglishIntent: "Ask to pay / for the bill",
    sophiePhoneticHint: "gye-san-hae ju-se-yo",
    targetLanguageAnchor: "계산해 주세요",
    slotOptions: ["계산해 주세요", "얼마예요?", "카드로 낼게요"],
    npcAudioResponseTranscript: "네, 6,500원이에요.",
    graffitiStyleTag: "Grey '계산' receipt tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Ask price at street stall ─────────
  Scenario(
    scenarioId: "KO_M05_S05",
    missionId: 5,
    environmentContext:
        "Myeongdong street food alley. "
        "A tteokbokki stall — spicy rice cakes bubbling "
        "in a giant red pot. No price sign.",
    introFlag: true,
    environmentalTextPrompt: "🌶️ 명동 — 떡볶이 얼마예요?",
    sophieClueEnglishIntent: "Ask how much the tteokbokki costs",
    sophiePhoneticHint: "tteok-bok-ki eol-ma-ye-yo",
    targetLanguageAnchor: "떡볶이 얼마예요?",
    slotOptions: ["얼마예요?", "가격이 어떻게 돼요?", "이거 얼마예요?"],
    npcAudioResponseTranscript: "3,000원이에요. 맵지만 맛있어요!",
    graffitiStyleTag: "Red '떡볶이 ₩3,000' price tag — street food",
    npcName: "아주머니",
    npcAvatarEmoji: "🌶️",
  ),

  // ── S6: PAT_13 Rep 2 — Ask for more napkins ─────────────
  Scenario(
    scenarioId: "KO_M05_S06",
    missionId: 5,
    environmentContext:
        "The tteokbokki is incredible. Also extremely messy. "
        "The napkin dispenser is empty. "
        "You need more.",
    introFlag: false,
    environmentalTextPrompt: "🧻 휴지 더 주세요",
    sophieClueEnglishIntent: "Ask for more napkins please",
    sophiePhoneticHint: "hyu-ji deo ju-se-yo",
    targetLanguageAnchor: "휴지 더 주세요",
    slotOptions: ["휴지 더", "물티슈", "젓가락", "포크"],
    npcAudioResponseTranscript: "여기요! 더 드릴까요?",
    graffitiStyleTag: "Tan '휴지 +1' request tag — street stall",
    npcName: "아주머니",
    npcAvatarEmoji: "🌶️",
  ),

  // ── S7: PAT_11 Rep 2 — Dietary: no meat ─────────────────
  Scenario(
    scenarioId: "KO_M05_S07",
    missionId: 5,
    environmentContext:
        "A ramyeon shop near Insadong. "
        "Korean broths are often meat-based. "
        "You need to flag this before ordering.",
    introFlag: true,
    environmentalTextPrompt: "🍜 채식주의자예요",
    sophieClueEnglishIntent: "Say you are vegetarian",
    sophiePhoneticHint: "chae-sik-ju-ui-ja-ye-yo",
    targetLanguageAnchor: "채식주의자예요",
    slotOptions: ["채식주의자예요", "고기 안 먹어요", "비건이에요"],
    npcAudioResponseTranscript: "아, 그러면 버섯 라면이 있어요. 육수는 채소예요.",
    graffitiStyleTag: "Green '채식 ✓' dietary tag",
    npcName: "주인",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Order takeaway ───────────────────
  Scenario(
    scenarioId: "KO_M05_S08",
    missionId: 5,
    environmentContext:
        "A hotteok stall near Gyeongbokgung. "
        "Sweet pancakes with cinnamon and nuts. "
        "You want to eat walking.",
    introFlag: true,
    environmentalTextPrompt: "🥞 포장해 주세요",
    sophieClueEnglishIntent: "Order [X] to take away",
    sophiePhoneticHint: "[X] po-jang-hae ju-se-yo",
    targetLanguageAnchor: "[X] 포장해 주세요",
    slotOptions: ["호떡", "붕어빵", "계란빵", "오징어구이"],
    npcAudioResponseTranscript: "네! 봉투에 담아 드릴게요.",
    graffitiStyleTag: "Pink '포장' takeaway tag — street food",
    npcName: "노점상",
    npcAvatarEmoji: "🥞",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: ask where they're from ────
  Scenario(
    scenarioId: "KO_M05_S09",
    missionId: 5,
    environmentContext:
        "The hotteok vendor has started chatting. "
        "She's not from Seoul — you can tell. "
        "You ask where she's from.",
    introFlag: false,
    environmentalTextPrompt: "🌍 어디 출신이에요?",
    sophieClueEnglishIntent: "Ask where she is from",
    sophiePhoneticHint: "eo-di chul-sin-i-e-yo",
    targetLanguageAnchor: "어디 출신이에요?",
    slotOptions: ["어디 출신이에요?", "어디서 오셨어요?", "서울 분이세요?"],
    npcAudioResponseTranscript: "부산이에요! 서울 온 지 5년 됐어요.",
    graffitiStyleTag: "Orange '부산 → 서울' origin tag — travel sticker",
    npcName: "노점상",
    npcAvatarEmoji: "🥞",
  ),

  // ── S10: PAT_16 Rep 5 — Warm social farewell ────────────
  Scenario(
    scenarioId: "KO_M05_S10",
    missionId: 5,
    environmentContext:
        "Five minutes of hotteok and chat. "
        "A queue forming. Time to go — "
        "warm Korean goodbye.",
    introFlag: false,
    environmentalTextPrompt: "👋 또 봐요 — 안녕히 계세요",
    sophieClueEnglishIntent: "Say it was nice and goodbye",
    sophiePhoneticHint: "jal-deul-e-sseo-yo, tto bwa-yo",
    targetLanguageAnchor: "잘 들었어요, 또 봐요!",
    slotOptions: ["또 봐요!", "안녕히 계세요!", "다음에 또 올게요!"],
    npcAudioResponseTranscript: "또 와요! 서울 즐겁게 구경하세요!",
    graffitiStyleTag: "GOLD '미션 완료' — 명동 카페 stamp",
    npcName: "노점상",
    npcAvatarEmoji: "🥞",
  ),
];
