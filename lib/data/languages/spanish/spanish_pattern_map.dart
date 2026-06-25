// lib/data/languages/spanish/spanish_pattern_map.dart
//
// SPANISH SCENARIO → PATTERN FLAT MAP
// =====================================
// Maps all 96 Spanish scenario IDs to their primary pattern ID.
// Used by PatternRegistryRouter and the drill engine.
// Source of truth: spanish_pattern_registry.dart
//
// Missions:
//   M01 — The Flight (6 scenarios)          ES_M01_S01–S06
//   M02 — The Terminal (10 scenarios)        ES_M02_S01–S10
//   M03 — The Taxi (10 scenarios)            ES_M03_S01–S10
//   M04 — The Hostel (10 scenarios)          ES_M04_S01–S10
//   M05 — The Café (10 scenarios)            ES_M05_S01–S10
//   M06 — Street Market (10 scenarios)       ES_M06_S01–S10
//   M07 — The Pharmacy (10 scenarios)        ES_M07_S01–S10
//   M08 — The Restaurant (10 scenarios)      ES_M08_S01–S10
//   M09 — Getting Around (10 scenarios)      ES_M09_S01–S10
//   M10 — The Departure (10 scenarios)       ES_M10_S01–S10

const Map<String, String> spanishScenarioPatternMap = {

  // ── MISSION 1: THE FLIGHT ────────────────────────────────
  "ES_M01_S01": "PAT_16", // Hola — social cluster R1
  "ES_M01_S02": "PAT_05", // Mi asiento es el [X] — identity R1
  "ES_M01_S03": "PAT_01", // Póngame [X], por favor — request R1
  "ES_M01_S04": "PAT_12", // Me siento mal — medical R1
  "ES_M01_S05": "PAT_02", // Quisiera [X] — want/need R1
  "ES_M01_S06": "PAT_16", // Muchas gracias, hasta luego — social R2

  // ── MISSION 2: THE TERMINAL ──────────────────────────────
  "ES_M02_S01": "PAT_16", // Buenos días — social R3
  "ES_M02_S02": "PAT_07", // Estoy aquí de turismo — purpose declaration R1
  "ES_M02_S03": "PAT_05", // Me llamo [X] — identity R2
  "ES_M02_S04": "PAT_08", // Aquí tiene mi pasaporte — handover R1
  "ES_M02_S05": "PAT_09", // Mi maleta venía en el vuelo [X] — purpose R1
  "ES_M02_S06": "PAT_03", // ¿Dónde está la salida? — location R1
  "ES_M02_S07": "PAT_06", // ¿Hay parada de taxi aquí? — availability R1
  "ES_M02_S08": "PAT_10", // ¿A qué hora es el último metro? — time R1
  "ES_M02_S09": "PAT_15", // Perdone, ¿puede repetir despacio? — repair R1
  "ES_M02_S10": "PAT_01", // Un billete para [X] — request R2 (DRILL)

  // ── MISSION 3: THE TAXI ──────────────────────────────────
  "ES_M03_S01": "PAT_14", // Lléveme a [X] — direction R1
  "ES_M03_S02": "PAT_14", // Siga todo recto — direction R2
  "ES_M03_S03": "PAT_14", // Gire a la izquierda — direction R3
  "ES_M03_S04": "PAT_06", // ¿Aceptan tarjeta? — availability R2
  "ES_M03_S05": "PAT_04", // ¿Cuánto cuesta? — price R1
  "ES_M03_S06": "PAT_11", // Es demasiado caro — constraint R1
  "ES_M03_S07": "PAT_01", // ¿Puede darme un recibo? — request R3 (DRILL)
  "ES_M03_S08": "PAT_15", // ¿Me ha entendido bien? — repair R2
  "ES_M03_S09": "PAT_12", // Pare aquí, por favor — urgency/state R2
  "ES_M03_S10": "PAT_16", // Muchas gracias, buenas noches — social R4

  // ── MISSION 4: THE HOSTEL ────────────────────────────────
  "ES_M04_S01": "PAT_02", // Tengo una reserva — claim R2
  "ES_M04_S02": "PAT_05", // Me llamo [X] — identity R3
  "ES_M04_S03": "PAT_08", // Aquí tiene mi pasaporte — handover R2
  "ES_M04_S04": "PAT_03", // ¿Dónde está mi habitación? — location R2
  "ES_M04_S05": "PAT_06", // ¿Hay WiFi aquí? — availability R3
  "ES_M04_S06": "PAT_10", // ¿A qué hora es el desayuno? — time R2
  "ES_M04_S07": "PAT_07", // Soy de [X] — origin R2
  "ES_M04_S08": "PAT_13", // ¿Puedo pedir una toalla más? — service request R1
  "ES_M04_S09": "PAT_15", // El check-out es a las once, ¿no es así? — repair R3
  "ES_M04_S10": "PAT_01", // ¿Puede darme un mapa? — request R4 (DRILL)

  // ── MISSION 5: THE CAFÉ ──────────────────────────────────
  "ES_M05_S01": "PAT_06", // ¿Está libre esta silla? — availability R4
  "ES_M05_S02": "PAT_02", // Un café con leche, por favor — want/need R3
  "ES_M05_S03": "PAT_01", // Quisiera [X], por favor — request R5 (DRILL)
  "ES_M05_S04": "PAT_12", // La cuenta, por favor — urgency/state R3
  "ES_M05_S05": "PAT_04", // ¿Cuánto cuesta el agua? — price R2
  "ES_M05_S06": "PAT_13", // ¿Puede traer un poco más de pan? — service R2
  "ES_M05_S07": "PAT_11", // Soy vegetariano/a — constraint R2
  "ES_M05_S08": "PAT_09", // Un [X] para llevar — purpose R2
  "ES_M05_S09": "PAT_07", // ¿De dónde es usted? — origin (question form) R3 (DRILL)
  "ES_M05_S10": "PAT_16", // Mucho gusto, ¡hasta luego! — social R5

  // ── MISSION 6: STREET MARKET ─────────────────────────────
  "ES_M06_S01": "PAT_04", // ¿Cuánto valen los [X]? — price R3
  "ES_M06_S02": "PAT_02", // Medio kilo de [X] — want/need R4
  "ES_M06_S03": "PAT_13", // ¿Puede envolverlo? — service request R3
  "ES_M06_S04": "PAT_11", // Es muy caro, ¿puede hacer un descuento? — constraint R3
  "ES_M06_S05": "PAT_14", // ¿La salida es por aquí? — direction R4 (DRILL)
  "ES_M06_S06": "PAT_08", // Aquí tiene el dinero — handover R3 (DRILL)
  "ES_M06_S07": "PAT_15", // Perdone, ¿cuánto ha dicho? — repair R4
  "ES_M06_S08": "PAT_09", // Busco algo para regalar — purpose R3
  "ES_M06_S09": "PAT_06", // ¿Hay alguno más pequeño? — availability R5
  "ES_M06_S10": "PAT_01", // ¿Puede darme una bolsa? — request R6 (DRILL)

  // ── MISSION 7: THE PHARMACY ──────────────────────────────
  "ES_M07_S01": "PAT_12", // Me duele la cabeza — medical R4
  "ES_M07_S02": "PAT_12", // Tengo fiebre — medical R5
  "ES_M07_S03": "PAT_02", // Quisiera [X], por favor — want/need R5
  "ES_M07_S04": "PAT_04", // ¿Cuánto cuesta? — price R4
  "ES_M07_S05": "PAT_10", // ¿Cada cuántas horas lo tomo? — time R3
  "ES_M07_S06": "PAT_11", // Soy alérgico/a a [X] — constraint R4
  "ES_M07_S07": "PAT_06", // ¿Tiene protector solar? — availability R6
  "ES_M07_S08": "PAT_08", // Aquí tiene mi receta — handover R4 (DRILL)
  "ES_M07_S09": "PAT_15", // ¿Es antes o después de comer? — repair R5
  "ES_M07_S10": "PAT_12", // Me siento mejor, gracias — medical R6

  // ── MISSION 8: THE RESTAURANT ───────────────────────────
  "ES_M08_S01": "PAT_02", // Tengo una reserva para dos — claim R6
  "ES_M08_S02": "PAT_06", // ¿Hay mesa en la terraza? — availability R7
  "ES_M08_S03": "PAT_13", // ¿Puede traerme la carta de vinos? — service R4
  "ES_M08_S04": "PAT_04", // ¿Cuánto cuesta el plato del día? — price R5
  "ES_M08_S05": "PAT_11", // ¿Puede ser sin ajo? — constraint R5
  "ES_M08_S06": "PAT_16", // ¡Salud! Por una buena noche — social R6
  "ES_M08_S07": "PAT_10", // ¿A qué hora cierra la cocina? — time R4
  "ES_M08_S08": "PAT_01", // Quisiera la crema catalana — request R7 (DRILL)
  "ES_M08_S09": "PAT_09", // ¿Podemos dividir la cuenta? — purpose R4
  "ES_M08_S10": "PAT_12", // Todo estaba riquísimo — positive state R7

  // ── MISSION 9: GETTING AROUND ───────────────────────────
  "ES_M09_S01": "PAT_03", // ¿Dónde está el metro? — location R3
  "ES_M09_S02": "PAT_14", // Lléveme a [X] — direction R5
  "ES_M09_S03": "PAT_10", // ¿A qué hora es el último tren? — time R4 (note: duplicate slot adjusted)
  "ES_M09_S04": "PAT_13", // ¿Puede validar mi billete? — service R5
  "ES_M09_S05": "PAT_03", // ¿Dónde está la parada de autobús? — location R4
  "ES_M09_S06": "PAT_09", // Billete de ida y vuelta para [X] — purpose R4 (note: M08 S07 also PAT_10)
  "ES_M09_S07": "PAT_14", // Estoy perdido — direction emergency R6
  "ES_M09_S08": "PAT_02", // Comprar T-Casual — want/need R7
  "ES_M09_S09": "PAT_15", // ¿Es el andén correcto? — repair R7
  "ES_M09_S10": "PAT_01", // ¿Puede darme un mapa del metro? — request R8 (DRILL)

  // ── MISSION 10: THE DEPARTURE ────────────────────────────
  "ES_M10_S01": "PAT_16", // Buenos días — final greeting R7
  "ES_M10_S02": "PAT_05", // Me llamo [X] — identity R4
  "ES_M10_S03": "PAT_02", // Quiero facturar una maleta — want/need R8
  "ES_M10_S04": "PAT_04", // ¿Cuánto cuesta el exceso? — price R6
  "ES_M10_S05": "PAT_11", // ¿Puede hacer una excepción? — constraint/negotiate R6
  "ES_M10_S06": "PAT_08", // Aquí tiene mi tarjeta de embarque — handover R6
  "ES_M10_S07": "PAT_03", // ¿Dónde está la puerta [X]? — location R5
  "ES_M10_S08": "PAT_10", // ¿A qué hora empieza el embarque? — time R5
  "ES_M10_S09": "PAT_09", // Asiento de ventanilla para [X] — purpose R5
  "ES_M10_S10": "PAT_15", // Repair + PAT_07 goodbye + origin — repair R8
};
