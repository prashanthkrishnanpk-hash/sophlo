// lib/data/scenarios/korean/korean_m08_scenarios.dart
//
// MISSION 8: 식당 — RESTAURANT — 10 SCENARIOS
// ==============================================
// Location: Korean BBQ restaurant Mapo-gu / Pojangmacha street tent, Seoul
// Type: FULL MEAL + PEAK SOCIAL FLUENCY
// Pattern coverage:
//   PAT_02(R6), PAT_06(R7), PAT_13(R4), PAT_04(R5), PAT_11(R5),
//   PAT_16(R6), PAT_10(R4), PAT_01(R7-DRILL), PAT_09(R4), PAT_12(R7)
// Key forms: 예약했어요, 자리 있어요, ~주세요, 얼마예요,
//   ~없이, 건배!, 몇 시까지, ~주세요(drill), 따로따로,
//   너무 맛있었어요

import '../../../models/models.dart';

const List<Scenario> koreanM08Scenarios = [

  // ── S1: PAT_02 Rep 6 — Claim dinner reservation ──────────
  Scenario(
    scenarioId: "KO_M08_S01",
    missionId: 8,
    environmentContext:
        "A Korean BBQ restaurant in Mapo-gu. "
        "Smoke rising from charcoal grills, "
        "the sizzle of pork belly, the smell of sesame. "
        "The host looks up.",
    introFlag: true,
    environmentalTextPrompt: "🥩 고깃집 — 예약했어요",
    sophieClueEnglishIntent: "Say you have a reservation for two",
    sophiePhoneticHint: "du myeong yeo-yak-haess-eo-yo",
    targetLanguageAnchor: "두 명 예약했어요",
    slotOptions: ["두 명", "세 명", "네 명"],
    npcAudioResponseTranscript: "어서 오세요! 성함이 어떻게 되세요?",
    graffitiStyleTag: "Red '예약 두 명' BBQ table tag",
    npcName: "사장님",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S2: PAT_06 Rep 7 — Ask for outdoor seating ───────────
  Scenario(
    scenarioId: "KO_M08_S02",
    missionId: 8,
    environmentContext:
        "Warm Seoul evening. You'd prefer "
        "the outdoor pojangmacha-style terrace if there's space.",
    introFlag: false,
    environmentalTextPrompt: "🌙 야외 자리 있어요?",
    sophieClueEnglishIntent: "Ask if there is outdoor seating",
    sophiePhoneticHint: "ya-oe ja-ri i-sseo-yo",
    targetLanguageAnchor: "야외 자리 있어요?",
    slotOptions: ["야외 자리", "테라스 자리", "창가 자리", "룸"],
    npcAudioResponseTranscript: "네, 딱 하나 남았어요. 이쪽으로 오세요!",
    graffitiStyleTag: "Yellow '야외 자리 ✓' outdoor tag",
    npcName: "사장님",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S3: PAT_13 Rep 4 — Request: banchan refill ───────────
  Scenario(
    scenarioId: "KO_M08_S03",
    missionId: 4,
    environmentContext:
        "Seated. The 반찬 (side dishes) arrive. "
        "The kimchi is outstanding. You've already finished it. "
        "In Korea, banchan refills are free — just ask.",
    introFlag: false,
    environmentalTextPrompt: "🥬 김치 더 주세요",
    sophieClueEnglishIntent: "Ask for more kimchi please",
    sophiePhoneticHint: "gim-chi deo ju-se-yo",
    targetLanguageAnchor: "김치 더 주세요",
    slotOptions: ["김치 더 주세요", "반찬 더 주세요", "밥 더 주세요"],
    npcAudioResponseTranscript: "네! 바로 가져다 드릴게요.",
    graffitiStyleTag: "Red '김치 🥬 더!' refill tag — BBQ style",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_04 Rep 5 — Ask price of premium cut ──────────
  Scenario(
    scenarioId: "KO_M08_S04",
    missionId: 8,
    environmentContext:
        "The server mentions 한우 — premium Korean beef. "
        "Sounds incredible. The price wasn't said.",
    introFlag: false,
    environmentalTextPrompt: "🥩 한우가 얼마예요?",
    sophieClueEnglishIntent: "Ask how much the Korean beef costs",
    sophiePhoneticHint: "ha-nu-ga eol-ma-ye-yo",
    targetLanguageAnchor: "한우가 얼마예요?",
    slotOptions: ["한우", "삼겹살", "갈비", "목살"],
    npcAudioResponseTranscript: "한우 등심은 100g에 28,000원이에요.",
    graffitiStyleTag: "Black '한우 ₩28,000/100g' premium tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_11 Rep 5 — Dietary: no pork please ───────────
  Scenario(
    scenarioId: "KO_M08_S05",
    missionId: 8,
    environmentContext:
        "You don't eat pork. Most Korean BBQ is pork-heavy. "
        "You need to tell the server before they start grilling.",
    introFlag: false,
    environmentalTextPrompt: "🐷 돼지고기 안 먹어요",
    sophieClueEnglishIntent: "Say you don't eat pork",
    sophiePhoneticHint: "dwae-ji-go-gi an meo-geo-yo",
    targetLanguageAnchor: "돼지고기 안 먹어요",
    slotOptions: ["돼지고기 안 먹어요", "소고기로 주세요", "닭고기 있어요?"],
    npcAudioResponseTranscript: "아, 그럼 소고기나 닭고기 메뉴 드릴게요!",
    graffitiStyleTag: "White '돼지고기 ✗' dietary tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_16 Rep 6 — Toast: 건배! ─────────────────────
  Scenario(
    scenarioId: "KO_M08_S06",
    missionId: 8,
    environmentContext:
        "Soju poured. Ice cold. The table next to you "
        "is already mid-toast. Your companion raises "
        "their glass with two hands. You respond.",
    introFlag: false,
    environmentalTextPrompt: "🥂 건배! — 위하여!",
    sophieClueEnglishIntent: "Toast cheers in Korean",
    sophiePhoneticHint: "geon-bae! wi-ha-yeo!",
    targetLanguageAnchor: "건배! 위하여!",
    slotOptions: ["건배!", "위하여!", "짠!"],
    npcAudioResponseTranscript: "건배! 즐거운 시간 보내세요!",
    graffitiStyleTag: "Gold '🥂 건배!' toast tag — soju style",
    npcName: "동석자",
    npcAvatarEmoji: "😄",
  ),

  // ── S7: PAT_10 Rep 4 — Ask what time they close ──────────
  Scenario(
    scenarioId: "KO_M08_S07",
    missionId: 8,
    environmentContext:
        "Your friend is running late — 40 minutes. "
        "It's 9 PM already. Korean restaurants sometimes "
        "close early on weekdays. You check.",
    introFlag: true,
    environmentalTextPrompt: "🕙 몇 시까지 해요?",
    sophieClueEnglishIntent: "Ask what time they close",
    sophiePhoneticHint: "myeot si-kka-ji hae-yo",
    targetLanguageAnchor: "몇 시까지 해요?",
    slotOptions: ["몇 시까지 해요?", "언제 닫아요?", "마지막 주문이 언제예요?"],
    npcAudioResponseTranscript: "자정까지예요. 마지막 주문은 11시 30분이에요.",
    graffitiStyleTag: "Purple '🕙 자정까지' closing time tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_01 Rep 7 — DRILL: order dessert ─────────────
  Scenario(
    scenarioId: "KO_M08_S08",
    missionId: 8,
    environmentContext:
        "BBQ done. The server mentions 식혜 — "
        "sweet Korean rice punch — as dessert. "
        "Yes. Absolutely yes.",
    introFlag: false,
    environmentalTextPrompt: "🍹 식혜 주세요",
    sophieClueEnglishIntent: "Order the sikhye please",
    sophiePhoneticHint: "si-kye ju-se-yo",
    targetLanguageAnchor: "식혜 주세요",
    slotOptions: ["식혜", "수정과", "팥빙수", "아이스크림"],
    npcAudioResponseTranscript: "네! 직접 만든 거예요. 맛있게 드세요!",
    graffitiStyleTag: "Cream '식혜 🍹' dessert tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_09 Rep 4 — Ask to pay separately ─────────────
  Scenario(
    scenarioId: "KO_M08_S09",
    missionId: 8,
    environmentContext:
        "Bill time. Two people. "
        "Splitting bills in Korea is normal — "
        "'더치페이' (Dutch pay) is common with friends.",
    introFlag: false,
    environmentalTextPrompt: "🧾 따로따로 계산해 주세요",
    sophieClueEnglishIntent: "Ask to pay separately",
    sophiePhoneticHint: "tta-ro-tta-ro gye-san-hae ju-se-yo",
    targetLanguageAnchor: "따로따로 계산해 주세요",
    slotOptions: ["따로따로요", "같이 낼게요", "제가 다 낼게요"],
    npcAudioResponseTranscript: "네, 두 개로 끊어 드릴게요.",
    graffitiStyleTag: "Grey '따로따로 ÷2' bill split tag",
    npcName: "직원",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S10: PAT_12 Rep 7 — Compliment: it was delicious ─────
  Scenario(
    scenarioId: "KO_M08_S10",
    missionId: 8,
    environmentContext:
        "Shoes back on. The owner bows at the door. "
        "One of the best meals of your life. "
        "You tell him so — and mean it.",
    introFlag: false,
    environmentalTextPrompt: "⭐ 너무 맛있었어요!",
    sophieClueEnglishIntent: "Say it was incredibly delicious thank you",
    sophiePhoneticHint: "neo-mu ma-si-sseo-sseo-yo gam-sa-ham-ni-da",
    targetLanguageAnchor: "너무 맛있었어요, 감사합니다!",
    slotOptions: ["너무 맛있었어요", "최고였어요", "정말 맛있었어요"],
    npcAudioResponseTranscript: "감사합니다! 또 오세요! 기다릴게요!",
    graffitiStyleTag: "GOLD '미션 완료' — 서울 고깃집 stamp",
    npcName: "사장님",
    npcAvatarEmoji: "👨‍🍳",
  ),
];
