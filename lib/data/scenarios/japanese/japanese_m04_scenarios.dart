// lib/data/scenarios/japanese/japanese_m04_scenarios.dart
//
// MISSION 4: ホテル — THE HOTEL — 10 SCENARIOS
// ================================================
// Location: Business hotel, Shinjuku, Tokyo
// Type: ACCOMMODATION + SERVICE REQUESTS — keigo (polite form)
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Key forms: 予約があります、〜と申します、こちらです、
//   〜はどこですか、〜はありますか、何時ですか、〜から来ました、
//   〜をお願いします、もう一度、〜をください

import '../../../models/models.dart';

const List<Scenario> japaneseM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Claim reservation ────────────────
  Scenario(
    scenarioId: "JA_M04_S01",
    missionId: 4,
    environmentContext:
        "Hotel lobby. Marble floors, the faint sound of koto music. "
        "The receptionist bows and waits. "
        "You approach with both hands ready.",
    introFlag: true,
    environmentalTextPrompt: "🏨 ホテル — チェックイン",
    sophieClueEnglishIntent: "Say you have a reservation",
    sophiePhoneticHint: "yo-ya-ku ga a-ri-ma-su",
    targetLanguageAnchor: "予約があります",
    slotOptions: ["予約があります", "予約をしています", "予約した者です"],
    npcAudioResponseTranscript: "いらっしゃいませ。お名前をお聞かせください。",
    graffitiStyleTag: "Gold '予約' booking tag — hotel marble style",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S2: PAT_05 Rep 3 — Formal name for reservation ──────
  Scenario(
    scenarioId: "JA_M04_S02",
    missionId: 4,
    environmentContext:
        "She's at the terminal, scrolling. "
        "Dozens of guests. She needs your name "
        "in the formal Japanese register.",
    introFlag: false,
    environmentalTextPrompt: "📋 お名前は？",
    sophieClueEnglishIntent: "Give your name formally",
    sophiePhoneticHint: "[X] to mou-shi-ma-su",
    targetLanguageAnchor: "[X]と申します",
    slotOptions: ["木村", "エマ・スミス", "リー", "アリ・ハサン"],
    npcAudioResponseTranscript: "ありがとうございます。シングルで二泊ですね。",
    graffitiStyleTag: "White '名前' calligraphy tag — formal hotel",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport for check-in ──
  Scenario(
    scenarioId: "JA_M04_S03",
    missionId: 4,
    environmentContext:
        "Japanese hotels require passport registration. "
        "She asks. You present it with both hands — "
        "always with both hands.",
    introFlag: false,
    environmentalTextPrompt: "🪪 パスポートのご提示をお願いします",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "ko-chi-ra de-su, dou-zo",
    targetLanguageAnchor: "こちらです、どうぞ",
    slotOptions: ["こちらです、どうぞ", "はい、こちら", "パスポートです"],
    npcAudioResponseTranscript: "ありがとうございます。コピーを取らせていただきます。",
    graffitiStyleTag: "Orange 'パスポート' hotel registration stamp",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S4: PAT_03 Rep 2 — Location: where is the room ──────
  Scenario(
    scenarioId: "JA_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. The elevator bank is confusing — "
        "A, B, C wings. You need the room's wing confirmed.",
    introFlag: false,
    environmentalTextPrompt: "🗝️ 部屋はどこですか？",
    sophieClueEnglishIntent: "Ask where your room is",
    sophiePhoneticHint: "he-ya wa do-ko de-su ka",
    targetLanguageAnchor: "部屋はどこですか？",
    slotOptions: ["部屋", "エレベーター", "大浴場", "朝食会場"],
    npcAudioResponseTranscript: "12階です。エレベーターを右にお進みください。",
    graffitiStyleTag: "Cyan '→ 部屋' room direction tag",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S5: PAT_06 Rep 3 — Ask if there is WiFi ─────────────
  Scenario(
    scenarioId: "JA_M04_S05",
    missionId: 4,
    environmentContext:
        "First thing to check in any Japanese hotel. "
        "WiFi in Japan is usually excellent but "
        "you want to confirm it's free.",
    introFlag: false,
    environmentalTextPrompt: "📶 Wi-Fiはありますか？",
    sophieClueEnglishIntent: "Ask if there is WiFi",
    sophiePhoneticHint: "wi-fi wa a-ri-ma-su ka",
    targetLanguageAnchor: "Wi-Fiはありますか？",
    slotOptions: ["Wi-Fi", "無料のWi-Fi", "インターネット"],
    npcAudioResponseTranscript: "はい、無料です。パスワードはこちらです。",
    graffitiStyleTag: "Blue 'Wi-Fi ✓' network tag",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S6: PAT_10 Rep 2 — Ask what time breakfast is ───────
  Scenario(
    scenarioId: "JA_M04_S06",
    missionId: 4,
    environmentContext:
        "Japanese hotel breakfast. You've heard it's exceptional. "
        "You need to know the times so you don't miss it.",
    introFlag: true,
    environmentalTextPrompt: "🍱 朝食は何時ですか？",
    sophieClueEnglishIntent: "Ask what time breakfast is",
    sophiePhoneticHint: "cho-u-sho-ku wa nan-ji de-su ka",
    targetLanguageAnchor: "朝食は何時ですか？",
    slotOptions: ["朝食", "チェックアウト", "夕食"],
    npcAudioResponseTranscript: "朝7時から10時まででございます。和洋食バイキングです。",
    graffitiStyleTag: "Yellow '朝食 7:00-10:00' morning tag",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S7: PAT_07 Rep 2 — Tell staff where you're from ─────
  Scenario(
    scenarioId: "JA_M04_S07",
    missionId: 4,
    environmentContext:
        "A friendly concierge asks where you're from "
        "as he helps with luggage. He's curious, genuinely. "
        "Tell him.",
    introFlag: true,
    environmentalTextPrompt: "🌍 どちらからいらっしゃいましたか？",
    sophieClueEnglishIntent: "Say where you are from",
    sophiePhoneticHint: "[X] ka-ra ki-ma-shi-ta",
    targetLanguageAnchor: "[X]から来ました",
    slotOptions: ["イタリア", "ドイツ", "インド", "ブラジル", "カナダ"],
    npcAudioResponseTranscript: "そうですか！はじめての東京ですか？",
    graffitiStyleTag: "Green '〜から来ました' origin tag — passport style",
    npcName: "コンシェルジュ",
    npcAvatarEmoji: "🛎️",
  ),

  // ── S8: PAT_13 Rep 1 — Request: extra towel ─────────────
  Scenario(
    scenarioId: "JA_M04_S08",
    missionId: 4,
    environmentContext:
        "Your room has one towel. You need two. "
        "You call the front desk.",
    introFlag: false,
    environmentalTextPrompt: "📞 フロントへ電話 — タオルをもう一枚",
    sophieClueEnglishIntent: "Ask for one more towel please",
    sophiePhoneticHint: "ta-o-ru wo mou i-chi-mai o-ne-gai shi-ma-su",
    targetLanguageAnchor: "タオルをもう一枚お願いします",
    slotOptions: ["タオルをもう一枚", "毛布をもう一枚", "枕をもう一つ"],
    npcAudioResponseTranscript: "かしこまりました。すぐにお持ちします。",
    graffitiStyleTag: "Teal 'タオル +1' service request tag",
    npcName: "フロント係",
    npcAvatarEmoji: "📞",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: missed checkout time ─────
  Scenario(
    scenarioId: "JA_M04_S09",
    missionId: 4,
    environmentContext:
        "Reception is busy. Someone told you checkout time "
        "but you were distracted. Was it 11 or noon? "
        "You check with a polite confirmation.",
    introFlag: false,
    environmentalTextPrompt: "🕙 チェックアウトは11時ですよね？",
    sophieClueEnglishIntent: "Confirm checkout is at 11",
    sophiePhoneticHint: "che-k-ku a-u-to wa juu-i-chi-ji de-su yo-ne",
    targetLanguageAnchor: "チェックアウトは11時ですよね？",
    slotOptions: ["11時ですよね？", "12時でしたか？", "何時でしたっけ？"],
    npcAudioResponseTranscript: "はい、11時でございます。遅延の場合はご相談ください。",
    graffitiStyleTag: "White '確認 ✓' confirmation bubble",
    npcName: "フロント係",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: ask for city map ─────────
  Scenario(
    scenarioId: "JA_M04_S10",
    missionId: 4,
    environmentContext:
        "Ready to explore Tokyo. The concierge desk has "
        "a rack of local maps and tourist guides. "
        "You want the neighbourhood map.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ 地図をください",
    sophieClueEnglishIntent: "Ask for a map of the area",
    sophiePhoneticHint: "chi-ki no chi-zu wo ku-da-sai",
    targetLanguageAnchor: "この地域の地図をください",
    slotOptions: ["地域の地図", "新宿の地図", "観光マップ", "地下鉄マップ"],
    npcAudioResponseTranscript: "はい、どうぞ。新宿のおすすめも書いておきました！",
    graffitiStyleTag: "GOLD '任務完了' — 新宿ホテル cleared stamp",
    npcName: "コンシェルジュ",
    npcAvatarEmoji: "🛎️",
  ),
];
