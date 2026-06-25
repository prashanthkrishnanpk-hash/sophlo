// lib/data/scenarios/spanish/spanish_m03_scenarios.dart
//
// MISSION 3: THE TAXI — 10 SCENARIOS
// =====================================
// Destination: Barcelona taxi — El Prat → Hotel in Eixample
// Type: DIRECTION + TRANSACTION PRESSURE
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2-DRILL), PAT_16(R4)
// Primary words: lléveme, pare, gire, todo recto, izquierda/derecha,
//   cuánto, euros, cambio, perdone, gracias

import '../../../models/models.dart';

const List<Scenario> spanishM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Direction: tell driver destination
  Scenario(
    scenarioId: "ES_M03_S01",
    missionId: 3,
    environmentContext:
        "A black and yellow Barcelona taxi. The driver "
        "catches your eye in the rearview mirror. "
        "City lights spread ahead. Where to?",
    introFlag: true,
    environmentalTextPrompt: "🚕 TAXI — ¿ADÓNDE?",
    sophieClueEnglishIntent: "Tell the driver where you want to go",
    sophiePhoneticHint: "lle-ve-me a [X] por fa-vor",
    targetLanguageAnchor: "Lléveme a [X], por favor",
    slotOptions: ["el Hotel Arts", "la Plaza de Cataluña", "el barrio Gótico", "Gràcia"],
    npcAudioResponseTranscript:
        "Perfecto. Unos veinte minutos con este tráfico.",
    graffitiStyleTag: "Yellow 'TAXI' bold Barcelona street tag",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S2: PAT_14 Rep 2 — Direction: go straight ───────────
  Scenario(
    scenarioId: "ES_M03_S02",
    missionId: 3,
    environmentContext:
        "The driver is going the long way. You see the Sagrada "
        "Família on the wrong side. You know this city "
        "from Google Maps. Time to intervene.",
    introFlag: true,
    environmentalTextPrompt: "📍 RUTA EQUIVOCADA — SIGA RECTO",
    sophieClueEnglishIntent: "Tell the driver to go straight",
    sophiePhoneticHint: "see-ga to-do rek-to",
    targetLanguageAnchor: "Siga todo recto",
    slotOptions: ["Todo recto", "Siga recto", "Por aquí no"],
    npcAudioResponseTranscript:
        "Ah, sí — tiene razón. Por aquí más rápido.",
    graffitiStyleTag: "Blue '→ RECTO' direction arrow — road marking style",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S3: PAT_14 Rep 3 — Direction: turn left ─────────────
  Scenario(
    scenarioId: "ES_M03_S03",
    missionId: 3,
    environmentContext:
        "Almost there. The one-way system is a nightmare. "
        "You need him to turn left at the next junction.",
    introFlag: false,
    environmentalTextPrompt: "↙️ GIRE A LA IZQUIERDA",
    sophieClueEnglishIntent: "Tell the driver to turn left",
    sophiePhoneticHint: "gi-re a la is-kyer-da",
    targetLanguageAnchor: "Gire a la izquierda",
    slotOptions: ["a la izquierda", "a la derecha", "en la próxima"],
    npcAudioResponseTranscript:
        "Aquí mismo. Ya casi estamos.",
    graffitiStyleTag: "White '↙ IZQUIERDA' chalk arrow — pavement style",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S4: PAT_06 Rep 2 — Ask if card payment accepted ─────
  Scenario(
    scenarioId: "ES_M03_S04",
    missionId: 3,
    environmentContext:
        "You've arrived. The meter reads €18.40. "
        "You have no cash — only a card. "
        "Some Barcelona taxis don't take them.",
    introFlag: true,
    environmentalTextPrompt: "💳 FIN DEL TRAYECTO — ¿ACEPTAN TARJETA?",
    sophieClueEnglishIntent: "Ask if they accept card payment",
    sophiePhoneticHint: "a-sep-tan tar-xe-ta",
    targetLanguageAnchor: "¿Aceptan tarjeta?",
    slotOptions: ["tarjeta", "tarjeta de crédito", "Visa", "pago móvil"],
    npcAudioResponseTranscript:
        "Sí, sin problema. Ponga el PIN.",
    graffitiStyleTag: "Green 'VISA ✓' payment accepted tag — receipt style",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S5: PAT_04 Rep 1 — Price question: how much ─────────
  Scenario(
    scenarioId: "ES_M03_S05",
    missionId: 3,
    environmentContext:
        "A different ride — no meter visible. "
        "A tuk-tuk driver near the Gothic Quarter "
        "offers you a tour. Before you get in, "
        "you need to know the price.",
    introFlag: true,
    environmentalTextPrompt: "🛺 TUK-TUK — BARRIO GÓTICO",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "kwan-to kues-ta",
    targetLanguageAnchor: "¿Cuánto cuesta?",
    slotOptions: ["¿Cuánto cuesta?", "¿Cuánto es?", "¿Qué precio tiene?"],
    npcAudioResponseTranscript:
        "Diez euros por persona para el tour de treinta minutos.",
    graffitiStyleTag: "Orange 'PRECIO?' question tag — market stall style",
    npcName: "Conductor de Tuk-tuk",
    npcAvatarEmoji: "🛺",
  ),

  // ── S6: PAT_11 Rep 1 — Negotiation: too expensive ───────
  Scenario(
    scenarioId: "ES_M03_S06",
    missionId: 3,
    environmentContext:
        "Ten euros per person for thirty minutes. "
        "There are two of you. That's twenty. "
        "You know the locals pay less. Time to negotiate.",
    introFlag: false,
    environmentalTextPrompt: "💸 PRECIO — DEMASIADO CARO",
    sophieClueEnglishIntent: "Say it's too expensive",
    sophiePhoneticHint: "es de-ma-sya-do ka-ro",
    targetLanguageAnchor: "Es demasiado caro",
    slotOptions: ["demasiado caro", "muy caro", "¿puede hacer un descuento?"],
    npcAudioResponseTranscript:
        "Bueno... para los dos, quince euros. Última oferta.",
    graffitiStyleTag: "Red 'MUY CARO' price splatter tag — market aesthetic",
    npcName: "Conductor de Tuk-tuk",
    npcAvatarEmoji: "🛺",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: ask for receipt ───────────
  Scenario(
    scenarioId: "ES_M03_S07",
    missionId: 3,
    environmentContext:
        "Deal struck. Tour done. You need a receipt "
        "for expenses. The driver reaches for his phone.",
    introFlag: false,
    environmentalTextPrompt: "🧾 NECESITO EL RECIBO",
    sophieClueEnglishIntent: "Ask for a receipt please",
    sophiePhoneticHint: "pwe-de dar-me un re-si-bo por fa-vor",
    targetLanguageAnchor: "¿Puede darme un recibo, por favor?",
    slotOptions: ["un recibo", "una factura", "el comprobante"],
    npcAudioResponseTranscript:
        "Claro, ahora mismo lo imprimo.",
    graffitiStyleTag: "Grey 'RECIBO' receipt tear-off tag",
    npcName: "Conductor de Tuk-tuk",
    npcAvatarEmoji: "🛺",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: didn't catch the address
  Scenario(
    scenarioId: "ES_M03_S08",
    missionId: 3,
    environmentContext:
        "Back in a taxi. You gave the address but "
        "the driver repeated it back differently. "
        "Did you say it wrong? You're not sure.",
    introFlag: true,
    environmentalTextPrompt: "😕 ¿HA DICHO BIEN LA DIRECCIÓN?",
    sophieClueEnglishIntent: "Ask if they understood your address",
    sophiePhoneticHint: "me a en-ten-di-do byen",
    targetLanguageAnchor: "¿Me ha entendido bien?",
    slotOptions: ["¿Me ha entendido?", "¿Es correcto?", "¿Está bien?"],
    npcAudioResponseTranscript:
        "Sí sí, calle Provença número ochenta. ¿No?",
    graffitiStyleTag: "White '¿CORRECTO?' confirmation bubble — chalk style",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S9: PAT_12 Rep 2 — DRILL: stop here ─────────────────
  Scenario(
    scenarioId: "ES_M03_S09",
    missionId: 3,
    environmentContext:
        "Close enough. You see your hotel. The driver "
        "is about to go past. Now.",
    introFlag: false,
    environmentalTextPrompt: "🛑 ¡AQUÍ! — PARAR",
    sophieClueEnglishIntent: "Tell the driver to stop here",
    sophiePhoneticHint: "pa-re a-kee por fa-vor",
    targetLanguageAnchor: "Pare aquí, por favor",
    slotOptions: ["Pare aquí", "Aquí mismo", "En esta esquina"],
    npcAudioResponseTranscript:
        "¡Ah! Sí, ahora mismo.",
    graffitiStyleTag: "Red 'PARE ✋' bold stop tag — road marking",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),

  // ── S10: PAT_16 Rep 4 — Warm farewell: mission close ────
  Scenario(
    scenarioId: "ES_M03_S10",
    missionId: 3,
    environmentContext:
        "You're out on the pavement. Warm Barcelona evening. "
        "The taxi driver leans across and says something "
        "friendly through the window. You respond in kind.",
    introFlag: false,
    environmentalTextPrompt: "🌆 BARCELONA — LLEGADO AL HOTEL",
    sophieClueEnglishIntent: "Thank the driver and say enjoy your evening",
    sophiePhoneticHint: "mu-chas gra-syas, bwe-nas no-ches",
    targetLanguageAnchor: "Muchas gracias, buenas noches",
    slotOptions: ["Muchas gracias", "Gracias a usted", "¡Hasta luego!"],
    npcAudioResponseTranscript:
        "¡A usted! ¡Bienvenido a Barcelona!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Barcelona cab ride stamp",
    npcName: "Taxista",
    npcAvatarEmoji: "🚖",
  ),
];
