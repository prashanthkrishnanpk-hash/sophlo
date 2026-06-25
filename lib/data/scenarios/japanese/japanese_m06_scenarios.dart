// lib/data/scenarios/japanese/japanese_m06_scenarios.dart
//
// MISSION 6: 市場・商店街 — MARKETS — 10 SCENARIOS
// ===================================================
// Location: Tsukiji Outer Market / Nakamise-dori, Asakusa
// Type: COMMERCE + NEGOTIATION — shopping Japanese style
// Note: Japanese sellers rarely negotiate; scenarios reflect reality —
//       more about requesting, comparing, and making choices.
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Key forms: いくら、〜をください、包んでください、少し高い、
//   こちらへ、こちらです、もう一度、〜に、〜はありますか

import '../../../models/models.dart';

const List<Scenario> japaneseM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question: how much ─────────
  Scenario(
    scenarioId: "JA_M06_S01",
    missionId: 6,
    environmentContext:
        "Tsukiji Outer Market. 8 AM. The smells of fresh fish, "
        "sesame, pickled plum. A stall has the most beautiful "
        "tamagoyaki you've ever seen. No price visible.",
    introFlag: true,
    environmentalTextPrompt: "🥚 築地 — これはいくらですか？",
    sophieClueEnglishIntent: "Ask how much this costs",
    sophiePhoneticHint: "ko-re wa i-ku-ra de-su ka",
    targetLanguageAnchor: "これはいくらですか？",
    slotOptions: ["いくらですか？", "お値段は？", "一個いくらですか？"],
    npcAudioResponseTranscript: "一本500円です。試食いかがですか？",
    graffitiStyleTag: "Orange '¥500' price tag — market style",
    npcName: "店主",
    npcAvatarEmoji: "🐟",
  ),

  // ── S2: PAT_02 Rep 4 — Order: two of them ───────────────
  Scenario(
    scenarioId: "JA_M06_S02",
    missionId: 6,
    environmentContext:
        "The sample was incredible. You want two "
        "to share with someone back at the hotel.",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 二本ください",
    sophieClueEnglishIntent: "Ask for two of them",
    sophiePhoneticHint: "ni-hon ku-da-sai",
    targetLanguageAnchor: "二本ください",
    slotOptions: ["二本ください", "一本ください", "三本ください"],
    npcAudioResponseTranscript: "はい、1,000円になります。ありがとうございます！",
    graffitiStyleTag: "Green '二本 ✓' count tag — market scale",
    npcName: "店主",
    npcAvatarEmoji: "🐟",
  ),

  // ── S3: PAT_13 Rep 3 — Request: wrap it carefully ───────
  Scenario(
    scenarioId: "JA_M06_S03",
    missionId: 6,
    environmentContext:
        "Nakamise-dori in Asakusa. A ceramics shop. "
        "A beautiful yunomi tea cup. It's fragile "
        "and you have a full day of walking ahead.",
    introFlag: true,
    environmentalTextPrompt: "🍵 包んでもらえますか？",
    sophieClueEnglishIntent: "Ask if they can wrap it for you",
    sophiePhoneticHint: "tsu-tsun-de mo-ra-e-ma-su ka",
    targetLanguageAnchor: "包んでもらえますか？",
    slotOptions: ["包んでもらえますか？", "箱に入れてもらえますか？", "丁寧に包んで"],
    npcAudioResponseTranscript: "もちろんです。プチプチで二重に包みますね。",
    graffitiStyleTag: "Teal '包装 ⚠' fragile wrap tag — ceramics",
    npcName: "店員",
    npcAvatarEmoji: "🍵",
  ),

  // ── S4: PAT_11 Rep 3 — Note: slightly expensive ─────────
  Scenario(
    scenarioId: "JA_M06_S04",
    missionId: 6,
    environmentContext:
        "The yunomi is ¥3,800. Beautiful but steep. "
        "In Japan, direct price negotiation is unusual — "
        "but you can comment politely.",
    introFlag: false,
    environmentalTextPrompt: "💸 少し高いですね",
    sophieClueEnglishIntent: "Say it's a little expensive",
    sophiePhoneticHint: "su-ko-shi ta-ka-i de-su ne",
    targetLanguageAnchor: "少し高いですね",
    slotOptions: ["少し高いですね", "もう少し安いものは？", "手頃なものはありますか？"],
    npcAudioResponseTranscript: "そうですね。こちらは2,500円のものもございます。",
    graffitiStyleTag: "Red '少し高い' polite price comment tag",
    npcName: "店員",
    npcAvatarEmoji: "🍵",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: ask for directions ────────
  Scenario(
    scenarioId: "JA_M06_S05",
    missionId: 6,
    environmentContext:
        "Lost in Nakamise's side alleys. The famous "
        "Senso-ji Temple gate should be nearby "
        "but everything looks the same.",
    introFlag: true,
    environmentalTextPrompt: "🧭 浅草寺はこちらですか？",
    sophieClueEnglishIntent: "Ask if Senso-ji is this way",
    sophiePhoneticHint: "sen-sou-ji wa ko-chi-ra de-su ka",
    targetLanguageAnchor: "浅草寺はこちらですか？",
    slotOptions: ["こちらですか？", "あちらですか？", "まっすぐですか？"],
    npcAudioResponseTranscript: "いいえ、あちらです。雷門が見えますよ。",
    graffitiStyleTag: "White '→ 浅草寺' direction tag — temple sign",
    npcName: "地元の人",
    npcAvatarEmoji: "👘",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: hand over cash ────────────
  Scenario(
    scenarioId: "JA_M06_S06",
    missionId: 6,
    environmentContext:
        "You decided on the ¥2,500 cup. Cash in Japan "
        "is still very much alive. You hand it over "
        "with both hands — always both hands.",
    introFlag: false,
    environmentalTextPrompt: "💴 現金でお支払い",
    sophieClueEnglishIntent: "Hand over the money",
    sophiePhoneticHint: "ko-chi-ra de-su",
    targetLanguageAnchor: "こちらです",
    slotOptions: ["こちらです", "どうぞ", "お願いします"],
    npcAudioResponseTranscript: "ありがとうございます。500円のお返しです。",
    graffitiStyleTag: "Gold '現金 ✓' cash payment stamp",
    npcName: "店員",
    npcAvatarEmoji: "🍵",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: didn't catch the price ───
  Scenario(
    scenarioId: "JA_M06_S07",
    missionId: 6,
    environmentContext:
        "A spice shop near Tsukiji. The vendor mumbled "
        "the price while weighing dried yuzu peel. "
        "You heard a number but aren't sure.",
    introFlag: true,
    environmentalTextPrompt: "🌿 いくらとおっしゃいましたか？",
    sophieClueEnglishIntent: "Ask how much she said",
    sophiePhoneticHint: "i-ku-ra to o-s-sha-i-ma-shi-ta ka",
    targetLanguageAnchor: "いくらとおっしゃいましたか？",
    slotOptions: ["いくらとおっしゃいましたか？", "もう一度お願いします", "聞こえませんでした"],
    npcAudioResponseTranscript: "450円でございます。ゆ・ず・ぴ・い・る、450円。",
    graffitiStyleTag: "White 'もう一度' repeat request bubble",
    npcName: "香辛料屋",
    npcAvatarEmoji: "🌿",
  ),

  // ── S8: PAT_09 Rep 3 — Ask for something as a gift ──────
  Scenario(
    scenarioId: "JA_M06_S08",
    missionId: 6,
    environmentContext:
        "You want to bring something home from Tokyo. "
        "Omiyage — the Japanese gift-giving culture "
        "is serious. You ask for guidance.",
    introFlag: true,
    environmentalTextPrompt: "🎁 お土産を探しています",
    sophieClueEnglishIntent: "Say you are looking for a gift souvenir",
    sophiePhoneticHint: "o-mi-ya-ge o sa-ga-shi-te i-ma-su",
    targetLanguageAnchor: "お土産を探しています",
    slotOptions: ["お土産", "プレゼント", "日本らしいもの"],
    npcAudioResponseTranscript: "どなたへですか？男性ですか女性ですか？",
    graffitiStyleTag: "Pink 'お土産 🎁' gift tag — furoshiki style",
    npcName: "店員",
    npcAvatarEmoji: "🏪",
  ),

  // ── S9: PAT_06 Rep 5 — Ask if they have smaller size ────
  Scenario(
    scenarioId: "JA_M06_S09",
    missionId: 6,
    environmentContext:
        "A lacquerware chopstick set. Perfect gift — "
        "but the only set on display is a full 10-piece. "
        "You want something smaller to carry.",
    introFlag: false,
    environmentalTextPrompt: "🥢 もっと小さいものはありますか？",
    sophieClueEnglishIntent: "Ask if there is a smaller one",
    sophiePhoneticHint: "mo-t-to chi-i-sa-i mo-no wa a-ri-ma-su ka",
    targetLanguageAnchor: "もっと小さいものはありますか？",
    slotOptions: ["もっと小さいもの", "別の色", "別のデザイン", "ペアセット"],
    npcAudioResponseTranscript: "はい、二膳セットもございます。こちらです。",
    graffitiStyleTag: "Burgundy 'もっと小さい？' size request tag",
    npcName: "漆器店員",
    npcAvatarEmoji: "🥢",
  ),

  // ── S10: PAT_01 Rep 6 — DRILL: ask for a bag ────────────
  Scenario(
    scenarioId: "JA_M06_S10",
    missionId: 6,
    environmentContext:
        "Arms full. Tamagoyaki, yunomi, chopstick set, "
        "dried yuzu. You need a bag — and ideally "
        "a sturdy one.",
    introFlag: false,
    environmentalTextPrompt: "🛍️ 袋をください",
    sophieClueEnglishIntent: "Ask for a bag please",
    sophiePhoneticHint: "fu-ku-ro wo ku-da-sai",
    targetLanguageAnchor: "袋をください",
    slotOptions: ["袋をください", "大きい袋をください", "手提げ袋はありますか？"],
    npcAudioResponseTranscript: "はい、どうぞ。また来てくださいね！",
    graffitiStyleTag: "GOLD '任務完了' — 築地・仲見世 stamp",
    npcName: "店員",
    npcAvatarEmoji: "🏪",
  ),
];
