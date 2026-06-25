// lib/data/scenarios/spanish/spanish_m09_scenarios.dart
//
// MISSION 9: GETTING AROUND — 10 SCENARIOS
// ===========================================
// Location: Barcelona Metro / Bus / Renfe Rodalies
// Type: TRANSPORT + EMERGENCY NAVIGATION
// Pattern coverage:
//   PAT_03(R3,R4), PAT_14(R5,R6), PAT_10(R4), PAT_13(R5),
//   PAT_09(R4), PAT_02(R7), PAT_15(R7), PAT_07(R4), PAT_06(R8), PAT_01(R8-DRILL)
// Primary words: dónde está, cómo llego a, a qué hora, necesito,
//   para, me he perdido, quisiera, soy de, hay, por favor

import '../../../models/models.dart';

const List<Scenario> spanishM09Scenarios = [

  // ── S1: PAT_03 Rep 3 — Location: where is the metro ─────
  Scenario(
    scenarioId: "ES_M09_S01",
    missionId: 9,
    environmentContext:
        "Las Ramblas. Midday chaos. Tourists in every direction. "
        "You need the metro. There's a local walking fast "
        "with shopping bags — could be worth asking.",
    introFlag: true,
    environmentalTextPrompt: "🚇 LAS RAMBLAS — BUSCAR EL METRO",
    sophieClueEnglishIntent: "Ask where the nearest metro station is",
    sophiePhoneticHint: "don-de es-ta la es-ta-syon de me-tro mas ser-ka-na",
    targetLanguageAnchor: "¿Dónde está la estación de metro más cercana?",
    slotOptions: ["la estación de metro", "la parada de metro", "la boca de metro"],
    npcAudioResponseTranscript:
        "A dos minutos — siga recto y es la segunda a la izquierda.",
    graffitiStyleTag: "Red 'METRO' circle tag — Barcelona transit style",
    npcName: "Transeúnte",
    npcAvatarEmoji: "🚶",
  ),

  // ── S2: PAT_14 Rep 5 — Direction: take me to [X] ────────
  Scenario(
    scenarioId: "ES_M09_S02",
    missionId: 9,
    environmentContext:
        "Inside the metro. A vending machine, not a human booth. "
        "It doesn't work. You find a metro worker "
        "near the turnstiles.",
    introFlag: true,
    environmentalTextPrompt: "🚇 METRO — PEDIR AYUDA AL EMPLEADO",
    sophieClueEnglishIntent: "Say you need to get to [X]",
    sophiePhoneticHint: "ne-se-si-to lle-gar a [X]",
    targetLanguageAnchor: "Necesito llegar a [X]",
    slotOptions: ["el Parque Güell", "el Camp Nou", "la Barceloneta", "Montjuïc"],
    npcAudioResponseTranscript:
        "Tome la L3 dirección Canyelles — tres paradas.",
    graffitiStyleTag: "Green 'L3 DIRECCIÓN →' metro line tag",
    npcName: "Empleado del Metro",
    npcAvatarEmoji: "🚇",
  ),

  // ── S3: PAT_10 Rep 4 — Ask what time the last train is ──
  Scenario(
    scenarioId: "ES_M09_S03",
    missionId: 9,
    environmentContext:
        "Renfe Rodalies. Suburban rail. You need to get "
        "to Sitges for the day but the return trip worries you. "
        "Last train?",
    introFlag: true,
    environmentalTextPrompt: "🚂 RENFE RODALIES — ¿ÚLTIMO TREN A BARCELONA?",
    sophieClueEnglishIntent: "Ask what time the last train to Barcelona is",
    sophiePhoneticHint: "a ke o-ra es el ul-ti-mo tren a bar-se-lo-na",
    targetLanguageAnchor: "¿A qué hora es el último tren a Barcelona?",
    slotOptions: ["a Barcelona", "de vuelta", "el último tren"],
    npcAudioResponseTranscript:
        "El último sale a las 23:18 desde Sitges. No lo pierda.",
    graffitiStyleTag: "Orange 'ÚLTIMO TREN 23:18' timetable tag",
    npcName: "Empleada de Renfe",
    npcAvatarEmoji: "🎫",
  ),

  // ── S4: PAT_13 Rep 5 — Request: validate my ticket ───────
  Scenario(
    scenarioId: "ES_M09_S04",
    missionId: 9,
    environmentContext:
        "The ticket machine printed your Renfe ticket "
        "but didn't stamp it — you think. "
        "The inspector is two carriages away.",
    introFlag: false,
    environmentalTextPrompt: "🎫 ¿NECESITO VALIDAR EL BILLETE?",
    sophieClueEnglishIntent: "Ask if you need to validate your ticket",
    sophiePhoneticHint: "ne-se-si-to ba-li-dar el bi-lle-te",
    targetLanguageAnchor: "¿Necesito validar el billete?",
    slotOptions: ["validar el billete", "sellarlo", "pasarlo por la máquina"],
    npcAudioResponseTranscript:
        "No — los de Renfe vienen ya validados. Está bien.",
    graffitiStyleTag: "Purple 'VALIDADO ✓' ticket stamp tag",
    npcName: "Inspector",
    npcAvatarEmoji: "🕵️",
  ),

  // ── S5: PAT_03 Rep 4 — Ask where bus stop is ────────────
  Scenario(
    scenarioId: "ES_M09_S05",
    missionId: 9,
    environmentContext:
        "Sitges. Beautiful. But you've walked further "
        "than you meant to. Your feet hurt. "
        "There's meant to be a bus back to the centre.",
    introFlag: true,
    environmentalTextPrompt: "🚌 SITGES — ¿DÓNDE ESTÁ LA PARADA DE AUTOBÚS?",
    sophieClueEnglishIntent: "Ask where the bus stop is",
    sophiePhoneticHint: "don-de es-ta la pa-ra-da de au-to-bus",
    targetLanguageAnchor: "¿Dónde está la parada de autobús?",
    slotOptions: ["la parada de autobús", "la parada del L95", "la parada más cercana"],
    npcAudioResponseTranscript:
        "Al final del paseo marítimo, junto al quiosco.",
    graffitiStyleTag: "Yellow 'PARADA 🚌' bus stop tag — coastal town style",
    npcName: "Paseante",
    npcAvatarEmoji: "👵",
  ),

  // ── S6: PAT_09 Rep 4 — Ask for a return ticket ──────────
  Scenario(
    scenarioId: "ES_M09_S06",
    missionId: 9,
    environmentContext:
        "The bus ticket machine by the stop. "
        "A queue behind you. You need a return. "
        "The screen is partly sun-bleached.",
    introFlag: false,
    environmentalTextPrompt: "🎫 BILLETE DE IDA Y VUELTA",
    sophieClueEnglishIntent: "Ask for a return ticket to [X]",
    sophiePhoneticHint: "un bi-lle-te de i-da y bwel-ta a [X]",
    targetLanguageAnchor: "Un billete de ida y vuelta a [X]",
    slotOptions: ["Sitges centro", "el centro de Sitges", "la estación"],
    npcAudioResponseTranscript:
        "Cuatro con veinte. Toque aquí para pagar.",
    graffitiStyleTag: "Green 'IDA Y VUELTA ↔' return ticket tag",
    npcName: "Máquina de Billetes",
    npcAvatarEmoji: "🎫",
  ),

  // ── S7: PAT_14 Rep 6 — Direction: I'm lost ──────────────
  Scenario(
    scenarioId: "ES_M09_S07",
    missionId: 9,
    environmentContext:
        "Back in Barcelona. You took the wrong exit "
        "from Passeig de Gràcia and nothing matches "
        "the map on your phone (no data). "
        "A cyclist stops at the lights.",
    introFlag: true,
    environmentalTextPrompt: "😕 ME HE PERDIDO — PASSEIG DE GRÀCIA",
    sophieClueEnglishIntent: "Say you're lost and ask for help",
    sophiePhoneticHint: "me e per-di-do pwe-de a-yu-dar-me",
    targetLanguageAnchor: "Me he perdido, ¿puede ayudarme?",
    slotOptions: ["¿puede ayudarme?", "¿sabe dónde estoy?", "¿cómo llego al centro?"],
    npcAudioResponseTranscript:
        "Claro. ¿Adónde quiere ir?",
    graffitiStyleTag: "Red '¡PERDIDO! 📍' emergency navigation tag",
    npcName: "Ciclista",
    npcAvatarEmoji: "🚴",
  ),

  // ── S8: PAT_02 Rep 7 — Buy a T-Casual metro card ─────────
  Scenario(
    scenarioId: "ES_M09_S08",
    missionId: 9,
    environmentContext:
        "The TMB ticket office at Plaça Catalunya. "
        "Long queue but it's moving. "
        "You've decided a ten-trip card is better value.",
    introFlag: true,
    environmentalTextPrompt: "🎫 T-CASUAL — TARJETA DE 10 VIAJES",
    sophieClueEnglishIntent: "Ask for a T-Casual 10-trip card",
    sophiePhoneticHint: "ki-sye-ra u-na tar-xe-ta T-ka-swal",
    targetLanguageAnchor: "Quisiera una tarjeta T-Casual",
    slotOptions: ["T-Casual", "T-10 viajes", "bono de metro"],
    npcAudioResponseTranscript:
        "Doce con quince. ¿Zona 1 o más zonas?",
    graffitiStyleTag: "Blue 'T-CASUAL' transit card tag — TMB style",
    npcName: "Empleada de TMB",
    npcAvatarEmoji: "🎟️",
  ),

  // ── S9: PAT_15 Rep 7 — Repair: wrong platform ───────────
  Scenario(
    scenarioId: "ES_M09_S09",
    missionId: 9,
    environmentContext:
        "Platform 3. You thought the announcement said "
        "this was for Sants. But everyone is getting off. "
        "An employee walks through.",
    introFlag: false,
    environmentalTextPrompt: "🚉 ¿ES ESTE EL ANDÉN PARA SANTS?",
    sophieClueEnglishIntent: "Ask if this is the platform for Sants",
    sophiePhoneticHint: "es es-te el an-den pa-ra san-ts",
    targetLanguageAnchor: "¿Es este el andén para Sants?",
    slotOptions: ["¿para Sants?", "¿el tren a Sants?", "¿dirección Sants?"],
    npcAudioResponseTranscript:
        "No — Sants es el andén cinco. Todavía tiene tiempo.",
    graffitiStyleTag: "White '¿ANDÉN 5?' platform confirmation bubble",
    npcName: "Empleado de Renfe",
    npcAvatarEmoji: "🚂",
  ),

  // ── S10: PAT_01 Rep 8 — DRILL: ask for a metro map ───────
  Scenario(
    scenarioId: "ES_M09_S10",
    missionId: 9,
    environmentContext:
        "You made it to Sants. Safe. But you realise "
        "you've been guessing all day. "
        "The information desk has a stack of paper maps.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ MAPA DEL METRO — INFORMACIÓN",
    sophieClueEnglishIntent: "Ask for a metro map please",
    sophiePhoneticHint: "pwe-de dar-me un ma-pa del me-tro",
    targetLanguageAnchor: "¿Puede darme un mapa del metro?",
    slotOptions: ["un mapa del metro", "un plano de líneas", "el mapa de Renfe"],
    npcAudioResponseTranscript:
        "Aquí tiene. ¡Y que no se pierda más!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Estació de Sants stamp",
    npcName: "Informador",
    npcAvatarEmoji: "ℹ️",
  ),
];
