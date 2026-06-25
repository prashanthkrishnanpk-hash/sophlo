// lib/data/languages/korean/korean_pattern_map.dart
//
// KOREAN SCENARIO → PATTERN FLAT MAP
// =====================================
// Maps all 98 Korean scenario IDs to their primary pattern ID.

const Map<String, String> koreanScenarioPatternMap = {

  // ── MISSION 1: THE FLIGHT (stub IDs) ────────────────────
  "KO_001": "PAT_16", // 안녕하세요 — social R1
  "KO_002": "PAT_05", // 제 이름은 — identity R1
  "KO_003": "PAT_01", // ~주세요 — request R1
  "KO_004": "PAT_12", // 몸이 안 좋아요 — medical R1
  "KO_005": "PAT_02", // ~고 싶어요 — want R1
  "KO_006": "PAT_08", // 여기 있습니다 — handover R1
  "KO_007": "PAT_15", // 다시 말씀해 주세요 — repair R1
  "KO_008": "PAT_16", // 감사합니다 — social R2

  // ── MISSION 2: INCHEON TERMINAL ──────────────────────────
  "KO_M02_S01": "PAT_16", // 안녕하세요 — social R3
  "KO_M02_S02": "PAT_07", // 관광으로 왔어요 — purpose R1
  "KO_M02_S03": "PAT_05", // 제 이름은 ~입니다 — identity R2
  "KO_M02_S04": "PAT_08", // 여기 있습니다 — handover R2
  "KO_M02_S05": "PAT_09", // ~편에 있었어요 — purpose/destination R1
  "KO_M02_S06": "PAT_03", // 출구가 어디 있어요? — location R1
  "KO_M02_S07": "PAT_06", // 공항철도가 있어요? — availability R1
  "KO_M02_S08": "PAT_10", // 다음 열차가 몇 시예요? — time R1
  "KO_M02_S09": "PAT_15", // 다시 말씀해 주세요 — repair R2
  "KO_M02_S10": "PAT_01", // ~까지 한 장 주세요 — request R2 (DRILL)

  // ── MISSION 3: THE TAXI ──────────────────────────────────
  "KO_M03_S01": "PAT_14", // ~로 가 주세요 — direction R1
  "KO_M03_S02": "PAT_14", // 직진해 주세요 — direction R2
  "KO_M03_S03": "PAT_14", // 왼쪽으로 가 주세요 — direction R3
  "KO_M03_S04": "PAT_06", // 카드 돼요? — availability R2
  "KO_M03_S05": "PAT_04", // 얼마예요? — price R1
  "KO_M03_S06": "PAT_11", // 비싸요, 깎아 주세요 — constraint R1
  "KO_M03_S07": "PAT_01", // 영수증 주세요 — request R3 (DRILL)
  "KO_M03_S08": "PAT_15", // 제 말 이해하셨어요? — repair R3
  "KO_M03_S09": "PAT_12", // 여기서 세워 주세요 — urgency R2
  "KO_M03_S10": "PAT_16", // 감사합니다, 수고하셨어요 — social R4

  // ── MISSION 4: THE GUESTHOUSE ────────────────────────────
  "KO_M04_S01": "PAT_02", // 예약했어요 — claim R2
  "KO_M04_S02": "PAT_05", // 제 이름은 ~이에요 — identity R3
  "KO_M04_S03": "PAT_08", // 여기 있습니다 — handover R3
  "KO_M04_S04": "PAT_03", // 제 방이 어디 있어요? — location R2
  "KO_M04_S05": "PAT_06", // 와이파이 있어요? — availability R3
  "KO_M04_S06": "PAT_10", // 조식이 몇 시예요? — time R2
  "KO_M04_S07": "PAT_07", // ~에서 왔어요 — origin R2
  "KO_M04_S08": "PAT_13", // 수건 하나 더 주세요 — service R1
  "KO_M04_S09": "PAT_15", // 체크아웃이 11시죠? — repair R4
  "KO_M04_S10": "PAT_01", // 이 지역 지도 주세요 — request R4 (DRILL)

  // ── MISSION 5: CAFÉ & STREET FOOD ────────────────────────
  "KO_M05_S01": "PAT_06", // 이 자리 있어요? — availability R4
  "KO_M05_S02": "PAT_02", // 아메리카노 주세요 — want R3
  "KO_M05_S03": "PAT_01", // ~주세요 — request R5 (DRILL)
  "KO_M05_S04": "PAT_12", // 계산해 주세요 — urgency R3
  "KO_M05_S05": "PAT_04", // 떡볶이 얼마예요? — price R2
  "KO_M05_S06": "PAT_13", // 휴지 더 주세요 — service R2
  "KO_M05_S07": "PAT_11", // 채식주의자예요 — constraint R2
  "KO_M05_S08": "PAT_09", // 포장해 주세요 — purpose R2
  "KO_M05_S09": "PAT_07", // 어디 출신이에요? — origin question R3 (DRILL)
  "KO_M05_S10": "PAT_16", // 잘 들었어요, 또 봐요 — social R5

  // ── MISSION 6: MARKET ────────────────────────────────────
  "KO_M06_S01": "PAT_04", // 이거 얼마예요? — price R3
  "KO_M06_S02": "PAT_02", // 두 봉 주세요 — want R4
  "KO_M06_S03": "PAT_13", // 포장해 주세요 — service R3
  "KO_M06_S04": "PAT_11", // 비싸요, 깎아 주세요 — constraint R3
  "KO_M06_S05": "PAT_14", // 이쪽으로 가면 돼요? — direction R4 (DRILL)
  "KO_M06_S06": "PAT_08", // 여기 있습니다 — handover R4 (DRILL)
  "KO_M06_S07": "PAT_15", // 얼마라고 하셨어요? — repair R5
  "KO_M06_S08": "PAT_09", // 선물 찾고 있어요 — purpose R3
  "KO_M06_S09": "PAT_06", // 더 작은 거 있어요? — availability R5
  "KO_M06_S10": "PAT_01", // 봉투 주세요 — request R6 (DRILL)

  // ── MISSION 7: PHARMACY ──────────────────────────────────
  "KO_M07_S01": "PAT_12", // 머리가 아파요 — medical R4
  "KO_M07_S02": "PAT_12", // 열이 있어요 — medical R5
  "KO_M07_S03": "PAT_02", // ~주세요 — want R5
  "KO_M07_S04": "PAT_04", // 얼마예요? — price R4
  "KO_M07_S05": "PAT_10", // 하루에 몇 번 먹어요? — time R3
  "KO_M07_S06": "PAT_11", // ~알레르기가 있어요 — constraint R4
  "KO_M07_S07": "PAT_06", // 선크림 있어요? — availability R6
  "KO_M07_S08": "PAT_08", // 여기 있습니다, 처방전이에요 — handover R5 (DRILL)
  "KO_M07_S09": "PAT_15", // 식전이에요, 식후예요? — repair R6
  "KO_M07_S10": "PAT_12", // 나아졌어요 — positive state R6

  // ── MISSION 8: RESTAURANT ────────────────────────────────
  "KO_M08_S01": "PAT_02", // 두 명 예약했어요 — claim R6
  "KO_M08_S02": "PAT_06", // 야외 자리 있어요? — availability R7
  "KO_M08_S03": "PAT_13", // 김치 더 주세요 — service R4
  "KO_M08_S04": "PAT_04", // 한우가 얼마예요? — price R5
  "KO_M08_S05": "PAT_11", // 돼지고기 안 먹어요 — constraint R5
  "KO_M08_S06": "PAT_16", // 건배! 위하여! — social R6
  "KO_M08_S07": "PAT_10", // 몇 시까지 해요? — time R4
  "KO_M08_S08": "PAT_01", // 식혜 주세요 — request R7 (DRILL)
  "KO_M08_S09": "PAT_09", // 따로따로 계산해 주세요 — purpose/separation R4
  "KO_M08_S10": "PAT_12", // 너무 맛있었어요 — positive state R7

  // ── MISSION 9: GETTING AROUND ────────────────────────────
  "KO_M09_S01": "PAT_03", // 지하철역이 어디 있어요? — location R3
  "KO_M09_S02": "PAT_14", // ~에 가고 싶어요 — direction R5
  "KO_M09_S03": "PAT_10", // 막차가 몇 시예요? — time R5
  "KO_M09_S04": "PAT_13", // T머니 충전해 주세요 — service R5
  "KO_M09_S05": "PAT_03", // 버스 정류장이 어디 있어요? — location R4
  "KO_M09_S06": "PAT_09", // 수원까지 왕복 주세요 — purpose R4
  "KO_M09_S07": "PAT_14", // 길을 잃었어요 — direction emergency R6
  "KO_M09_S08": "PAT_02", // T머니 카드 사고 싶어요 — want R7
  "KO_M09_S09": "PAT_15", // 이 플랫폼 맞아요? — repair R7
  "KO_M09_S10": "PAT_01", // 노선도 주세요 — request R8 (DRILL)

  // ── MISSION 10: THE DEPARTURE ────────────────────────────
  "KO_M10_S01": "PAT_16", // 안녕하세요 — social R7
  "KO_M10_S02": "PAT_05", // 제 이름은 ~입니다 — identity R4
  "KO_M10_S03": "PAT_02", // 수하물 부치고 싶어요 — want R8
  "KO_M10_S04": "PAT_04", // 초과 수하물 얼마예요? — price R6
  "KO_M10_S05": "PAT_11", // 한 번만 봐 주세요 — constraint R6
  "KO_M10_S06": "PAT_08", // 여기 있습니다 — handover R6
  "KO_M10_S07": "PAT_03", // 252번 게이트가 어디 있어요? — location R5
  "KO_M10_S08": "PAT_10", // 탑승이 몇 시에 시작해요? — time R5 (note: M09_S03 also R5 — boarding vs transit, same pattern)
  "KO_M10_S09": "PAT_09", // 창가 자리 있어요? — purpose/seat R5
  "KO_M10_S10": "PAT_15", // ~에서 왔어요 + 서울은 좋았어요 — repair R8 + PAT_07 R5
};
