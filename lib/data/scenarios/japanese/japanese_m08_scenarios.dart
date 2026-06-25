// lib/data/scenarios/japanese/japanese_m08_scenarios.dart
//
// MISSION 8: レストラン・居酒屋 — RESTAURANT — 10 SCENARIOS
// ===========================================================
// Location: Izakaya in Shinjuku / Ramen-ya / Kaiseki counter
// Type: FULL MEAL + PEAK SOCIAL FLUENCY
// Pattern coverage:
//   PAT_02(R6), PAT_06(R7), PAT_13(R4), PAT_04(R5), PAT_11(R5),
//   PAT_16(R6), PAT_10(R4), PAT_01(R7-DRILL), PAT_09(R4), PAT_12(R7)
// Key forms: 予約があります、〜はありますか、〜をください、いくら、
//   〜なしで、乾杯！、何時まで、お会計、〜人前、ごちそうさまでした

import '../../../models/models.dart';

const List<Scenario> japaneseM08Scenarios = [

  // ── S1: PAT_02 Rep 6 — Claim dinner reservation ─────────
  Scenario(
    scenarioId: "JA_M08_S01",
    missionId: 8,
    environmentContext:
        "A hidden izakaya down an alley in Golden Gai. "
        "Paper lanterns, the sound of laughter and ice. "
        "The okami-san — the mistress of the house — "
        "slides the door open.",
    introFlag: true,
    environmentalTextPrompt: "🍶 居酒屋 — 予約をしています",
    sophieClueEnglishIntent: "Say you have a reservation for two",
    sophiePhoneticHint: "ni-mei de yo-ya-ku shi-te i-ma-su",
    targetLanguageAnchor: "二名で予約しています",
    slotOptions: ["二名で予約", "三名で予約", "四名で予約"],
    npcAudioResponseTranscript: "はい、お待ちしておりました！どうぞ、こちらへ。",
    graffitiStyleTag: "Red '予約 二名' lantern tag — izakaya style",
    npcName: "女将",
    npcAvatarEmoji: "👘",
  ),

  // ── S2: PAT_06 Rep 7 — Ask for counter seat ─────────────
  Scenario(
    scenarioId: "JA_M08_S02",
    missionId: 8,
    environmentContext:
        "You'd prefer the counter — to watch the chef "
        "and feel the energy of the kitchen. "
        "You ask if there's space.",
    introFlag: false,
    environmentalTextPrompt: "🍣 カウンター席はありますか？",
    sophieClueEnglishIntent: "Ask if there is a counter seat available",
    sophiePhoneticHint: "ka-u-n-ta-a se-ki wa a-ri-ma-su ka",
    targetLanguageAnchor: "カウンター席はありますか？",
    slotOptions: ["カウンター席", "個室", "座敷", "テーブル席"],
    npcAudioResponseTranscript: "はい、ちょうど空いています。どうぞ！",
    graffitiStyleTag: "Gold 'カウンター ✓' counter seat tag",
    npcName: "女将",
    npcAvatarEmoji: "👘",
  ),

  // ── S3: PAT_13 Rep 4 — Request: drinks menu ─────────────
  Scenario(
    scenarioId: "JA_M08_S03",
    missionId: 8,
    environmentContext:
        "Seated. The food menu arrives but "
        "you want the drinks menu first. "
        "Sake selection in this place is serious.",
    introFlag: false,
    environmentalTextPrompt: "🍶 お飲み物メニューをください",
    sophieClueEnglishIntent: "Ask for the drinks menu",
    sophiePhoneticHint: "o-no-mi-mo-no me-nyu-u wo ku-da-sai",
    targetLanguageAnchor: "お飲み物メニューをください",
    slotOptions: ["お飲み物メニュー", "日本酒リスト", "おすすめを教えて"],
    npcAudioResponseTranscript: "はい、当店の地酒リストです。福島と新潟が人気です。",
    graffitiStyleTag: "Cream '酒 🍶' sake menu tag",
    npcName: "スタッフ",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_04 Rep 5 — Ask price of chef's special ──────
  Scenario(
    scenarioId: "JA_M08_S04",
    missionId: 8,
    environmentContext:
        "The chef mentions today's 'omakase' option — "
        "chef's choice, seasonal. It sounds perfect "
        "but the price wasn't said.",
    introFlag: false,
    environmentalTextPrompt: "🍱 おまかせはいくらですか？",
    sophieClueEnglishIntent: "Ask how much the omakase costs",
    sophiePhoneticHint: "o-ma-ka-se wa i-ku-ra de-su ka",
    targetLanguageAnchor: "おまかせはいくらですか？",
    slotOptions: ["おまかせ", "本日のおすすめ", "コース料理"],
    npcAudioResponseTranscript: "お一人様8,000円でございます。全7品です。",
    graffitiStyleTag: "Black 'おまかせ ¥8,000' special tag",
    npcName: "板前",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S5: PAT_11 Rep 5 — Dietary: no raw fish ─────────────
  Scenario(
    scenarioId: "JA_M08_S05",
    missionId: 8,
    environmentContext:
        "Omakase usually includes sashimi. "
        "You don't eat raw fish. "
        "You tell the chef before he begins.",
    introFlag: false,
    environmentalTextPrompt: "🐟 生魚は食べられません",
    sophieClueEnglishIntent: "Say you can't eat raw fish",
    sophiePhoneticHint: "na-ma-za-ka-na wa ta-be-ra-re-ma-se-n",
    targetLanguageAnchor: "生魚は食べられません",
    slotOptions: ["生魚は食べられません", "刺身は苦手です", "アレルギーがあります"],
    npcAudioResponseTranscript: "わかりました。焼き物に変えます。何でもおっしゃってください。",
    graffitiStyleTag: "White '生魚 ✗' dietary restriction tag",
    npcName: "板前",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S6: PAT_16 Rep 6 — Toast: kanpai ────────────────────
  Scenario(
    scenarioId: "JA_M08_S06",
    missionId: 8,
    environmentContext:
        "First drinks arrive. Chilled local sake. "
        "Your companion raises their glass. "
        "This is the moment.",
    introFlag: false,
    environmentalTextPrompt: "🥂 乾杯！",
    sophieClueEnglishIntent: "Toast cheers in Japanese",
    sophiePhoneticHint: "kan-pa-i",
    targetLanguageAnchor: "乾杯！",
    slotOptions: ["乾杯！", "乾杯しましょう", "いただきます！"],
    npcAudioResponseTranscript: "乾杯！いい旅になりますように！",
    graffitiStyleTag: "Gold '🥂 乾杯！' toast tag",
    npcName: "同伴者",
    npcAvatarEmoji: "😄",
  ),

  // ── S7: PAT_10 Rep 4 — Ask what time kitchen closes ─────
  Scenario(
    scenarioId: "JA_M08_S07",
    missionId: 8,
    environmentContext:
        "Your friend is late — 30 minutes. It's 9:30 PM. "
        "Golden Gai closes early. How long do you have?",
    introFlag: true,
    environmentalTextPrompt: "🕙 何時まで営業していますか？",
    sophieClueEnglishIntent: "Ask what time they are open until",
    sophiePhoneticHint: "nan-ji ma-de e-i-gyou shi-te i-ma-su ka",
    targetLanguageAnchor: "何時まで営業していますか？",
    slotOptions: ["何時まで営業？", "ラストオーダーは？", "何時まで注文できますか？"],
    npcAudioResponseTranscript: "ラストオーダーは11時、閉店は11時半です。",
    graffitiStyleTag: "Purple '🕙 L.O. 23:00' closing time tag",
    npcName: "スタッフ",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_01 Rep 7 — DRILL: order dessert ─────────────
  Scenario(
    scenarioId: "JA_M08_S08",
    missionId: 8,
    environmentContext:
        "The omakase was extraordinary. Seven courses. "
        "The chef offers matcha ice cream. "
        "You couldn't say no.",
    introFlag: false,
    environmentalTextPrompt: "🍵 抹茶アイスをください",
    sophieClueEnglishIntent: "Order the matcha ice cream please",
    sophiePhoneticHint: "ma-t-cha a-i-su wo ku-da-sai",
    targetLanguageAnchor: "抹茶アイスをください",
    slotOptions: ["抹茶アイス", "プリン", "わらび餅", "ぜんざい"],
    npcAudioResponseTranscript: "かしこまりました。宇治の上等抹茶を使っています。",
    graffitiStyleTag: "Green '抹茶アイス 🍵' dessert tag",
    npcName: "板前",
    npcAvatarEmoji: "👨‍🍳",
  ),

  // ── S9: PAT_09 Rep 4 — Ask to split the bill ────────────
  Scenario(
    scenarioId: "JA_M08_S09",
    missionId: 8,
    environmentContext:
        "Bill time. Two people, one check. "
        "Splitting a bill in Japan is perfectly normal "
        "and has a specific phrase.",
    introFlag: false,
    environmentalTextPrompt: "🧾 別々でお願いします",
    sophieClueEnglishIntent: "Ask to pay separately",
    sophiePhoneticHint: "be-tsu-be-tsu de o-ne-gai shi-ma-su",
    targetLanguageAnchor: "別々でお願いします",
    slotOptions: ["別々でお願いします", "割り勘でお願いします", "一緒でいいです"],
    npcAudioResponseTranscript: "かしこまりました。お二人分のお会計を出します。",
    graffitiStyleTag: "Grey '割り勘 ÷2' bill split tag",
    npcName: "女将",
    npcAvatarEmoji: "👘",
  ),

  // ── S10: PAT_12 Rep 7 — Compliment: it was delicious ────
  Scenario(
    scenarioId: "JA_M08_S10",
    missionId: 8,
    environmentContext:
        "Coats on. The okami-san bows at the door. "
        "A perfect evening. You say the magic phrase "
        "that every Japanese chef wants to hear.",
    introFlag: false,
    environmentalTextPrompt: "⭐ ごちそうさまでした",
    sophieClueEnglishIntent: "Say it was a feast / thank you for the meal",
    sophiePhoneticHint: "go-chi-so-u sa-ma de-shi-ta",
    targetLanguageAnchor: "ごちそうさまでした！とても美味しかったです",
    slotOptions: ["ごちそうさまでした", "美味しかったです", "最高でした"],
    npcAudioResponseTranscript: "ありがとうございます！またいつでもどうぞ！",
    graffitiStyleTag: "GOLD '任務完了' — 居酒屋 dinner stamp",
    npcName: "女将",
    npcAvatarEmoji: "👘",
  ),
];
