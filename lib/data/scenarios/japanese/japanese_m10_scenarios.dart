// lib/data/scenarios/japanese/japanese_m10_scenarios.dart
//
// MISSION 10: 出発 — THE DEPARTURE — 10 SCENARIOS
// ==================================================
// Location: Narita Airport Terminal 2 — Departure Day
// Type: GRAND FINALE — all 16 patterns at peak repetition
// Pattern coverage:
//   PAT_16(R7), PAT_05(R4), PAT_02(R8), PAT_04(R6), PAT_11(R6),
//   PAT_08(R6), PAT_03(R5), PAT_10(R5), PAT_09(R5), PAT_15(R8)+PAT_07(R5)
// Key forms: おはようございます、〜と申します、〜をお願いします、
//   いくら、〜なしで、こちらです、どこですか、何時、〜まで、
//   もう一度 + さようなら、〜から来ました

import '../../../models/models.dart';

const List<Scenario> japaneseM10Scenarios = [

  // ── S1: PAT_16 Rep 7 — Final greeting: check-in desk ────
  Scenario(
    scenarioId: "JA_M10_S01",
    missionId: 10,
    environmentContext:
        "Narita. Last morning. 6 AM. The check-in hall "
        "is already busy. A JAL agent in a crisp red uniform "
        "bows as you approach. You bow back and greet her.",
    introFlag: true,
    environmentalTextPrompt: "✈️ 成田空港 — チェックイン",
    sophieClueEnglishIntent: "Greet the check-in agent politely",
    sophiePhoneticHint: "o-ha-yo-u go-za-i-ma-su",
    targetLanguageAnchor: "おはようございます",
    slotOptions: ["おはようございます", "こんにちは", "よろしくお願いします"],
    npcAudioResponseTranscript: "おはようございます！本日のご搭乗便のチェックインでしょうか？",
    graffitiStyleTag: "Red '出発 ✈' JAL check-in tag — departure gate",
    npcName: "JAL地上係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 4 — Identity: confirm name on booking ─
  Scenario(
    scenarioId: "JA_M10_S02",
    missionId: 10,
    environmentContext:
        "She needs your booking name. "
        "Full formal register — this is an airport. "
        "Both hands on the passport.",
    introFlag: false,
    environmentalTextPrompt: "📋 お名前をお聞かせください",
    sophieClueEnglishIntent: "Give your name formally",
    sophiePhoneticHint: "[X] to mou-shi-ma-su",
    targetLanguageAnchor: "[X]と申します",
    slotOptions: ["田中", "エマ・スミス", "リー・ジュン", "アリ・ハサン"],
    npcAudioResponseTranscript: "ありがとうございます。パスポートをお願いします。",
    graffitiStyleTag: "White '名前確認' name confirm tag",
    npcName: "JAL地上係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S3: PAT_02 Rep 8 — Request: check in one bag ────────
  Scenario(
    scenarioId: "JA_M10_S03",
    missionId: 10,
    environmentContext:
        "You have one checked bag and a carry-on. "
        "You want to check in just the one suitcase.",
    introFlag: false,
    environmentalTextPrompt: "🧳 スーツケースを預けたいです",
    sophieClueEnglishIntent: "Say you want to check in one suitcase",
    sophiePhoneticHint: "su-u-tsu-ke-e-su wo a-zu-ke-ta-i de-su",
    targetLanguageAnchor: "スーツケースを預けたいです",
    slotOptions: ["スーツケースを預けたい", "荷物を預けたい", "手荷物を預けたい"],
    npcAudioResponseTranscript: "はい、スケールに乗せてください。",
    graffitiStyleTag: "Blue '手荷物預け' baggage check tag",
    npcName: "JAL地上係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S4: PAT_04 Rep 6 — Ask overweight fee ───────────────
  Scenario(
    scenarioId: "JA_M10_S04",
    missionId: 10,
    environmentContext:
        "24.5 kilos. Limit is 23. You're over. "
        "A red light. She's looking at you "
        "and typing something. How much will this cost?",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 超過料金はいくらですか？",
    sophieClueEnglishIntent: "Ask how much the excess baggage fee is",
    sophiePhoneticHint: "cho-u-ka ryou-kin wa i-ku-ra de-su ka",
    targetLanguageAnchor: "超過料金はいくらですか？",
    slotOptions: ["超過料金はいくら？", "追加料金は？", "いくら払えばいいですか？"],
    npcAudioResponseTranscript: "1.5キロのオーバーで3,000円になります。",
    graffitiStyleTag: "Orange '超過 ¥3,000' baggage fee tag",
    npcName: "JAL地上係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S5: PAT_11 Rep 6 — Negotiate: ask for exception ─────
  Scenario(
    scenarioId: "JA_M10_S05",
    missionId: 10,
    environmentContext:
        "3,000 yen for 1.5 kilos. You bought those "
        "extra omiyage gifts. Worth a polite try.",
    introFlag: false,
    environmentalTextPrompt: "🙏 特別に見逃してもらえますか？",
    sophieClueEnglishIntent: "Politely ask if she can overlook it this time",
    sophiePhoneticHint: "kon-do da-ke to-ku-be-tsu ni mi-no-ga-shi-te mo-ra-e-ma-su ka",
    targetLanguageAnchor: "今度だけ特別に見逃してもらえますか？",
    slotOptions: ["見逃してもらえますか？", "少しだけなので", "次回から気をつけます"],
    npcAudioResponseTranscript: "申し訳ありません、規定ですので…。でも今回は特別に。",
    graffitiStyleTag: "Pink '🙏 特別対応' exception request tag",
    npcName: "JAL地上係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S6: PAT_08 Rep 6 — Hand over boarding pass ──────────
  Scenario(
    scenarioId: "JA_M10_S06",
    missionId: 10,
    environmentContext:
        "Security. An officer in a white shirt. "
        "You have your boarding pass on your phone. "
        "You present it with a slight bow.",
    introFlag: true,
    environmentalTextPrompt: "🎫 搭乗券を見せてください",
    sophieClueEnglishIntent: "Hand over your boarding pass",
    sophiePhoneticHint: "ko-chi-ra de-su",
    targetLanguageAnchor: "こちらです",
    slotOptions: ["こちらです", "どうぞ", "搭乗券です"],
    npcAudioResponseTranscript: "ありがとうございます。手荷物をトレーに入れてください。",
    graffitiStyleTag: "Green '搭乗券 ✓' boarding pass stamp",
    npcName: "保安検査員",
    npcAvatarEmoji: "💂",
  ),

  // ── S7: PAT_03 Rep 5 — Ask where the gate is ────────────
  Scenario(
    scenarioId: "JA_M10_S07",
    missionId: 10,
    environmentContext:
        "Security cleared. The departure hall stretches "
        "for what feels like a kilometre. "
        "Your gate is 68. You ask a ground crew member.",
    introFlag: false,
    environmentalTextPrompt: "🚶 68番ゲートはどこですか？",
    sophieClueEnglishIntent: "Ask where gate 68 is",
    sophiePhoneticHint: "roku-ju-u-ha-chi-ban ge-e-to wa do-ko de-su ka",
    targetLanguageAnchor: "68番ゲートはどこですか？",
    slotOptions: ["68番ゲート", "搭乗口", "免税店", "ラウンジ"],
    npcAudioResponseTranscript: "こちらのシャトルに乗ってください。サテライト棟です。",
    graffitiStyleTag: "Cyan '→ Gate 68' departure gate tag",
    npcName: "地上係員",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S8: PAT_10 Rep 5 — Ask when boarding starts ─────────
  Scenario(
    scenarioId: "JA_M10_S08",
    missionId: 10,
    environmentContext:
        "Gate 68. Rows of seats, the tarmac visible beyond. "
        "Your flight is at 10:30. When does boarding begin? "
        "You ask the gate agent.",
    introFlag: false,
    environmentalTextPrompt: "⏰ 搭乗はいつ始まりますか？",
    sophieClueEnglishIntent: "Ask what time boarding starts",
    sophiePhoneticHint: "tou-jou wa nan-ji ni ha-ji-ma-ri-ma-su ka",
    targetLanguageAnchor: "搭乗は何時に始まりますか？",
    slotOptions: ["搭乗は何時？", "いつ搭乗できますか？", "優先搭乗は？"],
    npcAudioResponseTranscript: "10時ちょうどにご案内します。あと20分ほどお待ちください。",
    graffitiStyleTag: "Purple '⏰ 搭乗 10:00' boarding time tag",
    npcName: "ゲート係員",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S9: PAT_09 Rep 5 — Ask for window seat on board ─────
  Scenario(
    scenarioId: "JA_M10_S09",
    missionId: 10,
    environmentContext:
        "Boarding. The cabin crew greets you. "
        "Your allocated seat is a middle. "
        "You ask if there's a window seat free.",
    introFlag: false,
    environmentalTextPrompt: "🪟 窓側の席はありますか？",
    sophieClueEnglishIntent: "Ask if there is a window seat available",
    sophiePhoneticHint: "ma-do-ga-wa no se-ki wa a-ri-ma-su ka",
    targetLanguageAnchor: "窓側の席はありますか？",
    slotOptions: ["窓側の席", "通路側の席", "前の方の席"],
    npcAudioResponseTranscript: "確認します。34Aが空いています。よろしいですか？",
    graffitiStyleTag: "Sky '🪟 窓側 34A' window seat tag",
    npcName: "客室乗務員",
    npcAvatarEmoji: "✈️",
  ),

  // ── S10: PAT_15 Rep 8 + PAT_07 Rep 5 — Final repair + origin farewell
  Scenario(
    scenarioId: "JA_M10_S10",
    missionId: 10,
    environmentContext:
        "Cruising altitude. The cabin crew from earlier "
        "passes with drinks. She asks if this was your "
        "first time in Japan and where you're from. "
        "Last conversation of the arc.",
    introFlag: false,
    environmentalTextPrompt: "🌏 最後の会話 — さようなら、日本",
    sophieClueEnglishIntent: "Say you're from [X] and Tokyo was wonderful",
    sophiePhoneticHint: "[X] ka-ra ki-ma-shi-ta, tou-kyou wa su-ba-ra-shi-ka-t-ta de-su",
    targetLanguageAnchor: "[X]から来ました。東京は素晴らしかったです",
    slotOptions: ["また来たいです", "最高の旅でした", "日本語を勉強します"],
    npcAudioResponseTranscript: "ありがとうございます！またぜひ来てください！お待ちしています！",
    graffitiStyleTag: "GOLD '任務完了 — 東京アーク完成' Grand Finale stamp",
    npcName: "客室乗務員",
    npcAvatarEmoji: "✈️",
  ),
];
