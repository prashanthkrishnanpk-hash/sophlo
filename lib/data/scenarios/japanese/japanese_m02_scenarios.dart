// lib/data/scenarios/japanese/japanese_m02_scenarios.dart
//
// MISSION 2: 入国 — ARRIVAL (NARITA TERMINAL) — 10 SCENARIOS
// ============================================================
// Location: Narita International Airport — Immigration & Exit
// Type: FIRST REAL PRESSURE — formal register essential
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Key forms: おはようございます、〜で来ました、〜と申します、
//   こちらです、〜行きの、どこですか、〜はありますか、
//   何時ですか、もう一度、〜をください

import '../../../models/models.dart';

const List<Scenario> japaneseM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Formal greeting: immigration ─────
  Scenario(
    scenarioId: "JA_M02_S01",
    missionId: 2,
    environmentContext:
        "Narita Immigration. Fluorescent lights. Long queues. "
        "The officer stamps without looking up, then does. "
        "You meet his eyes and speak first.",
    introFlag: true,
    environmentalTextPrompt: "🛂 入国審査 — 成田空港",
    sophieClueEnglishIntent: "Greet the immigration officer politely",
    sophiePhoneticHint: "o-ha-yo-u go-za-i-ma-su",
    targetLanguageAnchor: "おはようございます",
    slotOptions: ["おはようございます", "こんにちは", "よろしくお願いします"],
    npcAudioResponseTranscript: "おはようございます。パスポートをどうぞ。",
    graffitiStyleTag: "Red formal '入国' stamp — immigration seal style",
    npcName: "入国審査官",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Purpose declaration: tourism ─────
  Scenario(
    scenarioId: "JA_M02_S02",
    missionId: 2,
    environmentContext:
        "The officer types. Pauses. Asks the key question: "
        "purpose of visit. One word can open or close the gate.",
    introFlag: true,
    environmentalTextPrompt: "📋 訪問目的は何ですか？",
    sophieClueEnglishIntent: "Say you came for sightseeing / tourism",
    sophiePhoneticHint: "kan-ko-u de ki-ma-shi-ta",
    targetLanguageAnchor: "観光で来ました",
    slotOptions: ["観光で来ました", "旅行で来ました", "観光のために来ました"],
    npcAudioResponseTranscript: "何日間滞在しますか？",
    graffitiStyleTag: "Blue '観光' tourism purpose tag — travel stamp",
    npcName: "入国審査官",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity: name declaration ───────
  Scenario(
    scenarioId: "JA_M02_S03",
    missionId: 2,
    environmentContext:
        "She checks the photo. Looks at you. Types your name. "
        "Mispronounces it. You gently correct her with "
        "the formal Japanese self-introduction.",
    introFlag: false,
    environmentalTextPrompt: "📋 お名前の確認",
    sophieClueEnglishIntent: "Give your name formally",
    sophiePhoneticHint: "[X] to mou-shi-ma-su",
    targetLanguageAnchor: "[X]と申します",
    slotOptions: ["田中", "アレックス", "サラ", "モハメッド"],
    npcAudioResponseTranscript: "はい、ありがとうございます。どうぞお入りください。",
    graffitiStyleTag: "White '名前' calligraphy name tag",
    npcName: "入国審査官",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Handover: passport ───────────────
  Scenario(
    scenarioId: "JA_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. A second booth. The officer holds "
        "out his hand. You hand over your passport "
        "with both hands — the Japanese way.",
    introFlag: true,
    environmentalTextPrompt: "🪪 セカンドチェック",
    sophieClueEnglishIntent: "Hand over your passport and say here you are",
    sophiePhoneticHint: "ko-chi-ra de-su",
    targetLanguageAnchor: "こちらです",
    slotOptions: ["こちらです", "どうぞ", "はい、こちら"],
    npcAudioResponseTranscript: "ありがとうございます。少々お待ちください。",
    graffitiStyleTag: "Orange 'パスポート' document stamp",
    npcName: "係員",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Baggage: missing bag report ──────
  Scenario(
    scenarioId: "JA_M02_S05",
    missionId: 2,
    environmentContext:
        "Baggage claim. The belt stops. Your bag is not here. "
        "A ground staff member in a JAL uniform "
        "approaches with a clipboard.",
    introFlag: true,
    environmentalTextPrompt: "🧳 手荷物受取所 — バッグがない",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "ni-mo-tsu-ga [X]-bin ni a-ri-ma-shi-ta",
    targetLanguageAnchor: "荷物が[X]便にありました",
    slotOptions: ["JL004", "NH802", "JL006", "OZ102"],
    npcAudioResponseTranscript: "お調べします。便名をもう一度お願いします。",
    graffitiStyleTag: "Green '手荷物' conveyor belt tag",
    npcName: "地上係員",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location: where is the exit ──────
  Scenario(
    scenarioId: "JA_M02_S06",
    missionId: 2,
    environmentContext:
        "Bag retrieved. Narita is vast — three terminals, "
        "endless corridors. Signs in kanji and English "
        "but you want to confirm verbally.",
    introFlag: true,
    environmentalTextPrompt: "🚪 出口はどこですか？",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "de-gu-chi wa do-ko de-su ka",
    targetLanguageAnchor: "出口はどこですか？",
    slotOptions: ["出口", "到着ロビー", "電車の乗り場", "バス乗り場"],
    npcAudioResponseTranscript: "まっすぐ行って、右に曲がってください。",
    graffitiStyleTag: "Cyan '→ 出口' neon exit arrow",
    npcName: "空港スタッフ",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Availability: is there a bus ─────
  Scenario(
    scenarioId: "JA_M02_S07",
    missionId: 2,
    environmentContext:
        "Outside the terminal. Cool air. Tokyo is 60km away. "
        "There are buses, trains, taxis. "
        "You want to confirm the limousine bus exists.",
    introFlag: true,
    environmentalTextPrompt: "🚌 リムジンバスはありますか？",
    sophieClueEnglishIntent: "Ask if there is a limousine bus to Tokyo",
    sophiePhoneticHint: "ri-mu-jin ba-su wa a-ri-ma-su ka",
    targetLanguageAnchor: "リムジンバスはありますか？",
    slotOptions: ["リムジンバス", "成田エクスプレス", "タクシー乗り場"],
    npcAudioResponseTranscript: "はい、あちらです。次は30分後の出発です。",
    graffitiStyleTag: "Yellow 'リムジンバス' bus stop tag",
    npcName: "案内係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S8: PAT_10 Rep 1 — Time: next Narita Express ────────
  Scenario(
    scenarioId: "JA_M02_S08",
    missionId: 2,
    environmentContext:
        "You decide on the Narita Express — faster. "
        "You find the ticket counter. "
        "What time is the next one?",
    introFlag: true,
    environmentalTextPrompt: "🚄 成田エクスプレス — 次は何時？",
    sophieClueEnglishIntent: "Ask what time the next train is",
    sophiePhoneticHint: "tsu-gi-no de-n-sha wa nan-ji de-su ka",
    targetLanguageAnchor: "次の電車は何時ですか？",
    slotOptions: ["次の電車", "次のバス", "最終電車", "始発電車"],
    npcAudioResponseTranscript: "次は14時15分発です。ホームは3番です。",
    graffitiStyleTag: "Purple '成田エクスプレス 🚄' schedule tag",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),

  // ── S9: PAT_15 Rep 1 — Repair: didn't catch platform ────
  Scenario(
    scenarioId: "JA_M02_S09",
    missionId: 2,
    environmentContext:
        "She said the platform number quickly. "
        "Was it 3 or 13? Japanese numbers at speed "
        "are merciless. You need her to repeat.",
    introFlag: false,
    environmentalTextPrompt: "😕 もう一度お願いします",
    sophieClueEnglishIntent: "Ask her to say it once more please",
    sophiePhoneticHint: "mou i-chi-do o-ne-gai shi-ma-su",
    targetLanguageAnchor: "もう一度お願いします",
    slotOptions: ["もう一度お願いします", "ゆっくり話してください", "聞こえませんでした"],
    npcAudioResponseTranscript: "3番ホームです。さ・ん・ば・ん。",
    graffitiStyleTag: "White 'もう一度' repeat request bubble",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: buy ticket to Shinjuku ───
  Scenario(
    scenarioId: "JA_M02_S10",
    missionId: 2,
    environmentContext:
        "At the ticket window. Shinjuku is your destination. "
        "One adult ticket. The clerk waits, hands ready.",
    introFlag: false,
    environmentalTextPrompt: "🎫 新宿まで一枚ください",
    sophieClueEnglishIntent: "Ask for one ticket to [X] please",
    sophiePhoneticHint: "[X] ma-de i-chi-mai ku-da-sai",
    targetLanguageAnchor: "[X]まで一枚ください",
    slotOptions: ["新宿", "渋谷", "東京", "品川"],
    npcAudioResponseTranscript: "はい、3,000円です。ありがとうございます。",
    graffitiStyleTag: "GOLD '任務完了' — 成田ターミナル cleared stamp",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),
];
