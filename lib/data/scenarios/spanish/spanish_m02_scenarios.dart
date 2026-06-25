// lib/data/scenarios/spanish/spanish_m02_scenarios.dart
//
// MISSION 2: THE TERMINAL — 10 SCENARIOS
// ========================================
// Destination: Barcelona El Prat Airport → City
// Type: FIRST REAL PRESSURE
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Primary words: hola, estoy aquí de, mi nombre es, aquí tiene,
//   para, dónde está, hay, a qué hora, perdone, quisiera

import '../../../models/models.dart';

const List<Scenario> spanishM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Greeting: passport control ───────
  Scenario(
    scenarioId: "ES_M02_S01",
    missionId: 2,
    environmentContext:
        "Passport control. A glass booth. An officer in a dark "
        "uniform slides your passport back and forth, "
        "comparing photo to face. The queue behind you is long.",
    introFlag: true,
    environmentalTextPrompt: "🛂 CONTROL DE PASAPORTES — EL PRAT",
    sophieClueEnglishIntent: "Greet the passport officer politely",
    sophiePhoneticHint: "bwe-nos dee-as",
    targetLanguageAnchor: "Buenos días",
    slotOptions: ["Buenos días", "Buenas tardes", "Hola"],
    npcAudioResponseTranscript:
        "Buenos días. Pasaporte, por favor.",
    graffitiStyleTag: "Red and gold 'BUENOS DÍAS' formal stencil — passport stamp style",
    npcName: "Agente de Fronteras",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Self declaration: purpose ────────
  Scenario(
    scenarioId: "ES_M02_S02",
    missionId: 2,
    environmentContext:
        "Two words. That's what the officer asked. "
        "Motivo. De. Visita. You've prepared for this.",
    introFlag: true,
    environmentalTextPrompt: "📋 ¿MOTIVO DE LA VISITA?",
    sophieClueEnglishIntent: "Say you are here for tourism",
    sophiePhoneticHint: "es-toy a-kee de tu-ris-mo",
    targetLanguageAnchor: "Estoy aquí de turismo",
    slotOptions: ["de turismo", "de vacaciones", "como turista"],
    npcAudioResponseTranscript:
        "¿Cuántos días piensa quedarse?",
    graffitiStyleTag: "Yellow 'TURISMO' stamp — Barcelona tourism badge",
    npcName: "Agente de Fronteras",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity: name confirmation ──────
  Scenario(
    scenarioId: "ES_M02_S03",
    missionId: 2,
    environmentContext:
        "She types. Pauses. Types again. Looks up. "
        "Confirm your name for the record.",
    introFlag: false,
    environmentalTextPrompt: "📋 CONFIRMACIÓN DE NOMBRE",
    sophieClueEnglishIntent: "Say your name is [X]",
    sophiePhoneticHint: "me lla-mo [X]",
    targetLanguageAnchor: "Me llamo [X]",
    slotOptions: ["Carlos Ruiz", "Elena Martín", "Ahmed Benali", "Sofia Chen"],
    npcAudioResponseTranscript:
        "Bien. Dos semanas. Que disfrute Barcelona.",
    graffitiStyleTag: "White 'NOMBRE' chalk tag — record style",
    npcName: "Agente de Fronteras",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Document handover: passport ──────
  Scenario(
    scenarioId: "ES_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. Another officer. He points to a "
        "counter. Needs to see everything again.",
    introFlag: true,
    environmentalTextPrompt: "🪪 CONTROL SECUNDARIO",
    sophieClueEnglishIntent: "Hand over your passport and say here it is",
    sophiePhoneticHint: "a-kee tye-ne mi pa-sa-por-te",
    targetLanguageAnchor: "Aquí tiene mi pasaporte",
    slotOptions: ["pasaporte", "visado", "documentos de viaje"],
    npcAudioResponseTranscript:
        "Gracias. Todo en orden — puede pasar.",
    graffitiStyleTag: "Orange 'PASAPORTE' document stamp — ink bleed",
    npcName: "Agente Secundario",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Baggage claim: missing bag ───────
  Scenario(
    scenarioId: "ES_M02_S05",
    missionId: 2,
    environmentContext:
        "Baggage claim. The belt goes round and round. "
        "Your bag is not on it. A ground staff member in "
        "a yellow vest approaches.",
    introFlag: true,
    environmentalTextPrompt: "🧳 RECOGIDA DE EQUIPAJE — MALETA PERDIDA",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "mi ma-le-ta ve-nee-a en el bwe-lo [X]",
    targetLanguageAnchor: "Mi maleta venía en el vuelo [X]",
    slotOptions: ["VY6341", "IB3462", "VU4567", "FR8821"],
    npcAudioResponseTranscript:
        "De acuerdo, deme el número de vuelo — lo miramos.",
    graffitiStyleTag: "Green 'EQUIPAJE' conveyor belt tag — industrial font",
    npcName: "Personal de Tierra",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location question: exit ──────────
  Scenario(
    scenarioId: "ES_M02_S06",
    missionId: 2,
    environmentContext:
        "Bag finally in hand. The terminal is enormous. "
        "Signs everywhere in Catalan and Spanish. "
        "You need the way out.",
    introFlag: true,
    environmentalTextPrompt: "🚪 BUSCAR LA SALIDA",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "don-de es-ta la sa-lee-da",
    targetLanguageAnchor: "¿Dónde está la salida?",
    slotOptions: ["la salida", "la salida principal", "la parada de taxi", "el metro"],
    npcAudioResponseTranscript:
        "Todo recto y luego a la derecha — lo verá enseguida.",
    graffitiStyleTag: "Cyan '→ SALIDA' neon exit arrow tag",
    npcName: "Personal del Aeropuerto",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Availability: taxi stand ─────────
  Scenario(
    scenarioId: "ES_M02_S07",
    missionId: 2,
    environmentContext:
        "Outside. Mediterranean heat. A wall of noise. "
        "Taxis, horns, the smell of pine and diesel. "
        "You need an official taxi.",
    introFlag: true,
    environmentalTextPrompt: "🚕 FUERA DE LA TERMINAL — BUSCO TAXI",
    sophieClueEnglishIntent: "Ask if there is a taxi rank here",
    sophiePhoneticHint: "ay pa-ra-da de tak-see a-kee",
    targetLanguageAnchor: "¿Hay parada de taxi aquí?",
    slotOptions: ["parada de taxi", "parada de autobús", "estación de metro", "Aerobús"],
    npcAudioResponseTranscript:
        "Sí, está allí — la fila negra y amarilla.",
    graffitiStyleTag: "Yellow 'TAXI?' question tag — street font",
    npcName: "Guardia de Seguridad",
    npcAvatarEmoji: "👮",
  ),

  // ── S8: PAT_10 Rep 1 — Time question: next metro ────────
  Scenario(
    scenarioId: "ES_M02_S08",
    missionId: 2,
    environmentContext:
        "You spot a metro sign — L9 Sud. Cheaper than a taxi. "
        "You check your watch. It's 10:50 PM. Last train?",
    introFlag: true,
    environmentalTextPrompt: "🚇 METRO L9 — ¿ÚLTIMO TREN?",
    sophieClueEnglishIntent: "Ask what time the last metro is",
    sophiePhoneticHint: "a ke o-ra es el ul-ti-mo me-tro",
    targetLanguageAnchor: "¿A qué hora es el último metro?",
    slotOptions: ["último metro", "primer autobús", "próximo tren"],
    npcAudioResponseTranscript:
        "Hasta las once. ¡Dese prisa, si no lo pierde!",
    graffitiStyleTag: "Purple 'ÚLTIMO TREN' clock tag — urgency aesthetic",
    npcName: "Empleado del Metro",
    npcAvatarEmoji: "🚇",
  ),

  // ── S9: PAT_15 Rep 1 — Politeness repair: repeat ────────
  Scenario(
    scenarioId: "ES_M02_S09",
    missionId: 2,
    environmentContext:
        "The metro booth. The attendant says something fast "
        "in Catalan-accented Spanish. Too fast. "
        "You caught maybe one word.",
    introFlag: true,
    environmentalTextPrompt: "😕 NO HE ENTENDIDO — NECESITO QUE REPITA",
    sophieClueEnglishIntent: "Ask them to repeat slowly please",
    sophiePhoneticHint: "per-do-ne, pwe-de re-pe-tir des-pa-sio",
    targetLanguageAnchor: "Perdone, ¿puede repetir despacio?",
    slotOptions: ["¿puede repetir?", "más despacio", "no he entendido"],
    npcAudioResponseTranscript:
        "Claro — ¿dónde — quiere — ir — hoy?",
    graffitiStyleTag: "White '¿PUEDE REPETIR?' speech bubble tag — chalk style",
    npcName: "Empleado del Metro",
    npcAvatarEmoji: "🎫",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: ticket to destination ────
  Scenario(
    scenarioId: "ES_M02_S10",
    missionId: 2,
    environmentContext:
        "You understood this time. She needs to know where "
        "you're going. You ask for a ticket to the city centre.",
    introFlag: false,
    environmentalTextPrompt: "🎫 BILLETE A [X] — PAGAR AHORA",
    sophieClueEnglishIntent: "Ask for one ticket to [X]",
    sophiePhoneticHint: "un bi-lle-te pa-ra [X] por fa-vor",
    targetLanguageAnchor: "Un billete para [X], por favor",
    slotOptions: ["Passeig de Gràcia", "Plaça Catalunya", "Barceloneta", "Sants"],
    npcAudioResponseTranscript:
        "Aquí tiene. Cuatro con cincuenta. ¡Que disfrute!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Terminal El Prat cleared stamp",
    npcName: "Empleado del Metro",
    npcAvatarEmoji: "🎫",
  ),
];
