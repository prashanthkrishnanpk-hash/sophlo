// lib/data/scenarios/japanese/japanese_m09_scenarios.dart
//
// MISSION 9: 交通 — GETTING AROUND TOKYO — 10 SCENARIOS
// ========================================================
// Location: Tokyo Metro / JR Yamanote Line / Street navigation
// Type: NAVIGATION + TRANSIT — Tokyo's complex network
// Pattern coverage:
//   PAT_03(R3,R4), PAT_14(R5,R6), PAT_10(R4), PAT_13(R5),
//   PAT_06(R7), PAT_09(R4), PAT_15(R7), PAT_02(R7), PAT_12(R8), PAT_01(R8)
// Key forms: 〜はどこですか、〜へ行きたいです、何時、〜をお願いします、
//   〜はありますか、〜まで、もう一度、〜枚ください、迷子です

import '../../../models/models.dart';

const List<Scenario> japaneseM09Scenarios = [

  // ── S1: PAT_03 Rep 3 — Location: where is the metro ─────
  Scenario(
    scenarioId: "JA_M09_S01",
    missionId: 9,
    environmentContext:
        "Out of the hotel. You need Shinjuku Station. "
        "It is one of the busiest stations in the world "
        "and also genuinely confusing to find for the first time.",
    introFlag: true,
    environmentalTextPrompt: "🚇 新宿駅はどこですか？",
    sophieClueEnglishIntent: "Ask where Shinjuku Station is",
    sophiePhoneticHint: "shin-ju-ku e-ki wa do-ko de-su ka",
    targetLanguageAnchor: "新宿駅はどこですか？",
    slotOptions: ["新宿駅", "地下鉄の駅", "JRの改札", "出口"],
    npcAudioResponseTranscript: "あの大きいビルの向こうです。南口が近いですよ。",
    graffitiStyleTag: "Cyan '→ 新宿駅' metro direction tag",
    npcName: "通行人",
    npcAvatarEmoji: "👤",
  ),

  // ── S2: PAT_14 Rep 5 — Direction: I want to go to [X] ───
  Scenario(
    scenarioId: "JA_M09_S02",
    missionId: 9,
    environmentContext:
        "Inside the station. A staff member in a JR uniform. "
        "You need to tell him where you want to go "
        "to get platform advice.",
    introFlag: true,
    environmentalTextPrompt: "🚉 〜へ行きたいです",
    sophieClueEnglishIntent: "Say you want to go to [X]",
    sophiePhoneticHint: "[X] e i-ki-ta-i de-su",
    targetLanguageAnchor: "[X]へ行きたいです",
    slotOptions: ["渋谷", "原宿", "秋葉原", "上野"],
    npcAudioResponseTranscript: "山手線の外回りで3駅です。3番ホームです。",
    graffitiStyleTag: "Green '山手線' JR platform tag",
    npcName: "JR駅員",
    npcAvatarEmoji: "🚃",
  ),

  // ── S3: PAT_10 Rep 4 — Ask time of last train ───────────
  Scenario(
    scenarioId: "JA_M09_S03",
    missionId: 9,
    environmentContext:
        "11 PM. Deep in Shibuya. Tokyo trains stop "
        "around midnight — Japan's only real transport failing. "
        "You need to know the last one.",
    introFlag: true,
    environmentalTextPrompt: "🌙 終電は何時ですか？",
    sophieClueEnglishIntent: "Ask what time the last train is",
    sophiePhoneticHint: "shu-u-den wa nan-ji de-su ka",
    targetLanguageAnchor: "終電は何時ですか？",
    slotOptions: ["終電", "次の電車", "始発電車"],
    npcAudioResponseTranscript: "新宿行きの終電は0時03分です。急いでください！",
    graffitiStyleTag: "Purple '🌙 終電 00:03' last train tag",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),

  // ── S4: PAT_13 Rep 5 — Ask staff to validate ticket ─────
  Scenario(
    scenarioId: "JA_M09_S04",
    missionId: 9,
    environmentContext:
        "Your IC card (Suica) ran out at the gate. "
        "The barrier beeped red. Embarrassing. "
        "A staff member opens the side gate.",
    introFlag: true,
    environmentalTextPrompt: "🎫 Suicaにチャージしたいです",
    sophieClueEnglishIntent: "Say you want to top up your Suica",
    sophiePhoneticHint: "su-i-ca ni cha-a-ji shi-ta-i de-su",
    targetLanguageAnchor: "SuicaにチャージしたいのでSuicaにチャージしたいです",
    slotOptions: ["Suicaにチャージ", "ICカードを使いたい", "切符を買いたい"],
    npcAudioResponseTranscript: "チャージ機はあちらにございます。案内します。",
    graffitiStyleTag: "Blue 'Suica チャージ' IC card tag",
    npcName: "改札係",
    npcAvatarEmoji: "🎫",
  ),

  // ── S5: PAT_03 Rep 4 — Location: where is the bus stop ──
  Scenario(
    scenarioId: "JA_M09_S05",
    missionId: 9,
    environmentContext:
        "You want the Hachiko bus — a tourist loop "
        "around Shibuya. You need the stop.",
    introFlag: true,
    environmentalTextPrompt: "🚌 バス停はどこですか？",
    sophieClueEnglishIntent: "Ask where the bus stop is",
    sophiePhoneticHint: "ba-su te-i wa do-ko de-su ka",
    targetLanguageAnchor: "バス停はどこですか？",
    slotOptions: ["バス停", "ハチ公バスの乗り場", "タクシー乗り場"],
    npcAudioResponseTranscript: "ハチ公口を出て左、横断歩道の先です。",
    graffitiStyleTag: "Orange '🚌 バス停' bus stop tag",
    npcName: "警備員",
    npcAvatarEmoji: "👮",
  ),

  // ── S6: PAT_09 Rep 4 — Ask for return ticket ────────────
  Scenario(
    scenarioId: "JA_M09_S06",
    missionId: 9,
    environmentContext:
        "Day trip to Nikko — the ornate Toshogu shrine. "
        "At Asakusa Station, you buy your ticket. "
        "Return, obviously.",
    introFlag: true,
    environmentalTextPrompt: "🎫 日光まで往復ください",
    sophieClueEnglishIntent: "Ask for a return ticket to Nikko",
    sophiePhoneticHint: "ni-k-kou ma-de o-u-fu-ku ku-da-sai",
    targetLanguageAnchor: "日光まで往復ください",
    slotOptions: ["往復ください", "片道ください", "特急券も"],
    npcAudioResponseTranscript: "特急スペーシアをご利用ですか？往復5,240円です。",
    graffitiStyleTag: "Burgundy '往復 ✓' return ticket tag",
    npcName: "みどりの窓口",
    npcAvatarEmoji: "🎫",
  ),

  // ── S7: PAT_14 Rep 6 — Lost: emergency direction ────────
  Scenario(
    scenarioId: "JA_M09_S07",
    missionId: 9,
    environmentContext:
        "Nikko. Stunning. Also enormous. "
        "You've wandered off the main path "
        "and genuinely don't know which way leads back.",
    introFlag: true,
    environmentalTextPrompt: "🆘 迷子です",
    sophieClueEnglishIntent: "Say you are lost",
    sophiePhoneticHint: "mi-chi ni ma-yo-i-ma-shi-ta",
    targetLanguageAnchor: "道に迷いました",
    slotOptions: ["道に迷いました", "迷子になりました", "どこかわかりません"],
    npcAudioResponseTranscript: "大丈夫ですよ。東照宮はあちらの坂を下りると見えます。",
    graffitiStyleTag: "Red '迷子 SOS' emergency tag",
    npcName: "巫女さん",
    npcAvatarEmoji: "⛩️",
  ),

  // ── S8: PAT_02 Rep 7 — Buy IC card ──────────────────────
  Scenario(
    scenarioId: "JA_M09_S08",
    missionId: 9,
    environmentContext:
        "You've decided to get a proper Suica card "
        "for the rest of your trip. At the machine, "
        "you ask the staff member.",
    introFlag: true,
    environmentalTextPrompt: "💳 Suicaを作りたいです",
    sophieClueEnglishIntent: "Say you want to get a Suica card",
    sophiePhoneticHint: "su-i-ca wo tsu-ku-ri-ta-i de-su",
    targetLanguageAnchor: "Suicaを作りたいです",
    slotOptions: ["Suicaを作りたい", "ICカードが欲しい", "交通カードをください"],
    npcAudioResponseTranscript: "こちらの機械で作れます。デポジット500円が必要です。",
    graffitiStyleTag: "Blue 'Suica 🐧' penguin card tag",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),

  // ── S9: PAT_15 Rep 7 — Repair: wrong platform? ──────────
  Scenario(
    scenarioId: "JA_M09_S09",
    missionId: 9,
    environmentContext:
        "Platform 4. You think. But the display shows "
        "Ueno not Shinjuku. Either the display is wrong "
        "or you are on the wrong platform.",
    introFlag: false,
    environmentalTextPrompt: "😕 このホームは合ってますか？",
    sophieClueEnglishIntent: "Ask if this is the right platform",
    sophiePhoneticHint: "ko-no ho-o-mu wa a-t-te i-ma-su ka",
    targetLanguageAnchor: "このホームは合っていますか？",
    slotOptions: ["このホームで合ってますか？", "新宿行きはここですか？", "4番ホームですよね？"],
    npcAudioResponseTranscript: "いいえ、新宿は3番ホームです。こちらは内回りです。",
    graffitiStyleTag: "White 'このホーム？' confirmation bubble",
    npcName: "乗客",
    npcAvatarEmoji: "👤",
  ),

  // ── S10: PAT_01 Rep 8 — DRILL: ask for metro map ────────
  Scenario(
    scenarioId: "JA_M09_S10",
    missionId: 9,
    environmentContext:
        "Back at the station. You want a paper map "
        "of the Tokyo Metro — the digital one drains "
        "your battery. The station office has them.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ 地下鉄のマップをください",
    sophieClueEnglishIntent: "Ask for a metro map please",
    sophiePhoneticHint: "chi-ka-te-tsu no ma-p-pu wo ku-da-sai",
    targetLanguageAnchor: "地下鉄のマップをください",
    slotOptions: ["地下鉄のマップ", "路線図", "観光マップ"],
    npcAudioResponseTranscript: "はい、どうぞ！英語版もありますよ。",
    graffitiStyleTag: "GOLD '任務完了' — 東京交通 cleared stamp",
    npcName: "駅員",
    npcAvatarEmoji: "🚃",
  ),
];
