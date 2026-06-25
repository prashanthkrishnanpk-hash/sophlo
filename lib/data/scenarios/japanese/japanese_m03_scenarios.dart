// lib/data/scenarios/japanese/japanese_m03_scenarios.dart
//
// MISSION 3: タクシー — THE TAXI — 10 SCENARIOS
// ================================================
// Location: Tokyo taxi — Narita / Shinjuku area
// Type: DIRECTION + TRANSACTION — polite commands
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2-DRILL), PAT_16(R4)
// Key forms: 〜までお願いします、まっすぐ、左/右に曲がって、
//   カードで払えますか、いくらですか、止めてください、ありがとう

import '../../../models/models.dart';

const List<Scenario> japaneseM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Direction: tell driver destination
  Scenario(
    scenarioId: "JA_M03_S01",
    missionId: 3,
    environmentContext:
        "A white-gloved Tokyo taxi. The door opens automatically. "
        "The driver faces forward. The plastic seat covers "
        "are immaculate. You slide in and give your destination.",
    introFlag: true,
    environmentalTextPrompt: "🚕 タクシー — どちらへ？",
    sophieClueEnglishIntent: "Tell the driver where you want to go",
    sophiePhoneticHint: "[X] ma-de o-ne-gai shi-ma-su",
    targetLanguageAnchor: "[X]までお願いします",
    slotOptions: ["新宿のホテル", "渋谷駅", "浅草", "東京タワー"],
    npcAudioResponseTranscript: "かしこまりました。少々お時間がかかります。",
    graffitiStyleTag: "Yellow 'タクシー' bold Tokyo cab tag",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S2: PAT_14 Rep 2 — Direction: go straight ───────────
  Scenario(
    scenarioId: "JA_M03_S02",
    missionId: 3,
    environmentContext:
        "The driver is taking a detour through a back street. "
        "Your map shows a faster straight route. "
        "Politely intervene.",
    introFlag: true,
    environmentalTextPrompt: "📍 まっすぐ行ってください",
    sophieClueEnglishIntent: "Tell the driver to go straight",
    sophiePhoneticHint: "ma-t-su-gu i-t-te ku-da-sai",
    targetLanguageAnchor: "まっすぐ行ってください",
    slotOptions: ["まっすぐ行ってください", "この道でいいです", "こちらへ"],
    npcAudioResponseTranscript: "はい、わかりました。",
    graffitiStyleTag: "Blue '→ まっすぐ' direction arrow — road marking",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S3: PAT_14 Rep 3 — Direction: turn left ─────────────
  Scenario(
    scenarioId: "JA_M03_S03",
    missionId: 3,
    environmentContext:
        "Almost there. Your hotel is in a narrow alley "
        "that requires a left turn the driver just missed.",
    introFlag: false,
    environmentalTextPrompt: "↙️ 左に曲がってください",
    sophieClueEnglishIntent: "Tell the driver to turn left",
    sophiePhoneticHint: "hi-da-ri ni ma-ga-t-te ku-da-sai",
    targetLanguageAnchor: "左に曲がってください",
    slotOptions: ["左に曲がって", "右に曲がって", "次の角を左"],
    npcAudioResponseTranscript: "あ、はい。こちらですね。",
    graffitiStyleTag: "White '↙ 左' chalk direction arrow",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S4: PAT_06 Rep 2 — Ask if card payment accepted ─────
  Scenario(
    scenarioId: "JA_M03_S04",
    missionId: 3,
    environmentContext:
        "Arrived. The meter reads ¥2,840. "
        "You only have a card — no yen yet. "
        "Some Tokyo taxis accept cards; some don't.",
    introFlag: true,
    environmentalTextPrompt: "💳 カードで払えますか？",
    sophieClueEnglishIntent: "Ask if you can pay by card",
    sophiePhoneticHint: "ka-a-do de ha-ra-e-ma-su ka",
    targetLanguageAnchor: "カードで払えますか？",
    slotOptions: ["カード", "クレジットカード", "Suica", "PayPay"],
    npcAudioResponseTranscript: "はい、VisaとMastercardは使えます。",
    graffitiStyleTag: "Green 'カード ✓' payment accepted tag",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S5: PAT_04 Rep 1 — Price question: how much ─────────
  Scenario(
    scenarioId: "JA_M03_S05",
    missionId: 3,
    environmentContext:
        "A rickshaw driver near Asakusa. Charming, theatrical. "
        "He quotes prices in English but you want to try "
        "in Japanese. Before you agree — how much?",
    introFlag: true,
    environmentalTextPrompt: "🛺 人力車 — 浅草",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "i-ku-ra de-su ka",
    targetLanguageAnchor: "いくらですか？",
    slotOptions: ["いくらですか？", "料金はいくらですか？", "いくらですか、これ"],
    npcAudioResponseTranscript: "30分コースで3,000円でございます！",
    graffitiStyleTag: "Orange '料金？' question tag — rickshaw style",
    npcName: "車夫",
    npcAvatarEmoji: "🛺",
  ),

  // ── S6: PAT_11 Rep 1 — Negotiation: too expensive ───────
  Scenario(
    scenarioId: "JA_M03_S06",
    missionId: 3,
    environmentContext:
        "3,000 yen for 30 minutes. Beautiful, yes, but "
        "you've read they sometimes negotiate for groups. "
        "There are two of you. Try politely.",
    introFlag: false,
    environmentalTextPrompt: "💸 高すぎます — 値引きできますか？",
    sophieClueEnglishIntent: "Say it's a little expensive and ask for a discount",
    sophiePhoneticHint: "su-ko-shi ta-ka-i de-su, wa-ri-bi-ki de-ki-ma-su ka",
    targetLanguageAnchor: "少し高いです。割引できますか？",
    slotOptions: ["割引できますか？", "もう少し安くなりますか？", "二人なので"],
    npcAudioResponseTranscript: "うーん、お二人なら5,000円でいかがでしょう！",
    graffitiStyleTag: "Red '高い！' price splatter tag",
    npcName: "車夫",
    npcAvatarEmoji: "🛺",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: ask for receipt ───────────
  Scenario(
    scenarioId: "JA_M03_S07",
    missionId: 3,
    environmentContext:
        "Ride done. Beautiful views of Senso-ji. "
        "You need the receipt for expenses.",
    introFlag: false,
    environmentalTextPrompt: "🧾 領収書をください",
    sophieClueEnglishIntent: "Ask for a receipt please",
    sophiePhoneticHint: "ryou-shu-u-sho o ku-da-sai",
    targetLanguageAnchor: "領収書をください",
    slotOptions: ["領収書をください", "レシートをください", "明細をください"],
    npcAudioResponseTranscript: "はい、こちらどうぞ。またご利用ください！",
    graffitiStyleTag: "Grey '領収書' receipt tear-off tag",
    npcName: "車夫",
    npcAvatarEmoji: "🛺",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: confirm address ──────────
  Scenario(
    scenarioId: "JA_M03_S08",
    missionId: 3,
    environmentContext:
        "Back in a taxi. You gave the hotel name "
        "but the driver repeated something different. "
        "You need to confirm.",
    introFlag: true,
    environmentalTextPrompt: "😕 ちゃんと聞こえましたか？",
    sophieClueEnglishIntent: "Ask if they understood you correctly",
    sophiePhoneticHint: "wa-ka-ri-ma-shi-ta ka",
    targetLanguageAnchor: "わかりましたか？",
    slotOptions: ["わかりましたか？", "聞こえましたか？", "合ってますか？"],
    npcAudioResponseTranscript: "はい、新宿のホテルグランドですね？",
    graffitiStyleTag: "White '確認' confirmation bubble — chalk style",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S9: PAT_12 Rep 2 — DRILL: stop here ─────────────────
  Scenario(
    scenarioId: "JA_M03_S09",
    missionId: 3,
    environmentContext:
        "You see your hotel. The driver is about to overshoot. "
        "Say it now.",
    introFlag: false,
    environmentalTextPrompt: "🛑 ここで止めてください！",
    sophieClueEnglishIntent: "Tell the driver to stop here",
    sophiePhoneticHint: "ko-ko de to-me-te ku-da-sai",
    targetLanguageAnchor: "ここで止めてください",
    slotOptions: ["ここで止めてください", "ここで大丈夫です", "あそこで止めて"],
    npcAudioResponseTranscript: "はい、わかりました！",
    graffitiStyleTag: "Red '止まれ ✋' stop sign tag — road style",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),

  // ── S10: PAT_16 Rep 4 — Farewell: thank the driver ──────
  Scenario(
    scenarioId: "JA_M03_S10",
    missionId: 3,
    environmentContext:
        "Stepping out onto a Tokyo evening street. "
        "Neon, warmth, the smell of ramen from somewhere. "
        "The driver bows his head slightly.",
    introFlag: false,
    environmentalTextPrompt: "🌆 東京の夜 — ホテル到着",
    sophieClueEnglishIntent: "Thank the driver sincerely",
    sophiePhoneticHint: "a-ri-ga-to-u go-za-i-ma-shi-ta",
    targetLanguageAnchor: "ありがとうございました",
    slotOptions: ["ありがとうございました", "お世話になりました", "助かりました"],
    npcAudioResponseTranscript: "ありがとうございました！東京を楽しんでください！",
    graffitiStyleTag: "GOLD '任務完了' — 東京タクシー stamp",
    npcName: "運転手",
    npcAvatarEmoji: "🚖",
  ),
];
