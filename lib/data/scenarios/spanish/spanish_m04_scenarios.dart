// lib/data/scenarios/spanish/spanish_m04_scenarios.dart
//
// MISSION 4: THE HOSTEL — 10 SCENARIOS
// =======================================
// Location: Hostal Grau, El Raval, Barcelona
// Type: ACCOMMODATION + SOCIAL PRESSURE
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Primary words: tengo una reserva, me llamo, aquí tiene, dónde está,
//   hay wifi, a qué hora, vengo de, también, perdone, quisiera

import '../../../models/models.dart';

const List<Scenario> spanishM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Claim reservation ────────────────
  Scenario(
    scenarioId: "ES_M04_S01",
    missionId: 4,
    environmentContext:
        "The hostel reception. Exposed brick, fairy lights, "
        "a hand-drawn map of the Gothic Quarter on the wall. "
        "The receptionist looks up from her screen.",
    introFlag: true,
    environmentalTextPrompt: "🏨 RECEPCIÓN DEL HOSTAL — REGISTRO",
    sophieClueEnglishIntent: "Say you have a reservation",
    sophiePhoneticHint: "ten-go u-na re-ser-va",
    targetLanguageAnchor: "Tengo una reserva",
    slotOptions: ["una reserva", "una habitación reservada", "una reserva online"],
    npcAudioResponseTranscript:
        "Perfecto. ¿A nombre de quién está?",
    graffitiStyleTag: "Red 'RESERVA' booking tag — hostel reception style",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S2: PAT_05 Rep 3 — Give name for booking ────────────
  Scenario(
    scenarioId: "ES_M04_S02",
    missionId: 4,
    environmentContext:
        "She's scrolling through bookings. There are a lot. "
        "She needs your name to find it.",
    introFlag: false,
    environmentalTextPrompt: "📋 ¿A NOMBRE DE QUIÉN?",
    sophieClueEnglishIntent: "Say your name is [X]",
    sophiePhoneticHint: "me lla-mo [X]",
    targetLanguageAnchor: "Me llamo [X]",
    slotOptions: ["Ana García", "Liam Torres", "Mia Rossi", "Omar Khalid"],
    npcAudioResponseTranscript:
        "Aquí está. Habitación compartida, tres noches. ¿Correcto?",
    graffitiStyleTag: "White 'NOMBRE' chalk tag — worn document aesthetic",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport for check-in ──
  Scenario(
    scenarioId: "ES_M04_S03",
    missionId: 4,
    environmentContext:
        "She asks for ID. Spanish law requires it for check-in. "
        "You fish your passport out of your bag.",
    introFlag: false,
    environmentalTextPrompt: "🪪 NECESITO VER SU PASAPORTE",
    sophieClueEnglishIntent: "Hand over your passport and say here it is",
    sophiePhoneticHint: "a-kee tye-ne mi pa-sa-por-te",
    targetLanguageAnchor: "Aquí tiene mi pasaporte",
    slotOptions: ["mi pasaporte", "mi DNI", "mi identificación"],
    npcAudioResponseTranscript:
        "Perfecto, le hago una foto. Un momento.",
    graffitiStyleTag: "Orange 'DNI' document stamp — Spanish style",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S4: PAT_03 Rep 2 — Location: where is the room ──────
  Scenario(
    scenarioId: "ES_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. Your bag is heavy. "
        "The building is old — a converted 19th-century apartment. "
        "No obvious signage for room numbers.",
    introFlag: false,
    environmentalTextPrompt: "🗝️ ¿DÓNDE ESTÁ MI HABITACIÓN?",
    sophieClueEnglishIntent: "Ask where your room is",
    sophiePhoneticHint: "don-de es-ta mi a-bi-ta-syon",
    targetLanguageAnchor: "¿Dónde está mi habitación?",
    slotOptions: ["mi habitación", "el ascensor", "las duchas", "el baño"],
    npcAudioResponseTranscript:
        "Segunda planta, a la derecha del ascensor. El cuatro-B.",
    graffitiStyleTag: "Cyan '→ HAB. 4B' room arrow tag — hostel style",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S5: PAT_06 Rep 3 — Ask if WiFi available ────────────
  Scenario(
    scenarioId: "ES_M04_S05",
    missionId: 4,
    environmentContext:
        "You need to message home. The hostel listing "
        "mentioned WiFi but you need the password.",
    introFlag: false,
    environmentalTextPrompt: "📶 ¿HAY WIFI?",
    sophieClueEnglishIntent: "Ask if there is WiFi",
    sophiePhoneticHint: "ay wi-fi a-kee",
    targetLanguageAnchor: "¿Hay WiFi aquí?",
    slotOptions: ["WiFi", "conexión a internet", "contraseña del WiFi"],
    npcAudioResponseTranscript:
        "Sí, la contraseña es 'Barcelona2024'. Con mayúscula.",
    graffitiStyleTag: "Blue 'WiFi ✓' network signal tag",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S6: PAT_10 Rep 2 — Ask what time breakfast is ───────
  Scenario(
    scenarioId: "ES_M04_S06",
    missionId: 4,
    environmentContext:
        "You're starving. There's a hand-written sign "
        "about desayuno. You need to know the hours.",
    introFlag: true,
    environmentalTextPrompt: "☕ ¿A QUÉ HORA ES EL DESAYUNO?",
    sophieClueEnglishIntent: "Ask what time breakfast is",
    sophiePhoneticHint: "a ke o-ra es el de-sa-yu-no",
    targetLanguageAnchor: "¿A qué hora es el desayuno?",
    slotOptions: ["el desayuno", "la cena", "el check-out"],
    npcAudioResponseTranscript:
        "De ocho a diez. Incluido en su reserva.",
    graffitiStyleTag: "Yellow 'DESAYUNO' morning tag — café chalk board",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S7: PAT_07 Rep 2 — Tell roommate where you're from ──
  Scenario(
    scenarioId: "ES_M04_S07",
    missionId: 4,
    environmentContext:
        "The dormitory. Six beds. A Spanish girl with "
        "a backpack twice her size asks where you're from. "
        "She speaks no English.",
    introFlag: true,
    environmentalTextPrompt: "🌍 CONOCER A UN COMPAÑERO DE HABITACIÓN",
    sophieClueEnglishIntent: "Say where you are from",
    sophiePhoneticHint: "soy de [X]",
    targetLanguageAnchor: "Soy de [X]",
    slotOptions: ["Italia", "Alemania", "Francia", "Japón", "Brasil"],
    npcAudioResponseTranscript:
        "¡Qué guay! Yo soy de Sevilla. ¿Es tu primera vez en Barcelona?",
    graffitiStyleTag: "Green 'SOY DE' origin tag — passport stamp style",
    npcName: "Lucía",
    npcAvatarEmoji: "🧳",
  ),

  // ── S8: PAT_13 Rep 1 — Request: ask for extra towel ─────
  Scenario(
    scenarioId: "ES_M04_S08",
    missionId: 4,
    environmentContext:
        "One towel in your locker. You need two. "
        "Back at reception.",
    introFlag: false,
    environmentalTextPrompt: "🛁 NECESITO UNA TOALLA MÁS",
    sophieClueEnglishIntent: "Ask for an extra towel",
    sophiePhoneticHint: "pwe-do pe-dir u-na to-a-lla mas",
    targetLanguageAnchor: "¿Puedo pedir una toalla más?",
    slotOptions: ["una toalla más", "otra manta", "un candado", "ropa de cama"],
    npcAudioResponseTranscript:
        "Claro, le traigo una ahora mismo.",
    graffitiStyleTag: "Teal 'TOALLA +1' request tag — hotel linen style",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: missed checkout time ─────
  Scenario(
    scenarioId: "ES_M04_S09",
    missionId: 4,
    environmentContext:
        "Reception is busy. Someone gave you the checkout time "
        "but you were distracted by your phone. "
        "You need to check you heard right.",
    introFlag: false,
    environmentalTextPrompt: "🕙 ¿A QUÉ HORA DIJE QUE ERA EL CHECKOUT?",
    sophieClueEnglishIntent: "Ask if checkout is at eleven",
    sophiePhoneticHint: "el check-out es a las on-se no es a-see",
    targetLanguageAnchor: "El check-out es a las once, ¿no es así?",
    slotOptions: ["a las once", "a mediodía", "a las doce"],
    npcAudioResponseTranscript:
        "Exacto. A las once. Puede dejar el equipaje si quiere.",
    graffitiStyleTag: "White '¿A LAS ONCE?' confirmation bubble",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: ask for map of city ──────
  Scenario(
    scenarioId: "ES_M04_S10",
    missionId: 4,
    environmentContext:
        "You're ready to go out. The hostel has a rack "
        "of local maps and flyers. "
        "You want the official city map.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ MAPA DE BARCELONA",
    sophieClueEnglishIntent: "Ask for a map of the city",
    sophiePhoneticHint: "pwe-de dar-me un ma-pa de la syu-dad",
    targetLanguageAnchor: "¿Puede darme un mapa de la ciudad?",
    slotOptions: ["un mapa de la ciudad", "un mapa del metro", "la guía turística"],
    npcAudioResponseTranscript:
        "¡Por supuesto! Y llévese también este de los mercados.",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Hostal Grau check-in stamp",
    npcName: "Recepcionista",
    npcAvatarEmoji: "🧑‍💻",
  ),
];
