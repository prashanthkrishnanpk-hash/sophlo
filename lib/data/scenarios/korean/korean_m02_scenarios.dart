// lib/data/scenarios/korean/korean_m02_scenarios.dart
//
// MISSION 2: 입국 — ARRIVAL (INCHEON TERMINAL) — 10 SCENARIOS
// ==============================================================
// Location: Incheon International Airport — Immigration & Exit
// Type: FIRST REAL PRESSURE — formal 합쇼체 register essential
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Key forms: 안녕하세요, 관광으로 왔어요, 제 이름은 ~입니다,
//   여기 있습니다, ~편에 있었어요, 어디 있어요, ~이/가 있어요,
//   몇 시예요, 다시 말씀해 주세요, ~장 주세요

import '../../../models/models.dart';

const List<Scenario> koreanM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Formal greeting: immigration ─────
  Scenario(
    scenarioId: "KO_M02_S01",
    missionId: 2,
    environmentContext:
        "Incheon Airport. Immigration hall. Pristine, efficient. "
        "The officer in a dark uniform looks up from his screen. "
        "Korea runs on respect — you greet first.",
    introFlag: true,
    environmentalTextPrompt: "🛂 입국심사 — 인천공항",
    sophieClueEnglishIntent: "Greet the immigration officer politely",
    sophiePhoneticHint: "ahn-nyong-ha-se-yo",
    targetLanguageAnchor: "안녕하세요",
    slotOptions: ["안녕하세요", "안녕하십니까", "반갑습니다"],
    npcAudioResponseTranscript: "안녕하세요. 여권 주세요.",
    graffitiStyleTag: "Red '입국' formal stamp — Korean immigration seal",
    npcName: "출입국심사관",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Purpose: tourism ─────────────────
  Scenario(
    scenarioId: "KO_M02_S02",
    missionId: 2,
    environmentContext:
        "He types. Pauses. Looks up. "
        "방문 목적이 뭐예요? Purpose of visit. "
        "Clear, simple, honest.",
    introFlag: true,
    environmentalTextPrompt: "📋 방문 목적은요?",
    sophieClueEnglishIntent: "Say you came for tourism/sightseeing",
    sophiePhoneticHint: "gwan-gwang-eu-ro wa-sseo-yo",
    targetLanguageAnchor: "관광으로 왔어요",
    slotOptions: ["관광으로 왔어요", "여행하러 왔어요", "구경하러 왔어요"],
    npcAudioResponseTranscript: "며칠 동안 머무르실 건가요?",
    graffitiStyleTag: "Blue '관광' purpose tag — travel stamp",
    npcName: "출입국심사관",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity: name declaration ───────
  Scenario(
    scenarioId: "KO_M02_S03",
    missionId: 2,
    environmentContext:
        "She checks the photo. Types. Looks up. "
        "Asks for your name verbally. "
        "Formal register — this is an official.",
    introFlag: false,
    environmentalTextPrompt: "📋 성함이 어떻게 되세요?",
    sophieClueEnglishIntent: "Give your name formally",
    sophiePhoneticHint: "je i-reum-eun [X] im-ni-da",
    targetLanguageAnchor: "제 이름은 [X]입니다",
    slotOptions: ["김민준", "에마 스미스", "리 준", "아리 하산"],
    npcAudioResponseTranscript: "네, 확인됐습니다. 들어오세요.",
    graffitiStyleTag: "White '이름' name tag — document style",
    npcName: "출입국심사관",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Handover: passport ───────────────
  Scenario(
    scenarioId: "KO_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. Another counter. "
        "The officer extends her hand. "
        "Two hands — always two hands in Korea.",
    introFlag: true,
    environmentalTextPrompt: "🪪 추가 확인",
    sophieClueEnglishIntent: "Hand over your passport politely",
    sophiePhoneticHint: "yeo-gi i-sseum-ni-da",
    targetLanguageAnchor: "여기 있습니다",
    slotOptions: ["여기 있습니다", "여기요", "드릴게요"],
    npcAudioResponseTranscript: "감사합니다. 잠깐만요.",
    graffitiStyleTag: "Orange '여권' document stamp",
    npcName: "검사관",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Baggage: missing bag ─────────────
  Scenario(
    scenarioId: "KO_M02_S05",
    missionId: 2,
    environmentContext:
        "수하물 찾는 곳. Baggage claim. "
        "The belt has stopped. Your bag isn't here. "
        "A Korean Air ground staff member approaches.",
    introFlag: true,
    environmentalTextPrompt: "🧳 수하물 찾는 곳 — 짐이 없어요",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "je jim-eun [X] pyeon-e i-sseo-sseo-yo",
    targetLanguageAnchor: "제 짐은 [X]편에 있었어요",
    slotOptions: ["KE086", "OZ202", "KE012", "LJ304"],
    npcAudioResponseTranscript: "확인해 드리겠습니다. 편명을 다시 말씀해 주세요.",
    graffitiStyleTag: "Green '수하물' belt tag — industrial",
    npcName: "지상직원",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location: where is the exit ──────
  Scenario(
    scenarioId: "KO_M02_S06",
    missionId: 2,
    environmentContext:
        "Bag retrieved. Incheon is enormous — "
        "consistently rated the world's best airport. "
        "Still easy to get turned around.",
    introFlag: true,
    environmentalTextPrompt: "🚪 출구가 어디 있어요?",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "chul-gu-ga eo-di i-sseo-yo",
    targetLanguageAnchor: "출구가 어디 있어요?",
    slotOptions: ["출구", "지하철역", "버스 승강장", "택시 승강장"],
    npcAudioResponseTranscript: "저쪽으로 쭉 가시면 있어요.",
    graffitiStyleTag: "Cyan '→ 출구' neon exit arrow",
    npcName: "공항 직원",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Availability: is there AREX ──────
  Scenario(
    scenarioId: "KO_M02_S07",
    missionId: 2,
    environmentContext:
        "Outside. You've heard about AREX — "
        "the Airport Railroad Express to Seoul Station. "
        "Is it here?",
    introFlag: true,
    environmentalTextPrompt: "🚆 공항철도가 있어요?",
    sophieClueEnglishIntent: "Ask if there is an airport railway",
    sophiePhoneticHint: "gong-hang-cheol-do-ga i-sseo-yo",
    targetLanguageAnchor: "공항철도가 있어요?",
    slotOptions: ["공항철도", "버스", "택시 승강장", "리무진"],
    npcAudioResponseTranscript: "네, B1층에 있어요. 서울역까지 43분이에요.",
    graffitiStyleTag: "Yellow 'AREX ✓' transit tag",
    npcName: "안내 직원",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S8: PAT_10 Rep 1 — Time: next AREX train ────────────
  Scenario(
    scenarioId: "KO_M02_S08",
    missionId: 2,
    environmentContext:
        "At the AREX platform. B1 level. "
        "You want to know when the next train departs.",
    introFlag: true,
    environmentalTextPrompt: "🚆 다음 열차가 몇 시예요?",
    sophieClueEnglishIntent: "Ask what time the next train is",
    sophiePhoneticHint: "da-eum yeol-cha-ga myeot si-ye-yo",
    targetLanguageAnchor: "다음 열차가 몇 시예요?",
    slotOptions: ["다음 열차", "마지막 열차", "다음 버스"],
    npcAudioResponseTranscript: "5분 후에 출발해요. 4번 플랫폼이에요.",
    graffitiStyleTag: "Purple 'AREX 🕐' schedule tag",
    npcName: "역무원",
    npcAvatarEmoji: "🚆",
  ),

  // ── S9: PAT_15 Rep 1 — Repair: didn't catch platform ────
  Scenario(
    scenarioId: "KO_M02_S09",
    missionId: 2,
    environmentContext:
        "She said the platform number quickly. "
        "Four or fourteen? Korean numbers at speed "
        "are merciless. You need her to repeat.",
    introFlag: false,
    environmentalTextPrompt: "😕 다시 말씀해 주세요",
    sophieClueEnglishIntent: "Ask her to say it again please",
    sophiePhoneticHint: "da-si mal-sseum-hae ju-se-yo",
    targetLanguageAnchor: "다시 말씀해 주세요",
    slotOptions: ["다시 말씀해 주세요", "천천히 말씀해 주세요", "못 들었어요"],
    npcAudioResponseTranscript: "4번 플랫폼이요. 사 — 번.",
    graffitiStyleTag: "White '다시요' repeat request bubble",
    npcName: "역무원",
    npcAvatarEmoji: "🚆",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: buy ticket to Seoul ──────
  Scenario(
    scenarioId: "KO_M02_S10",
    missionId: 2,
    environmentContext:
        "At the ticket window. Seoul Station is your destination. "
        "One adult ticket. The clerk waits.",
    introFlag: false,
    environmentalTextPrompt: "🎫 [X]까지 한 장 주세요",
    sophieClueEnglishIntent: "Ask for one ticket to [X] please",
    sophiePhoneticHint: "[X]-kka-ji han jang ju-se-yo",
    targetLanguageAnchor: "[X]까지 한 장 주세요",
    slotOptions: ["서울역", "홍대입구", "강남", "명동"],
    npcAudioResponseTranscript: "9,500원입니다. 감사합니다.",
    graffitiStyleTag: "GOLD '미션 완료' — 인천터미널 cleared stamp",
    npcName: "역무원",
    npcAvatarEmoji: "🚆",
  ),
];
