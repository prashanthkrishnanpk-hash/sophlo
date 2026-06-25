// lib/data/scenarios/korean/korean_m09_scenarios.dart
//
// MISSION 9: 교통 — GETTING AROUND SEOUL — 10 SCENARIOS
// ========================================================
// Location: Seoul Metro / Bus / Street navigation
// Type: NAVIGATION + TRANSIT — Seoul's world-class transit system
// Pattern coverage:
//   PAT_03(R3,R4), PAT_14(R5,R6), PAT_10(R4), PAT_13(R5),
//   PAT_06(R7), PAT_09(R4), PAT_15(R7), PAT_02(R7), PAT_12(R8), PAT_01(R8)
// Key forms: ~이/가 어디 있어요, ~에 가고 싶어요, 몇 시예요,
//   ~해 주세요, ~이/가 있어요, ~까지, 다시 말씀해 주세요,
//   ~사고 싶어요, 길을 잃었어요, 노선도 주세요

import '../../../models/models.dart';

const List<Scenario> koreanM09Scenarios = [

  // ── S1: PAT_03 Rep 3 — Location: where is the subway ────
  Scenario(
    scenarioId: "KO_M09_S01",
    missionId: 9,
    environmentContext:
        "Out of the guesthouse. You need Hongik University station. "
        "Seoul Metro is world-class but the entrance "
        "can be easy to miss on a busy street.",
    introFlag: true,
    environmentalTextPrompt: "🚇 지하철역이 어디 있어요?",
    sophieClueEnglishIntent: "Ask where the subway station is",
    sophiePhoneticHint: "ji-ha-cheol-yeo-gi eo-di i-sseo-yo",
    targetLanguageAnchor: "지하철역이 어디 있어요?",
    slotOptions: ["지하철역", "홍대입구역", "버스 정류장", "택시 승강장"],
    npcAudioResponseTranscript: "저기 계단 보여요? 거기가 홍대입구역이에요.",
    graffitiStyleTag: "Blue '지하철 →' Seoul Metro tag",
    npcName: "행인",
    npcAvatarEmoji: "🚶",
  ),

  // ── S2: PAT_14 Rep 5 — Direction: I want to go to [X] ───
  Scenario(
    scenarioId: "KO_M09_S02",
    missionId: 9,
    environmentContext:
        "At the station information desk. "
        "You want to get to Gyeongbokgung Palace. "
        "Which line?",
    introFlag: true,
    environmentalTextPrompt: "🚆 경복궁에 가고 싶어요",
    sophieClueEnglishIntent: "Say you want to go to [X]",
    sophiePhoneticHint: "[X]-e ga-go si-peo-yo",
    targetLanguageAnchor: "[X]에 가고 싶어요",
    slotOptions: ["경복궁", "명동", "인사동", "동대문"],
    npcAudioResponseTranscript: "3호선 타고 경복궁역에서 내리세요. 직통이에요.",
    graffitiStyleTag: "Orange '3호선 → 경복궁' platform tag",
    npcName: "역무원",
    npcAvatarEmoji: "🚇",
  ),

  // ── S3: PAT_10 Rep 4 — Ask time of last subway ───────────
  Scenario(
    scenarioId: "KO_M09_S03",
    missionId: 9,
    environmentContext:
        "11:30 PM in Itaewon. Long night. "
        "Seoul Metro stops around midnight — "
        "you need to know the last train time.",
    introFlag: true,
    environmentalTextPrompt: "🌙 막차가 몇 시예요?",
    sophieClueEnglishIntent: "Ask what time the last train is",
    sophiePhoneticHint: "mak-cha-ga myeot si-ye-yo",
    targetLanguageAnchor: "막차가 몇 시예요?",
    slotOptions: ["막차", "다음 열차", "첫차"],
    npcAudioResponseTranscript: "홍대 방향 막차는 0시 10분이에요. 서두르세요!",
    graffitiStyleTag: "Purple '🌙 막차 00:10' last train tag",
    npcName: "역무원",
    npcAvatarEmoji: "🚇",
  ),

  // ── S4: PAT_13 Rep 5 — Ask staff to top up T-money ───────
  Scenario(
    scenarioId: "KO_M09_S04",
    missionId: 9,
    environmentContext:
        "Your T-money card ran out at the turnstile. "
        "The gate beeped red. Embarrassing. "
        "You find the service window.",
    introFlag: true,
    environmentalTextPrompt: "🎫 T머니 충전해 주세요",
    sophieClueEnglishIntent: "Ask to top up your T-money card",
    sophiePhoneticHint: "ti-meo-ni chung-jeon-hae ju-se-yo",
    targetLanguageAnchor: "T머니 충전해 주세요",
    slotOptions: ["T머니 충전", "교통카드 충전", "10,000원 충전"],
    npcAudioResponseTranscript: "얼마 충전할까요? 여기 충전기도 있어요.",
    graffitiStyleTag: "Blue 'T머니 충전' card top-up tag",
    npcName: "역무원",
    npcAvatarEmoji: "🎫",
  ),

  // ── S5: PAT_03 Rep 4 — Location: where is the bus stop ───
  Scenario(
    scenarioId: "KO_M09_S05",
    missionId: 9,
    environmentContext:
        "You want to take bus 7017 — the famous "
        "elevated walking path / bus route over Seoul Station. "
        "Where is the stop?",
    introFlag: true,
    environmentalTextPrompt: "🚌 버스 정류장이 어디 있어요?",
    sophieClueEnglishIntent: "Ask where the bus stop is",
    sophiePhoneticHint: "beo-seu jeong-nyu-jang-i eo-di i-sseo-yo",
    targetLanguageAnchor: "버스 정류장이 어디 있어요?",
    slotOptions: ["버스 정류장", "마을버스 정류장", "공항버스 정류장"],
    npcAudioResponseTranscript: "저쪽 횡단보도 건너면 바로 있어요.",
    graffitiStyleTag: "Green '🚌 정류장' bus stop tag",
    npcName: "경비원",
    npcAvatarEmoji: "👮",
  ),

  // ── S6: PAT_09 Rep 4 — Ask for return ticket ─────────────
  Scenario(
    scenarioId: "KO_M09_S06",
    missionId: 9,
    environmentContext:
        "Day trip to Suwon — Hwaseong Fortress. "
        "At Seoul Station, you buy your ticket. "
        "Return, obviously.",
    introFlag: true,
    environmentalTextPrompt: "🎫 수원까지 왕복 주세요",
    sophieClueEnglishIntent: "Ask for a return ticket to Suwon",
    sophiePhoneticHint: "su-won-kka-ji wang-bok ju-se-yo",
    targetLanguageAnchor: "수원까지 왕복 주세요",
    slotOptions: ["왕복 주세요", "편도 주세요", "1일권 주세요"],
    npcAudioResponseTranscript: "5,400원이에요. KTX는 아니고 무궁화호예요.",
    graffitiStyleTag: "Burgundy '왕복 ✓' return ticket tag",
    npcName: "매표원",
    npcAvatarEmoji: "🎫",
  ),

  // ── S7: PAT_14 Rep 6 — Lost: emergency direction ─────────
  Scenario(
    scenarioId: "KO_M09_S07",
    missionId: 9,
    environmentContext:
        "Suwon. Hwaseong Fortress is enormous — "
        "5.7km of walls. You've wandered off the path "
        "and genuinely can't find the main gate.",
    introFlag: true,
    environmentalTextPrompt: "🆘 길을 잃었어요",
    sophieClueEnglishIntent: "Say you are lost",
    sophiePhoneticHint: "gil-eul il-reo-sseo-yo",
    targetLanguageAnchor: "길을 잃었어요",
    slotOptions: ["길을 잃었어요", "길을 못 찾겠어요", "여기가 어디예요?"],
    npcAudioResponseTranscript: "괜찮아요! 화성 장안문은 저쪽이에요. 따라오세요!",
    graffitiStyleTag: "Red '길 잃음 SOS' emergency tag",
    npcName: "관광 안내원",
    npcAvatarEmoji: "🏯",
  ),

  // ── S8: PAT_02 Rep 7 — Buy T-money card ─────────────────
  Scenario(
    scenarioId: "KO_M09_S08",
    missionId: 9,
    environmentContext:
        "Back in Seoul. You've been paying single fares. "
        "A T-money card would save money and time. "
        "You buy one at the convenience store in the station.",
    introFlag: true,
    environmentalTextPrompt: "💳 T머니 카드 사고 싶어요",
    sophieClueEnglishIntent: "Say you want to buy a T-money card",
    sophiePhoneticHint: "ti-meo-ni ka-deu sa-go si-peo-yo",
    targetLanguageAnchor: "T머니 카드 사고 싶어요",
    slotOptions: ["T머니 카드 사고 싶어요", "교통카드 주세요", "T카드 있어요?"],
    npcAudioResponseTranscript: "3,000원이에요. 충전은 얼마나 할까요?",
    graffitiStyleTag: "Blue 'T머니 🚇' card purchase tag",
    npcName: "편의점 직원",
    npcAvatarEmoji: "🏪",
  ),

  // ── S9: PAT_15 Rep 7 — Repair: wrong platform? ───────────
  Scenario(
    scenarioId: "KO_M09_S09",
    missionId: 9,
    environmentContext:
        "Platform 2. You think. But the display shows "
        "Incheon not Hongdae. Something's wrong. "
        "You ask the person next to you.",
    introFlag: false,
    environmentalTextPrompt: "😕 이 플랫폼 맞아요?",
    sophieClueEnglishIntent: "Ask if this is the right platform",
    sophiePhoneticHint: "i peul-laet-pom ma-ja-yo",
    targetLanguageAnchor: "이 플랫폼 맞아요?",
    slotOptions: ["이 플랫폼 맞아요?", "홍대 가는 거 맞죠?", "2호선이에요?"],
    npcAudioResponseTranscript: "아니요! 홍대는 저쪽 플랫폼이에요. 빨리요!",
    graffitiStyleTag: "White '이 플랫폼?' confirm bubble",
    npcName: "승객",
    npcAvatarEmoji: "👩",
  ),

  // ── S10: PAT_01 Rep 8 — DRILL: ask for transit map ───────
  Scenario(
    scenarioId: "KO_M09_S10",
    missionId: 9,
    environmentContext:
        "Back at the station. Your phone battery died. "
        "You want a paper Seoul Metro map. "
        "The service window has them.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ 노선도 주세요",
    sophieClueEnglishIntent: "Ask for a subway map please",
    sophiePhoneticHint: "no-seon-do ju-se-yo",
    targetLanguageAnchor: "노선도 주세요",
    slotOptions: ["노선도 주세요", "지하철 지도 주세요", "버스 노선도 있어요?"],
    npcAudioResponseTranscript: "여기요! 영어판도 있어요, 드릴까요?",
    graffitiStyleTag: "GOLD '미션 완료' — 서울 교통 cleared stamp",
    npcName: "역무원",
    npcAvatarEmoji: "🚇",
  ),
];
