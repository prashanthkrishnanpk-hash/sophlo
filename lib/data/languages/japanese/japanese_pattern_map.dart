// lib/data/languages/japanese/japanese_pattern_map.dart
//
// JAPANESE SCENARIO → PATTERN FLAT MAP
// =======================================
// Maps all 98 Japanese scenario IDs to their primary pattern ID.
// Used by PatternRegistryRouter and the drill engine.
//
// Missions:
//   M01 — The Flight (8 scenarios)           JA_001–JA_008
//   M02 — Narita Terminal (10 scenarios)     JA_M02_S01–S10
//   M03 — The Taxi (10 scenarios)            JA_M03_S01–S10
//   M04 — The Hotel (10 scenarios)           JA_M04_S01–S10
//   M05 — Café & Conbini (10 scenarios)      JA_M05_S01–S10
//   M06 — Markets (10 scenarios)             JA_M06_S01–S10
//   M07 — Pharmacy & Clinic (10 scenarios)   JA_M07_S01–S10
//   M08 — Restaurant (10 scenarios)          JA_M08_S01–S10
//   M09 — Getting Around (10 scenarios)      JA_M09_S01–S10
//   M10 — The Departure (10 scenarios)       JA_M10_S01–S10

const Map<String, String> japaneseScenarioPatternMap = {

  // ── MISSION 1: THE FLIGHT (stub IDs) ────────────────────
  "JA_001": "PAT_16", // こんにちは — social cluster R1
  "JA_002": "PAT_05", // 〜と申します — identity R1
  "JA_003": "PAT_01", // 〜をください — request R1
  "JA_004": "PAT_12", // 気分が悪いです — medical R1
  "JA_005": "PAT_02", // 〜をお願いします — want/need R1
  "JA_006": "PAT_08", // こちらです — handover R1
  "JA_007": "PAT_15", // もう一度お願いします — repair R1 (early intro)
  "JA_008": "PAT_16", // ありがとうございました — social R2

  // ── MISSION 2: NARITA TERMINAL ───────────────────────────
  "JA_M02_S01": "PAT_16", // おはようございます — social R3
  "JA_M02_S02": "PAT_07", // 観光で来ました — purpose R1
  "JA_M02_S03": "PAT_05", // 〜と申します — identity R2
  "JA_M02_S04": "PAT_08", // こちらです — handover R2
  "JA_M02_S05": "PAT_09", // 〜便にありました — purpose/destination R1
  "JA_M02_S06": "PAT_03", // 出口はどこですか — location R1
  "JA_M02_S07": "PAT_06", // リムジンバスはありますか — availability R1
  "JA_M02_S08": "PAT_10", // 次の電車は何時ですか — time R1
  "JA_M02_S09": "PAT_15", // もう一度お願いします — repair R2
  "JA_M02_S10": "PAT_01", // 〜まで一枚ください — request R2 (DRILL)

  // ── MISSION 3: THE TAXI ──────────────────────────────────
  "JA_M03_S01": "PAT_14", // 〜までお願いします — direction R1
  "JA_M03_S02": "PAT_14", // まっすぐ行ってください — direction R2
  "JA_M03_S03": "PAT_14", // 左に曲がってください — direction R3
  "JA_M03_S04": "PAT_06", // カードで払えますか — availability R2
  "JA_M03_S05": "PAT_04", // いくらですか — price R1
  "JA_M03_S06": "PAT_11", // 少し高いです — constraint R1
  "JA_M03_S07": "PAT_01", // 領収書をください — request R3 (DRILL)
  "JA_M03_S08": "PAT_15", // わかりましたか — repair R3
  "JA_M03_S09": "PAT_12", // ここで止めてください — urgency R2
  "JA_M03_S10": "PAT_16", // ありがとうございました — social R4

  // ── MISSION 4: THE HOTEL ────────────────────────────────
  "JA_M04_S01": "PAT_02", // 予約があります — claim R2
  "JA_M04_S02": "PAT_05", // 〜と申します — identity R3
  "JA_M04_S03": "PAT_08", // こちらです、どうぞ — handover R3
  "JA_M04_S04": "PAT_03", // 部屋はどこですか — location R2
  "JA_M04_S05": "PAT_06", // Wi-Fiはありますか — availability R3
  "JA_M04_S06": "PAT_10", // 朝食は何時ですか — time R2
  "JA_M04_S07": "PAT_07", // 〜から来ました — origin R2
  "JA_M04_S08": "PAT_13", // タオルをもう一枚お願いします — service R1
  "JA_M04_S09": "PAT_15", // チェックアウトは11時ですよね — repair R4
  "JA_M04_S10": "PAT_01", // この地域の地図をください — request R4 (DRILL)

  // ── MISSION 5: CAFÉ & CONBINI ───────────────────────────
  "JA_M05_S01": "PAT_06", // この席は空いていますか — availability R4
  "JA_M05_S02": "PAT_02", // コーヒーをください — want R3
  "JA_M05_S03": "PAT_01", // 〜をください — request R5 (DRILL)
  "JA_M05_S04": "PAT_12", // お会計をお願いします — urgency/state R3
  "JA_M05_S05": "PAT_04", // これはいくらですか — price R2
  "JA_M05_S06": "PAT_13", // 温めてもらえますか — service R2
  "JA_M05_S07": "PAT_11", // ベジタリアンです — constraint R2
  "JA_M05_S08": "PAT_09", // 持ち帰りでお願いします — purpose R2
  "JA_M05_S09": "PAT_07", // どちらのご出身ですか — origin question R3 (DRILL)
  "JA_M05_S10": "PAT_16", // 楽しかったです、またね — social R5

  // ── MISSION 6: MARKETS ──────────────────────────────────
  "JA_M06_S01": "PAT_04", // これはいくらですか — price R3
  "JA_M06_S02": "PAT_02", // 二本ください — want R4
  "JA_M06_S03": "PAT_13", // 包んでもらえますか — service R3
  "JA_M06_S04": "PAT_11", // 少し高いですね — constraint R3
  "JA_M06_S05": "PAT_14", // 〜はこちらですか — direction R4 (DRILL)
  "JA_M06_S06": "PAT_08", // こちらです — handover R4 (DRILL)
  "JA_M06_S07": "PAT_15", // いくらとおっしゃいましたか — repair R5
  "JA_M06_S08": "PAT_09", // お土産を探しています — purpose R3
  "JA_M06_S09": "PAT_06", // もっと小さいものはありますか — availability R5
  "JA_M06_S10": "PAT_01", // 袋をください — request R6 (DRILL)

  // ── MISSION 7: PHARMACY & CLINIC ────────────────────────
  "JA_M07_S01": "PAT_12", // 頭が痛いです — medical R4
  "JA_M07_S02": "PAT_12", // 熱があります — medical R5
  "JA_M07_S03": "PAT_02", // 〜をください — want R5
  "JA_M07_S04": "PAT_04", // いくらですか — price R4
  "JA_M07_S05": "PAT_10", // 一日何回飲みますか — time R3
  "JA_M07_S06": "PAT_11", // アスピリンアレルギーです — constraint R4
  "JA_M07_S07": "PAT_06", // 日焼け止めはありますか — availability R6
  "JA_M07_S08": "PAT_08", // 処方箋があります — handover R5 (DRILL)
  "JA_M07_S09": "PAT_15", // 食前ですか食後ですか — repair R6
  "JA_M07_S10": "PAT_12", // よくなりました — physical state R6

  // ── MISSION 8: RESTAURANT ───────────────────────────────
  "JA_M08_S01": "PAT_02", // 二名で予約しています — claim R6
  "JA_M08_S02": "PAT_06", // カウンター席はありますか — availability R7
  "JA_M08_S03": "PAT_13", // お飲み物メニューをください — service R4
  "JA_M08_S04": "PAT_04", // おまかせはいくらですか — price R5
  "JA_M08_S05": "PAT_11", // 生魚は食べられません — constraint R5
  "JA_M08_S06": "PAT_16", // 乾杯！ — social R6
  "JA_M08_S07": "PAT_10", // 何時まで営業していますか — time R4
  "JA_M08_S08": "PAT_01", // 抹茶アイスをください — request R7 (DRILL)
  "JA_M08_S09": "PAT_09", // 別々でお願いします — purpose/separation R4
  "JA_M08_S10": "PAT_12", // ごちそうさまでした — positive state R7

  // ── MISSION 9: GETTING AROUND ───────────────────────────
  "JA_M09_S01": "PAT_03", // 新宿駅はどこですか — location R3
  "JA_M09_S02": "PAT_14", // 〜へ行きたいです — direction R5
  "JA_M09_S03": "PAT_10", // 終電は何時ですか — time R4 (note: aligns with schedule)
  "JA_M09_S04": "PAT_13", // Suicaにチャージしたい — service R5
  "JA_M09_S05": "PAT_03", // バス停はどこですか — location R4
  "JA_M09_S06": "PAT_09", // 〜まで往復ください — purpose R5
  "JA_M09_S07": "PAT_14", // 道に迷いました — direction emergency R6
  "JA_M09_S08": "PAT_02", // Suicaを作りたいです — want R7
  "JA_M09_S09": "PAT_15", // このホームは合っていますか — repair R7
  "JA_M09_S10": "PAT_01", // 地下鉄のマップをください — request R8 (DRILL)

  // ── MISSION 10: THE DEPARTURE ────────────────────────────
  "JA_M10_S01": "PAT_16", // おはようございます — social R7
  "JA_M10_S02": "PAT_05", // 〜と申します — identity R4
  "JA_M10_S03": "PAT_02", // スーツケースを預けたいです — want R8
  "JA_M10_S04": "PAT_04", // 超過料金はいくらですか — price R6
  "JA_M10_S05": "PAT_11", // 見逃してもらえますか — constraint/negotiate R6
  "JA_M10_S06": "PAT_08", // こちらです — handover R6
  "JA_M10_S07": "PAT_03", // 68番ゲートはどこですか — location R5
  "JA_M10_S08": "PAT_10", // 搭乗は何時に始まりますか — time R5
  "JA_M10_S09": "PAT_09", // 窓側の席はありますか — purpose/seat R5
  "JA_M10_S10": "PAT_15", // 〜から来ました + さようなら — repair R8 + PAT_07 R5
};
