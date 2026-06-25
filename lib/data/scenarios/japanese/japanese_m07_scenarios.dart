// lib/data/scenarios/japanese/japanese_m07_scenarios.dart
//
// MISSION 7: 薬局・病院 — PHARMACY & CLINIC — 10 SCENARIOS
// ===========================================================
// Location: Matsumoto Kiyoshi pharmacy, Shinjuku / Clinic
// Type: HEALTH + URGENCY — survival-critical vocabulary
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Key forms: 頭が痛いです、熱があります、〜アレルギーです、
//   〜はありますか、いくら、何回、〜をください、こちら、もう一度

import '../../../models/models.dart';

const List<Scenario> japaneseM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Symptom: headache ────────────────
  Scenario(
    scenarioId: "JA_M07_S01",
    missionId: 7,
    environmentContext:
        "Matsumoto Kiyoshi. Bright, white, overwhelming. "
        "You've had a headache since the flight. "
        "The pharmacist in a white coat looks up.",
    introFlag: true,
    environmentalTextPrompt: "💊 薬局 — 夜10時",
    sophieClueEnglishIntent: "Say you have a headache",
    sophiePhoneticHint: "a-ta-ma ga i-ta-i de-su",
    targetLanguageAnchor: "頭が痛いです",
    slotOptions: ["頭が痛いです", "お腹が痛いです", "喉が痛いです", "背中が痛いです"],
    npcAudioResponseTranscript: "いつからですか？熱はありますか？",
    graffitiStyleTag: "White '薬局' pharmacy cross tag",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Symptom: fever ───────────────────
  Scenario(
    scenarioId: "JA_M07_S02",
    missionId: 7,
    environmentContext:
        "She asked about fever. Yes — you checked. "
        "38.2°. You've been cold and hot since afternoon.",
    introFlag: false,
    environmentalTextPrompt: "🌡️ 熱があります",
    sophieClueEnglishIntent: "Say you have a fever",
    sophiePhoneticHint: "ne-tsu ga a-ri-ma-su",
    targetLanguageAnchor: "熱があります",
    slotOptions: ["熱があります", "寒気がします", "吐き気がします", "めまいがします"],
    npcAudioResponseTranscript: "38度2分ですね。解熱剤をお出しします。",
    graffitiStyleTag: "Red '38.2℃' thermometer tag — clinical",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_02 Rep 5 — Request specific medicine ────────
  Scenario(
    scenarioId: "JA_M07_S03",
    missionId: 7,
    environmentContext:
        "You've used ibuprofen at home. You know the name. "
        "You'd like to try the Japanese equivalent.",
    introFlag: false,
    environmentalTextPrompt: "💊 イブプロフェンをください",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "[X] wo ku-da-sai",
    targetLanguageAnchor: "[X]をください",
    slotOptions: ["イブプロフェン", "バファリン", "ロキソニン", "パブロン"],
    npcAudioResponseTranscript: "こちらはいかがでしょう。同じ成分です。",
    graffitiStyleTag: "Blue '解熱剤' pill tag — blister pack",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_04 Rep 4 — Ask how much it costs ────────────
  Scenario(
    scenarioId: "JA_M07_S04",
    missionId: 7,
    environmentContext:
        "She places two boxes on the counter. "
        "Japan has no health insurance for tourists "
        "for pharmacy items. You need to know the cost.",
    introFlag: false,
    environmentalTextPrompt: "💴 いくらですか？",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "i-ku-ra de-su ka",
    targetLanguageAnchor: "いくらですか？",
    slotOptions: ["いくらですか？", "全部でいくら？", "安いものはありますか？"],
    npcAudioResponseTranscript: "解熱剤が980円、のど飴が320円です。",
    graffitiStyleTag: "Orange '値段' cost tag — pharmacy receipt",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_10 Rep 3 — Ask how often to take it ─────────
  Scenario(
    scenarioId: "JA_M07_S05",
    missionId: 7,
    environmentContext:
        "She's putting it in a paper bag. You need "
        "the dosage instructions before she seals it. "
        "How many times a day?",
    introFlag: false,
    environmentalTextPrompt: "🕐 一日何回飲みますか？",
    sophieClueEnglishIntent: "Ask how many times a day to take it",
    sophiePhoneticHint: "i-chi-ni-chi nan-ka-i no-mi-ma-su ka",
    targetLanguageAnchor: "一日何回飲みますか？",
    slotOptions: ["何回飲みますか？", "何時間おきですか？", "食後ですか？"],
    npcAudioResponseTranscript: "一日三回、食後に一錠ずつです。",
    graffitiStyleTag: "Purple '1日3回' dosage tag — prescription style",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_11 Rep 4 — Allergy declaration ───────────────
  Scenario(
    scenarioId: "JA_M07_S06",
    missionId: 7,
    environmentContext:
        "Wait — she mentioned aspirin. "
        "You're allergic to it. "
        "Flag this immediately.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ アスピリンアレルギーです",
    sophieClueEnglishIntent: "Say you are allergic to aspirin",
    sophiePhoneticHint: "a-su-pi-rin a-re-ru-gi-i de-su",
    targetLanguageAnchor: "アスピリンアレルギーです",
    slotOptions: ["アスピリンアレルギーです", "ペニシリンアレルギーです", "卵アレルギーです"],
    npcAudioResponseTranscript: "わかりました。アスピリンなしのものに変えます。",
    graffitiStyleTag: "Red '⚠ アレルギー' warning tag",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_06 Rep 6 — Ask if they have sunscreen ───────
  Scenario(
    scenarioId: "JA_M07_S07",
    missionId: 7,
    environmentContext:
        "While here — the Japanese summer sun "
        "burned you at Shinjuku Gyoen yesterday. "
        "Japanese sunscreens are legendary.",
    introFlag: true,
    environmentalTextPrompt: "☀️ 日焼け止めはありますか？",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "hi-ya-ke-do-me wa a-ri-ma-su ka",
    targetLanguageAnchor: "日焼け止めはありますか？",
    slotOptions: ["日焼け止め", "SPF50+のもの", "ウォータープルーフ"],
    npcAudioResponseTranscript: "はい、こちらです。アネッサのSPF50+が人気です。",
    graffitiStyleTag: "Yellow 'SPF50+ ☀' sun protection tag",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_08 Rep 4 — DRILL: hand over prescription ────
  Scenario(
    scenarioId: "JA_M07_S08",
    missionId: 7,
    environmentContext:
        "A clinic visit. The doctor has given you "
        "a written prescription — 処方箋. "
        "At the pharmacy counter, you present it.",
    introFlag: true,
    environmentalTextPrompt: "📋 処方箋があります",
    sophieClueEnglishIntent: "Say you have a prescription",
    sophiePhoneticHint: "sho-hou-sen ga a-ri-ma-su",
    targetLanguageAnchor: "処方箋があります",
    slotOptions: ["処方箋があります", "こちらが処方箋です", "先生にもらいました"],
    npcAudioResponseTranscript: "ありがとうございます。少々お待ちください。",
    graffitiStyleTag: "Green '処方箋 ✓' medical stamp",
    npcName: "薬剤師",
    npcAvatarEmoji: "👨‍⚕️",
  ),

  // ── S9: PAT_15 Rep 5 — Repair: before or after meals? ───
  Scenario(
    scenarioId: "JA_M07_S09",
    missionId: 7,
    environmentContext:
        "She said something about meals and the medicine "
        "but spoke quickly. Before or after? "
        "You need to be certain.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ 食前ですか食後ですか？",
    sophieClueEnglishIntent: "Ask if it's before or after meals",
    sophiePhoneticHint: "sho-ku-zen de-su ka sho-ku-go de-su ka",
    targetLanguageAnchor: "食前ですか？食後ですか？",
    slotOptions: ["食前ですか？食後ですか？", "食事の前ですか？", "いつ飲みますか？"],
    npcAudioResponseTranscript: "食後です。ご飯の後、30分以内に飲んでください。",
    graffitiStyleTag: "White '食前？食後？' clarification bubble",
    npcName: "薬剤師",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_12 Rep 6 — Next day: feeling better ────────
  Scenario(
    scenarioId: "JA_M07_S10",
    missionId: 7,
    environmentContext:
        "Next morning. Same pharmacy — a different pharmacist. "
        "He recognises you and asks how you're doing.",
    introFlag: false,
    environmentalTextPrompt: "😊 よくなりました",
    sophieClueEnglishIntent: "Say you feel better now thank you",
    sophiePhoneticHint: "yo-ku na-ri-ma-shi-ta, a-ri-ga-to-u",
    targetLanguageAnchor: "よくなりました。ありがとうございます",
    slotOptions: ["よくなりました", "元気になりました", "だいぶ楽になりました"],
    npcAudioResponseTranscript: "よかったです！残りの東京滞在を楽しんでください！",
    graffitiStyleTag: "GOLD '任務完了' — 薬局 cleared stamp",
    npcName: "薬剤師",
    npcAvatarEmoji: "👨‍⚕️",
  ),
];
