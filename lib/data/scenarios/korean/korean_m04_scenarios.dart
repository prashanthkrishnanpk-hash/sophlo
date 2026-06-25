// lib/data/scenarios/korean/korean_m04_scenarios.dart
//
// MISSION 4: 게스트하우스 — GUESTHOUSE — 10 SCENARIOS
// ======================================================
// Location: Guesthouse in Hongdae / Insadong, Seoul
// Type: ACCOMMODATION + SOCIAL — informal and formal mix
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Key forms: 예약했어요, 제 이름은 ~이에요, 여기 있어요,
//   ~이 어디 있어요, ~이/가 있어요, 몇 시예요, ~에서 왔어요,
//   ~해 주세요, 다시 말씀해 주세요, ~ 주세요

import '../../../models/models.dart';

const List<Scenario> koreanM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Claim reservation ────────────────
  Scenario(
    scenarioId: "KO_M04_S01",
    missionId: 4,
    environmentContext:
        "Hongdae guesthouse. Fairy lights, K-indie music, "
        "a world map on the wall with pins. "
        "The host looks up from her phone.",
    introFlag: true,
    environmentalTextPrompt: "🏨 게스트하우스 — 체크인",
    sophieClueEnglishIntent: "Say you have a reservation",
    sophiePhoneticHint: "ye-yak-haess-eo-yo",
    targetLanguageAnchor: "예약했어요",
    slotOptions: ["예약했어요", "예약이 있어요", "예약한 사람이에요"],
    npcAudioResponseTranscript: "어서 오세요! 성함이 어떻게 되세요?",
    graffitiStyleTag: "Pink '예약' booking tag — guesthouse style",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S2: PAT_05 Rep 3 — Give name for reservation ────────
  Scenario(
    scenarioId: "KO_M04_S02",
    missionId: 4,
    environmentContext:
        "She's checking her tablet. "
        "Multiple bookings. She needs your name.",
    introFlag: false,
    environmentalTextPrompt: "📋 성함이요?",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "je i-reum-eun [X]-i-e-yo",
    targetLanguageAnchor: "제 이름은 [X]이에요",
    slotOptions: ["아나 가르시아", "리암 박", "미아 로시", "오마르 칼리드"],
    npcAudioResponseTranscript: "아, 여기 있네요. 2박 도미토리 맞죠?",
    graffitiStyleTag: "White '이름' chalk tag — reception board",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport ───────────────
  Scenario(
    scenarioId: "KO_M04_S03",
    missionId: 4,
    environmentContext:
        "Korean guesthouses need passport info. "
        "She asks. You hand it over — "
        "two hands, slight bow.",
    introFlag: false,
    environmentalTextPrompt: "🪪 여권 보여 주세요",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "yeo-gi i-sseum-ni-da",
    targetLanguageAnchor: "여기 있습니다",
    slotOptions: ["여기 있습니다", "여기요", "드릴게요"],
    npcAudioResponseTranscript: "감사해요. 사진 한 장만 찍을게요.",
    graffitiStyleTag: "Orange '여권 ✓' registration stamp",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S4: PAT_03 Rep 2 — Location: where is the room ──────
  Scenario(
    scenarioId: "KO_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. Old building, converted. "
        "Stairs going up and down. "
        "Which way is your room?",
    introFlag: false,
    environmentalTextPrompt: "🗝️ 제 방이 어디 있어요?",
    sophieClueEnglishIntent: "Ask where your room is",
    sophiePhoneticHint: "je bang-i eo-di i-sseo-yo",
    targetLanguageAnchor: "제 방이 어디 있어요?",
    slotOptions: ["제 방", "엘리베이터", "화장실", "샤워실"],
    npcAudioResponseTranscript: "3층에 있어요. 계단 올라가면 왼쪽이에요.",
    graffitiStyleTag: "Cyan '→ 방' room arrow tag",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S5: PAT_06 Rep 3 — Ask if WiFi available ────────────
  Scenario(
    scenarioId: "KO_M04_S05",
    missionId: 4,
    environmentContext:
        "Korea has the fastest internet in the world. "
        "You still need the password.",
    introFlag: false,
    environmentalTextPrompt: "📶 와이파이 있어요?",
    sophieClueEnglishIntent: "Ask if there is WiFi",
    sophiePhoneticHint: "wa-i-pa-i i-sseo-yo",
    targetLanguageAnchor: "와이파이 있어요?",
    slotOptions: ["와이파이", "무료 와이파이", "인터넷"],
    npcAudioResponseTranscript: "네, 있어요! 비밀번호는 seoul2024예요.",
    graffitiStyleTag: "Blue '와이파이 ✓' network tag",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S6: PAT_10 Rep 2 — Ask what time breakfast is ───────
  Scenario(
    scenarioId: "KO_M04_S06",
    missionId: 4,
    environmentContext:
        "The sign says 조식 포함 — breakfast included. "
        "Korean guesthouse breakfast is simple but good. "
        "When is it?",
    introFlag: true,
    environmentalTextPrompt: "🍳 조식이 몇 시예요?",
    sophieClueEnglishIntent: "Ask what time breakfast is",
    sophiePhoneticHint: "jo-si-gi myeot si-ye-yo",
    targetLanguageAnchor: "조식이 몇 시예요?",
    slotOptions: ["조식", "체크아웃", "저녁 식사"],
    npcAudioResponseTranscript: "8시부터 10시까지예요. 1층 식당에서요.",
    graffitiStyleTag: "Yellow '조식 8-10시' morning tag",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S7: PAT_07 Rep 2 — Tell host where you're from ──────
  Scenario(
    scenarioId: "KO_M04_S07",
    missionId: 4,
    environmentContext:
        "The host is curious and warm — "
        "she asks where you're visiting from. "
        "Koreans love to know.",
    introFlag: true,
    environmentalTextPrompt: "🌍 어디서 오셨어요?",
    sophieClueEnglishIntent: "Say where you are from",
    sophiePhoneticHint: "[X]-e-seo wa-sseo-yo",
    targetLanguageAnchor: "[X]에서 왔어요",
    slotOptions: ["이탈리아", "독일", "인도", "브라질", "캐나다"],
    npcAudioResponseTranscript: "와! 서울은 처음이에요?",
    graffitiStyleTag: "Green '[X]에서' origin tag — passport style",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S8: PAT_13 Rep 1 — Request: extra towel ─────────────
  Scenario(
    scenarioId: "KO_M04_S08",
    missionId: 4,
    environmentContext:
        "One small towel in your locker. "
        "You need one more. You text the host "
        "through the guesthouse app.",
    introFlag: false,
    environmentalTextPrompt: "🛁 수건 하나 더 주세요",
    sophieClueEnglishIntent: "Ask for one more towel please",
    sophiePhoneticHint: "su-geon ha-na deo ju-se-yo",
    targetLanguageAnchor: "수건 하나 더 주세요",
    slotOptions: ["수건 하나 더", "담요 하나 더", "베개 하나 더"],
    npcAudioResponseTranscript: "네, 바로 올려 드릴게요!",
    graffitiStyleTag: "Teal '수건 +1' service request tag",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: missed checkout time ─────
  Scenario(
    scenarioId: "KO_M04_S09",
    missionId: 4,
    environmentContext:
        "You heard the checkout time but missed it. "
        "Eleven or twelve? You ask to confirm.",
    introFlag: false,
    environmentalTextPrompt: "🕙 체크아웃이 11시죠?",
    sophieClueEnglishIntent: "Confirm checkout is at eleven",
    sophiePhoneticHint: "che-keu-a-u-si i-reo-na-si-jyo",
    targetLanguageAnchor: "체크아웃이 11시죠?",
    slotOptions: ["11시죠?", "12시였나요?", "몇 시였어요?"],
    npcAudioResponseTranscript: "네, 11시예요. 짐은 맡겨 두셔도 돼요.",
    graffitiStyleTag: "White '11시 ✓' confirm bubble",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: ask for city map ─────────
  Scenario(
    scenarioId: "KO_M04_S10",
    missionId: 4,
    environmentContext:
        "Ready to explore Seoul. The host has "
        "a rack of neighbourhood maps. "
        "You want the Hongdae area map.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ 지도 주세요",
    sophieClueEnglishIntent: "Ask for a map of the area please",
    sophiePhoneticHint: "i jiyeok ji-do ju-se-yo",
    targetLanguageAnchor: "이 지역 지도 주세요",
    slotOptions: ["이 지역 지도", "서울 지도", "지하철 노선도", "관광 지도"],
    npcAudioResponseTranscript: "여기요! 제가 맛집도 표시해 뒀어요!",
    graffitiStyleTag: "GOLD '미션 완료' — 홍대 게스트하우스 stamp",
    npcName: "호스트",
    npcAvatarEmoji: "🧑‍💻",
  ),
];
