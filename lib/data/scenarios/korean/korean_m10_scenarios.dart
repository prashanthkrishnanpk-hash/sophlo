// lib/data/scenarios/korean/korean_m10_scenarios.dart
//
// MISSION 10: 출발 — THE DEPARTURE — 10 SCENARIOS
// ==================================================
// Location: Incheon International Airport Terminal 2 — Departure Day
// Type: GRAND FINALE — all 16 patterns at peak repetition
// Pattern coverage:
//   PAT_16(R7), PAT_05(R4), PAT_02(R8), PAT_04(R6), PAT_11(R6),
//   PAT_08(R6), PAT_03(R5), PAT_10(R5), PAT_09(R5), PAT_15(R8)+PAT_07(R5)
// Key forms: 안녕하세요, 제 이름은, 수하물 부치고 싶어요,
//   얼마예요, ~해 주세요, 여기 있습니다, 어디 있어요,
//   몇 시예요, 창가 자리, 다시 말씀해 주세요 + ~에서 왔어요

import '../../../models/models.dart';

const List<Scenario> koreanM10Scenarios = [

  // ── S1: PAT_16 Rep 7 — Final greeting: check-in desk ─────
  Scenario(
    scenarioId: "KO_M10_S01",
    missionId: 10,
    environmentContext:
        "Incheon T2. Last morning. 5:30 AM. "
        "The check-in hall is immaculate and already busy. "
        "A Korean Air agent in a navy uniform bows slightly. "
        "You bow back and greet her.",
    introFlag: true,
    environmentalTextPrompt: "✈️ 인천공항 — 체크인",
    sophieClueEnglishIntent: "Greet the check-in agent politely",
    sophiePhoneticHint: "ahn-nyong-ha-se-yo",
    targetLanguageAnchor: "안녕하세요",
    slotOptions: ["안녕하세요", "안녕하십니까", "좋은 아침이에요"],
    npcAudioResponseTranscript: "안녕하세요! 오늘 탑승하실 항공편 체크인이신가요?",
    graffitiStyleTag: "Navy '출발 ✈' Korean Air check-in tag",
    npcName: "대한항공 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 4 — Identity: confirm booking name ─────
  Scenario(
    scenarioId: "KO_M10_S02",
    missionId: 10,
    environmentContext:
        "She needs your booking name. "
        "Formal register — this is an airport.",
    introFlag: false,
    environmentalTextPrompt: "📋 성함이 어떻게 되세요?",
    sophieClueEnglishIntent: "Give your name formally",
    sophiePhoneticHint: "je i-reum-eun [X] im-ni-da",
    targetLanguageAnchor: "제 이름은 [X]입니다",
    slotOptions: ["아나 가르시아", "리암 박", "미아 로시", "오마르 칼리드"],
    npcAudioResponseTranscript: "감사합니다. 잠깐만요, 찾아볼게요.",
    graffitiStyleTag: "White '성함 확인' name confirm tag",
    npcName: "대한항공 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S3: PAT_02 Rep 8 — Request: check in one bag ──────────
  Scenario(
    scenarioId: "KO_M10_S03",
    missionId: 10,
    environmentContext:
        "One checked bag, one carry-on. "
        "You want to check in just the suitcase.",
    introFlag: false,
    environmentalTextPrompt: "🧳 수하물 부치고 싶어요",
    sophieClueEnglishIntent: "Say you want to check in your luggage",
    sophiePhoneticHint: "su-ha-mul bu-chi-go si-peo-yo",
    targetLanguageAnchor: "수하물 부치고 싶어요",
    slotOptions: ["수하물 부치고 싶어요", "짐 맡기고 싶어요", "캐리어 부칠게요"],
    npcAudioResponseTranscript: "네, 저울 위에 올려 주세요.",
    graffitiStyleTag: "Blue '수하물 위탁' baggage check tag",
    npcName: "대한항공 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S4: PAT_04 Rep 6 — Ask overweight fee ─────────────────
  Scenario(
    scenarioId: "KO_M10_S04",
    missionId: 10,
    environmentContext:
        "26.2 kilos. Limit is 23. Overweight. "
        "The scale shows red. She's checking her screen. "
        "How much?",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 초과 수하물 얼마예요?",
    sophieClueEnglishIntent: "Ask how much the excess baggage fee is",
    sophiePhoneticHint: "cho-gwa su-ha-mul eol-ma-ye-yo",
    targetLanguageAnchor: "초과 수하물 얼마예요?",
    slotOptions: ["초과 수하물 얼마예요?", "추가 요금이 얼마예요?", "얼마 내야 해요?"],
    npcAudioResponseTranscript: "3.2킬로 초과라서 48,000원이에요.",
    graffitiStyleTag: "Orange '초과 ₩48,000' fee tag",
    npcName: "대한항공 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S5: PAT_11 Rep 6 — Negotiate: ask for exception ──────
  Scenario(
    scenarioId: "KO_M10_S05",
    missionId: 10,
    environmentContext:
        "48,000 won for 3.2 kilos. That's the 선물 "
        "from Namdaemun. Worth a polite try "
        "with a gentle bow.",
    introFlag: false,
    environmentalTextPrompt: "🙏 한 번만 봐 주세요",
    sophieClueEnglishIntent: "Politely ask her to overlook it this once",
    sophiePhoneticHint: "han beon-man bwa ju-se-yo",
    targetLanguageAnchor: "한 번만 봐 주세요",
    slotOptions: ["한 번만 봐 주세요", "이번만 예외로 해 주세요", "좀 봐 주세요"],
    npcAudioResponseTranscript: "이번 한 번만이에요. 다음엔 꼭 확인하세요!",
    graffitiStyleTag: "Pink '🙏 봐 주세요' exception tag",
    npcName: "대한항공 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S6: PAT_08 Rep 6 — Hand over boarding pass ───────────
  Scenario(
    scenarioId: "KO_M10_S06",
    missionId: 10,
    environmentContext:
        "Security. An officer in a white shirt. "
        "Boarding pass on your phone, passport ready. "
        "You present both with two hands and a slight bow.",
    introFlag: true,
    environmentalTextPrompt: "🎫 탑승권과 여권",
    sophieClueEnglishIntent: "Hand over your boarding pass",
    sophiePhoneticHint: "yeo-gi i-sseum-ni-da",
    targetLanguageAnchor: "여기 있습니다",
    slotOptions: ["여기 있습니다", "탑승권이에요", "드릴게요"],
    npcAudioResponseTranscript: "감사합니다. 가방은 바구니에 넣어 주세요.",
    graffitiStyleTag: "Green '탑승권 ✓' boarding pass stamp",
    npcName: "보안 검색 요원",
    npcAvatarEmoji: "💂",
  ),

  // ── S7: PAT_03 Rep 5 — Ask where the gate is ─────────────
  Scenario(
    scenarioId: "KO_M10_S07",
    missionId: 10,
    environmentContext:
        "Security cleared. Incheon T2 is beautiful "
        "but vast. Your gate is 252. "
        "You ask a ground crew member.",
    introFlag: false,
    environmentalTextPrompt: "🚶 252번 게이트가 어디 있어요?",
    sophieClueEnglishIntent: "Ask where gate 252 is",
    sophiePhoneticHint: "i-baek-o-sip-i-beon ge-i-teu-ga eo-di i-sseo-yo",
    targetLanguageAnchor: "252번 게이트가 어디 있어요?",
    slotOptions: ["252번 게이트", "탑승구", "면세점", "라운지"],
    npcAudioResponseTranscript: "셔틀 트레인 타셔야 해요. 저쪽에서 탑승하세요.",
    graffitiStyleTag: "Cyan '→ Gate 252' departure gate tag",
    npcName: "지상직원",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S8: PAT_10 Rep 5 — Ask when boarding starts ──────────
  Scenario(
    scenarioId: "KO_M10_S08",
    missionId: 10,
    environmentContext:
        "Gate 252. Flight at 09:30. "
        "When does boarding start? "
        "You ask the gate agent.",
    introFlag: false,
    environmentalTextPrompt: "⏰ 탑승이 몇 시에 시작해요?",
    sophieClueEnglishIntent: "Ask what time boarding starts",
    sophiePhoneticHint: "tab-seung-i myeot si-e si-jak-hae-yo",
    targetLanguageAnchor: "탑승이 몇 시에 시작해요?",
    slotOptions: ["탑승이 몇 시에 시작해요?", "언제 탑승해요?", "보딩은 언제예요?"],
    npcAudioResponseTranscript: "9시에 시작해요. 여권 준비해 주세요.",
    graffitiStyleTag: "Purple '⏰ 탑승 9:00' boarding time tag",
    npcName: "게이트 직원",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S9: PAT_09 Rep 5 — Ask for window seat on board ──────
  Scenario(
    scenarioId: "KO_M10_S09",
    missionId: 10,
    environmentContext:
        "Boarding. The cabin crew bows as you enter. "
        "Your allocated seat is a middle. "
        "You ask about window seats.",
    introFlag: false,
    environmentalTextPrompt: "🪟 창가 자리 있어요?",
    sophieClueEnglishIntent: "Ask if there is a window seat available",
    sophiePhoneticHint: "chang-ga ja-ri i-sseo-yo",
    targetLanguageAnchor: "창가 자리 있어요?",
    slotOptions: ["창가 자리", "통로 자리", "앞 자리"],
    npcAudioResponseTranscript: "확인해 드릴게요. 32A가 비어 있어요. 괜찮으세요?",
    graffitiStyleTag: "Sky '🪟 창가 32A' window seat tag",
    npcName: "승무원",
    npcAvatarEmoji: "✈️",
  ),

  // ── S10: PAT_15 Rep 8 + PAT_07 Rep 5 — Final repair + origin farewell
  Scenario(
    scenarioId: "KO_M10_S10",
    missionId: 10,
    environmentContext:
        "Cruising altitude. The cabin crew from earlier "
        "passes with drinks and asks if this was your "
        "first time in Korea and where you're from. "
        "Last conversation of the entire arc.",
    introFlag: false,
    environmentalTextPrompt: "🌏 마지막 대화 — 안녕, 서울",
    sophieClueEnglishIntent: "Say you're from [X] and Seoul was amazing",
    sophiePhoneticHint: "[X]-e-seo wa-sseo-yo, seo-ul-eun jeong-mal joa-sseo-yo",
    targetLanguageAnchor: "[X]에서 왔어요. 서울은 정말 좋았어요!",
    slotOptions: ["또 오고 싶어요", "최고의 여행이었어요", "한국어 계속 배울게요"],
    npcAudioResponseTranscript: "감사합니다! 꼭 다시 오세요. 서울이 기다릴게요!",
    graffitiStyleTag: "GOLD '미션 완료 — 서울 아크 완성' Grand Finale stamp",
    npcName: "승무원",
    npcAvatarEmoji: "✈️",
  ),
];
