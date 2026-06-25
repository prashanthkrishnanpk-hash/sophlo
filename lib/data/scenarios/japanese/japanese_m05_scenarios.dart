// lib/data/scenarios/japanese/japanese_m05_scenarios.dart
//
// MISSION 5: カフェ・コンビニ — CAFÉ & CONBINI — 10 SCENARIOS
// ==============================================================
// Location: Doutor Coffee Shinjuku / Lawson convenience store
// Type: FOOD + SOCIAL — the daily rhythm of Tokyo
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Key forms: 〜はありますか、〜をください、〜をお願いします、
//   〜が欲しいです、いくら、〜なしで、ベジタリアン、持ち帰り

import '../../../models/models.dart';

const List<Scenario> japaneseM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Ask if this seat is free ─────────
  Scenario(
    scenarioId: "JA_M05_S01",
    missionId: 5,
    environmentContext:
        "Doutor Coffee. Warm, busy. A salaryman in a suit "
        "has papers spread everywhere but one chair "
        "at his table is clearly empty. You point.",
    introFlag: true,
    environmentalTextPrompt: "☕ カフェ — この席は空いてますか？",
    sophieClueEnglishIntent: "Ask if this seat is free",
    sophiePhoneticHint: "ko-no se-ki wa a-i-te i-ma-su ka",
    targetLanguageAnchor: "この席は空いていますか？",
    slotOptions: ["空いていますか？", "使っていいですか？", "座ってもいいですか？"],
    npcAudioResponseTranscript: "どうぞ、使ってください。",
    graffitiStyleTag: "Yellow '空席' open seat tag — café style",
    npcName: "サラリーマン",
    npcAvatarEmoji: "👔",
  ),

  // ── S2: PAT_02 Rep 3 — Order coffee ─────────────────────
  Scenario(
    scenarioId: "JA_M05_S02",
    missionId: 5,
    environmentContext:
        "At the counter. A cheerful staff member waits. "
        "The menu is in Japanese only. "
        "You know what you want.",
    introFlag: true,
    environmentalTextPrompt: "☕ カウンター — 注文する",
    sophieClueEnglishIntent: "Order a coffee please",
    sophiePhoneticHint: "ko-u-hi-i o ku-da-sai",
    targetLanguageAnchor: "コーヒーをください",
    slotOptions: ["コーヒー", "カフェラテ", "アイスコーヒー", "抹茶ラテ"],
    npcAudioResponseTranscript: "Mサイズでよろしいですか？",
    graffitiStyleTag: "Brown 'コーヒー' barista tag — ceramic cup",
    npcName: "スタッフ",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — DRILL: order food item ───────────
  Scenario(
    scenarioId: "JA_M05_S03",
    missionId: 5,
    environmentContext:
        "You're hungry. The pastry display has something "
        "that looks incredible — a melon pan. "
        "You point and ask.",
    introFlag: false,
    environmentalTextPrompt: "🍞 これをください",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "[X] o ku-da-sai",
    targetLanguageAnchor: "[X]をください",
    slotOptions: ["メロンパン", "サンドイッチ", "クロワッサン", "おにぎり"],
    npcAudioResponseTranscript: "はい、焼きたてですよ！",
    graffitiStyleTag: "Orange 'これ！' pointing tag — bakery style",
    npcName: "スタッフ",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Ask for the bill ─────────────────
  Scenario(
    scenarioId: "JA_M05_S04",
    missionId: 5,
    environmentContext:
        "Coffee finished. You have a meeting in 20 minutes. "
        "You need to pay. In Japan, you usually pay at the register "
        "but you want to flag it.",
    introFlag: false,
    environmentalTextPrompt: "🧾 お会計をお願いします",
    sophieClueEnglishIntent: "Ask for the bill",
    sophiePhoneticHint: "o-ka-i-ke-i o o-ne-gai shi-ma-su",
    targetLanguageAnchor: "お会計をお願いします",
    slotOptions: ["お会計をお願いします", "払います", "レジに行きます"],
    npcAudioResponseTranscript: "はい、640円になります。",
    graffitiStyleTag: "Grey 'お会計' receipt tag",
    npcName: "スタッフ",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Ask price at convenience store ───
  Scenario(
    scenarioId: "JA_M05_S05",
    missionId: 5,
    environmentContext:
        "Lawson. 11 PM. A specific onigiri doesn't have "
        "a price tag. The barcode is obscured. "
        "You ask the tired clerk.",
    introFlag: true,
    environmentalTextPrompt: "🏪 コンビニ — これはいくらですか？",
    sophieClueEnglishIntent: "Ask how much this costs",
    sophiePhoneticHint: "ko-re wa i-ku-ra de-su ka",
    targetLanguageAnchor: "これはいくらですか？",
    slotOptions: ["いくらですか？", "値段は？", "税込みでいくら？"],
    npcAudioResponseTranscript: "158円です。税込みで170円になります。",
    graffitiStyleTag: "Blue 'いくら？' conbini price tag",
    npcName: "店員",
    npcAvatarEmoji: "🏪",
  ),

  // ── S6: PAT_13 Rep 2 — Ask staff to heat food ───────────
  Scenario(
    scenarioId: "JA_M05_S06",
    missionId: 5,
    environmentContext:
        "You've picked a konbini bento. Cold. "
        "Every Japanese convenience store has a microwave. "
        "You ask the staff.",
    introFlag: false,
    environmentalTextPrompt: "🍱 温めてもらえますか？",
    sophieClueEnglishIntent: "Ask if they can heat it up",
    sophiePhoneticHint: "a-ta-ta-me-te mo-ra-e-ma-su ka",
    targetLanguageAnchor: "温めてもらえますか？",
    slotOptions: ["温めてください", "レンジで温めて", "温めてもらえますか？"],
    npcAudioResponseTranscript: "はい、少々お待ちください。500Wで2分です。",
    graffitiStyleTag: "Red '温め ✓' microwave tag — conbini style",
    npcName: "店員",
    npcAvatarEmoji: "🏪",
  ),

  // ── S7: PAT_11 Rep 2 — Dietary: no meat please ──────────
  Scenario(
    scenarioId: "JA_M05_S07",
    missionId: 5,
    environmentContext:
        "A ramen shop near the hotel. You're vegetarian. "
        "Ramen broth is often pork-based. "
        "You need to flag this before ordering.",
    introFlag: true,
    environmentalTextPrompt: "🍜 ベジタリアンです",
    sophieClueEnglishIntent: "Say you are vegetarian",
    sophiePhoneticHint: "be-ji-ta-ri-an de-su",
    targetLanguageAnchor: "ベジタリアンです",
    slotOptions: ["ベジタリアンです", "肉を食べません", "ヴィーガンです"],
    npcAudioResponseTranscript: "野菜ラーメンがございます。お出汁は昆布です。",
    graffitiStyleTag: "Green 'ベジタリアン ✓' dietary tag",
    npcName: "店主",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Order takeaway ───────────────────
  Scenario(
    scenarioId: "JA_M05_S08",
    missionId: 5,
    environmentContext:
        "A takoyaki stall in Harajuku. You want to eat "
        "walking around Takeshita Street. "
        "You order for takeaway.",
    introFlag: true,
    environmentalTextPrompt: "🐙 持ち帰りで — たこ焼き",
    sophieClueEnglishIntent: "Order [X] to take away",
    sophiePhoneticHint: "[X] o mo-chi-ka-e-ri de o-ne-gai shi-ma-su",
    targetLanguageAnchor: "[X]を持ち帰りでお願いします",
    slotOptions: ["たこ焼き6個", "焼きそば", "クレープ", "チョコバナナ"],
    npcAudioResponseTranscript: "はい！ソースとマヨネーズ、両方かけますか？",
    graffitiStyleTag: "Pink '持ち帰り' takeaway tag — street food",
    npcName: "屋台のおじさん",
    npcAvatarEmoji: "🍡",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: ask where they're from ────
  Scenario(
    scenarioId: "JA_M05_S09",
    missionId: 5,
    environmentContext:
        "The takoyaki vendor has been chatting to you. "
        "He has a slight Osaka accent — you're curious. "
        "You ask.",
    introFlag: false,
    environmentalTextPrompt: "🌍 どちらのご出身ですか？",
    sophieClueEnglishIntent: "Ask where he is from",
    sophiePhoneticHint: "do-chi-ra no go-shu-s-shin de-su ka",
    targetLanguageAnchor: "どちらのご出身ですか？",
    slotOptions: ["どちらのご出身ですか？", "どこから来ましたか？", "出身はどこですか？"],
    npcAudioResponseTranscript: "大阪です！もう20年東京にいますけどね（笑）",
    graffitiStyleTag: "Orange '大阪→東京' origin tag — travel sticker",
    npcName: "屋台のおじさん",
    npcAvatarEmoji: "🍡",
  ),

  // ── S10: PAT_16 Rep 5 — Warm social farewell ────────────
  Scenario(
    scenarioId: "JA_M05_S10",
    missionId: 5,
    environmentContext:
        "Five minutes of genuine conversation over takoyaki. "
        "Time to go. He waves you off with a smile.",
    introFlag: false,
    environmentalTextPrompt: "👋 またね — 別れの挨拶",
    sophieClueEnglishIntent: "Say it was nice talking and goodbye",
    sophiePhoneticHint: "ta-no-shi-ka-t-ta de-su, ma-ta ne",
    targetLanguageAnchor: "楽しかったです。またね！",
    slotOptions: ["またね！", "またいつか！", "お話しできてよかったです"],
    npcAudioResponseTranscript: "また来てね！東京楽しんでね！",
    graffitiStyleTag: "GOLD '任務完了' — 原宿カフェ stamp",
    npcName: "屋台のおじさん",
    npcAvatarEmoji: "🍡",
  ),
];
