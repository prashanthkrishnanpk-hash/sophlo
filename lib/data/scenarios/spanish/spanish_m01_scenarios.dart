// lib/data/scenarios/spanish/spanish_m01_scenarios.dart
//
// MISSION 1: THE FLIGHT — 6 SCENARIOS
// =====================================
// Destination: Barcelona, Spain
// Type: ONBOARDING — teach the mechanic, not the language
// ALL introFlag: true

import '../../../models/models.dart';

const List<Scenario> spanishM01Scenarios = [

  Scenario(
    scenarioId: "ES_M01_S01",
    missionId: 1,
    environmentContext:
        "The cabin smells of coffee and recycled air. "
        "A flight attendant pauses at your row, "
        "warm smile, tray in hand.",
    introFlag: true,
    environmentalTextPrompt: "🛫 DESPEGANDO — RUMBO A BARCELONA",
    sophieClueEnglishIntent: "Greet the flight attendant",
    sophiePhoneticHint: "oh-la",
    targetLanguageAnchor: "Hola",
    slotOptions: ["Hola", "Buenos días", "Buenas tardes"],
    npcAudioResponseTranscript:
        "¡Hola! Bienvenido a bordo. ¿Primera vez en Barcelona?",
    graffitiStyleTag: "Red and yellow 'HOLA' bold Barcelona street tag",
    npcName: "Carmen",
    npcAvatarEmoji: "👩‍✈️",
  ),

  Scenario(
    scenarioId: "ES_M01_S02",
    missionId: 1,
    environmentContext:
        "Someone is in your seat. They look up, unbothered. "
        "Your boarding pass says otherwise.",
    introFlag: true,
    environmentalTextPrompt: "🎫 TARJETA DE EMBARQUE — ASIENTO [X]",
    sophieClueEnglishIntent: "Tell them your seat number",
    sophiePhoneticHint: "mi a-syen-to es el [X]",
    targetLanguageAnchor: "Mi asiento es el [X]",
    slotOptions: ["12A", "24B", "7C", "31F", "18D"],
    npcAudioResponseTranscript:
        "¡Ay, lo siento! Me equivoqué de fila.",
    graffitiStyleTag: "Orange 'ASIENTO' seat tag — boarding pass style",
    npcName: "Pasajero",
    npcAvatarEmoji: "🧑",
  ),

  Scenario(
    scenarioId: "ES_M01_S03",
    missionId: 1,
    environmentContext:
        "Cruising altitude. The drinks trolley rattles down "
        "the aisle. The attendant looks at you.",
    introFlag: true,
    environmentalTextPrompt: "🥤 CARRITO DE BEBIDAS — [X]",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "pon-ga-me [X] por fa-vor",
    targetLanguageAnchor: "Póngame [X], por favor",
    slotOptions: ["agua", "un café", "un zumo", "una Coca-Cola"],
    npcAudioResponseTranscript:
        "Claro que sí, ahora mismo.",
    graffitiStyleTag: "Blue 'AGUA' drip tag — Barcelona ceramic style",
    npcName: "Miguel",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  Scenario(
    scenarioId: "ES_M01_S04",
    missionId: 1,
    environmentContext:
        "Turbulence over the Pyrenees. Your stomach "
        "disagrees with the altitude. The call button glows.",
    introFlag: true,
    environmentalTextPrompt: "😰 TURBULENCIA — ME SIENTO MAL",
    sophieClueEnglishIntent: "Tell the attendant you feel ill",
    sophiePhoneticHint: "me syen-to mal",
    targetLanguageAnchor: "Me siento mal",
    slotOptions: ["Me siento mal", "Tengo náuseas", "Me mareo"],
    npcAudioResponseTranscript:
        "¡Tranquilo! ¿Le traigo una bolsita?",
    graffitiStyleTag: "Red 'SOCORRO' urgent splatter tag",
    npcName: "Carmen",
    npcAvatarEmoji: "👩‍✈️",
  ),

  Scenario(
    scenarioId: "ES_M01_S05",
    missionId: 1,
    environmentContext:
        "Meal service. The trolley stops. Chicken or fish? "
        "The eternal question thirty thousand feet up.",
    introFlag: true,
    environmentalTextPrompt: "🍽️ SERVICIO DE COMIDA",
    sophieClueEnglishIntent: "Say you'd like the [X]",
    sophiePhoneticHint: "qui-sye-ra [X] por fa-vor",
    targetLanguageAnchor: "Quisiera [X], por favor",
    slotOptions: ["el pollo", "el pescado", "la opción vegetariana"],
    npcAudioResponseTranscript:
        "Perfecto. ¿Algo más?",
    graffitiStyleTag: "Yellow 'MENÚ' food stamp — airline tray",
    npcName: "Miguel",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  Scenario(
    scenarioId: "ES_M01_S06",
    missionId: 1,
    environmentContext:
        "Wheels down. Barcelona El Prat. Mediterranean light "
        "floods the window. You've made it.",
    introFlag: true,
    environmentalTextPrompt: "🛬 ATERRIZAJE — BARCELONA",
    sophieClueEnglishIntent: "Thank the attendant and say goodbye",
    sophiePhoneticHint: "moo-chas gra-syas, as-ta lwe-go",
    targetLanguageAnchor: "Muchas gracias, hasta luego",
    slotOptions: ["Muchas gracias", "Gracias", "¡Gracias a usted!"],
    npcAudioResponseTranscript:
        "¡Gracias a usted! ¡Disfrute Barcelona!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Barcelona El Prat stamp",
    npcName: "Carmen",
    npcAvatarEmoji: "👩‍✈️",
  ),
];
