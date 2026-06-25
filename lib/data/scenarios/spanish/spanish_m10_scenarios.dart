// lib/data/scenarios/spanish/spanish_m10_scenarios.dart
//
// MISSION 10: THE DEPARTURE — 10 SCENARIOS
// ===========================================
// Location: Barcelona El Prat Airport — Departure day
// Type: GRAND FINALE — ALL PATTERNS AT PEAK FLUENCY
// Pattern coverage (final reps for all 16 patterns):
//   PAT_01(R9-DRILL), PAT_02(R8), PAT_03(R5), PAT_04(R6),
//   PAT_05(R4), PAT_06(R9), PAT_07(R5), PAT_08(R6),
//   PAT_09(R5), PAT_10(R5), PAT_11(R6), PAT_12(R8),
//   PAT_13(R6), PAT_14(R7), PAT_15(R8), PAT_16(R7)
// Primary words: facturar, cuánto pesa, tiene, de parte de,
//   perdone, a qué hora, quisiera, me llamo, hay, me duele,
//   siga, puede darme, para, muy caro, aquí tiene, adiós

import '../../../models/models.dart';

const List<Scenario> spanishM10Scenarios = [

  // ── S1: PAT_16 Rep 7 — Final greeting: check-in desk ────
  Scenario(
    scenarioId: "ES_M10_S01",
    missionId: 10,
    environmentContext:
        "El Prat. Departure hall. You've done it. "
        "A week in Barcelona — the language, the city, "
        "the people. One last run of Spanish to get home. "
        "The check-in agent smiles from behind the desk.",
    introFlag: true,
    environmentalTextPrompt: "✈️ EL PRAT — HORA DE SALIR",
    sophieClueEnglishIntent: "Greet the agent with good morning",
    sophiePhoneticHint: "bwe-nos dee-as",
    targetLanguageAnchor: "Buenos días",
    slotOptions: ["Buenos días", "Buenas tardes", "Hola, buenos días"],
    npcAudioResponseTranscript:
        "Buenos días. Pasaporte y reserva, por favor.",
    graffitiStyleTag: "Gold 'BUENOS DÍAS ✈' departure greeting — final mission",
    npcName: "Agente de Check-in",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S2: PAT_05 Rep 4 — Confirm name on booking ──────────
  Scenario(
    scenarioId: "ES_M10_S02",
    missionId: 10,
    environmentContext:
        "She's scanning your passport and cross-checking "
        "the booking. She reads a name from the screen "
        "and looks up — confirming.",
    introFlag: false,
    environmentalTextPrompt: "📋 CONFIRMAR NOMBRE EN LA RESERVA",
    sophieClueEnglishIntent: "Confirm your name is [X]",
    sophiePhoneticHint: "see me lla-mo [X]",
    targetLanguageAnchor: "Sí, me llamo [X]",
    slotOptions: ["Ana García", "Marco Bellini", "Yuki Tanaka", "Sam Chen"],
    npcAudioResponseTranscript:
        "Perfecto. ¿Factura una maleta?",
    graffitiStyleTag: "White 'NOMBRE CONFIRMADO ✓' check-in stamp",
    npcName: "Agente de Check-in",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S3: PAT_02 Rep 8 — Request: check in one bag ────────
  Scenario(
    scenarioId: "ES_M10_S03",
    missionId: 10,
    environmentContext:
        "Yes — one bag to check in. "
        "You've stuffed it with market finds: "
        "a ceramic bowl in bubble wrap, spices, "
        "a leather wallet. It's heavy.",
    introFlag: false,
    environmentalTextPrompt: "🧳 FACTURAR UNA MALETA",
    sophieClueEnglishIntent: "Say you'd like to check in one bag",
    sophiePhoneticHint: "ki-sye-ra fak-tu-rar u-na ma-le-ta",
    targetLanguageAnchor: "Quisiera facturar una maleta",
    slotOptions: ["una maleta", "dos maletas", "solo equipaje de mano"],
    npcAudioResponseTranscript:
        "Claro. Póngala en la cinta, por favor.",
    graffitiStyleTag: "Orange 'FACTURAR 🧳' check-in baggage tag",
    npcName: "Agente de Check-in",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S4: PAT_04 Rep 6 — Ask how much overweight costs ────
  Scenario(
    scenarioId: "ES_M10_S04",
    missionId: 10,
    environmentContext:
        "The scale reads 24.2 kg. Your allowance is 23. "
        "The agent raises an eyebrow. "
        "Before she charges you automatically, "
        "you want to know the cost.",
    introFlag: false,
    environmentalTextPrompt: "⚖️ EXCESO DE EQUIPAJE — ¿CUÁNTO?",
    sophieClueEnglishIntent: "Ask how much the excess baggage costs",
    sophiePhoneticHint: "kwan-to kues-ta el ex-se-so de e-ki-pa-xe",
    targetLanguageAnchor: "¿Cuánto cuesta el exceso de equipaje?",
    slotOptions: ["el exceso de equipaje", "el kilo extra", "el recargo"],
    npcAudioResponseTranscript:
        "Doce euros por kilo. Son dos euros cuarenta extra.",
    graffitiStyleTag: "Red '⚖ EXCESO €12/kg' overweight fee tag",
    npcName: "Agente de Check-in",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S5: PAT_11 Rep 6 — Negotiate: ask if she can waive it
  Scenario(
    scenarioId: "ES_M10_S05",
    missionId: 10,
    environmentContext:
        "Two euros forty. Hardly a crisis — but you try anyway. "
        "A smile. A well-placed phrase. "
        "Maybe she can let it go.",
    introFlag: false,
    environmentalTextPrompt: "😅 ¿PUEDE HACER UNA EXCEPCIÓN?",
    sophieClueEnglishIntent: "Ask if she can make an exception",
    sophiePhoneticHint: "pwe-de ha-ser u-na ex-sep-syon",
    targetLanguageAnchor: "¿Puede hacer una excepción?",
    slotOptions: ["una excepción", "la vista gorda", "una vez"],
    npcAudioResponseTranscript:
        "Jaja — ¡esta vez sí! Pero solo porque son doscientos gramos.",
    graffitiStyleTag: "Green 'EXCEPCIÓN ✓ 😄' goodwill tag",
    npcName: "Agente de Check-in",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S6: PAT_08 Rep 6 — Hand over boarding pass ──────────
  Scenario(
    scenarioId: "ES_M10_S06",
    missionId: 10,
    environmentContext:
        "Security. The officer holds out her hand. "
        "You have the boarding pass on your phone. "
        "You turn the screen towards her.",
    introFlag: true,
    environmentalTextPrompt: "🛡️ CONTROL DE SEGURIDAD — TARJETA DE EMBARQUE",
    sophieClueEnglishIntent: "Say here is your boarding pass",
    sophiePhoneticHint: "a-kee tye-ne mi tar-xe-ta de em-bar-ke",
    targetLanguageAnchor: "Aquí tiene mi tarjeta de embarque",
    slotOptions: ["mi tarjeta de embarque", "mi pasaporte", "mis dos documentos"],
    npcAudioResponseTranscript:
        "Gracias. Quite el cinturón y los zapatos, por favor.",
    graffitiStyleTag: "Blue '🛂 EMBARQUE ✓' security clearance tag",
    npcName: "Agente de Seguridad",
    npcAvatarEmoji: "👮",
  ),

  // ── S7: PAT_03 Rep 5 — Ask where gate is ───────────────
  Scenario(
    scenarioId: "ES_M10_S07",
    missionId: 10,
    environmentContext:
        "Through security. Terminal T1. "
        "Your gate is B47. The signs are confusing. "
        "A ground crew member in a high-vis vest "
        "walks past.",
    introFlag: false,
    environmentalTextPrompt: "🚪 ¿DÓNDE ESTÁ LA PUERTA B47?",
    sophieClueEnglishIntent: "Ask where gate B47 is",
    sophiePhoneticHint: "don-de es-ta la puer-ta be kwa-ren-ta y sye-te",
    targetLanguageAnchor: "¿Dónde está la puerta B47?",
    slotOptions: ["la puerta B47", "la puerta de embarque", "el andén de salida"],
    npcAudioResponseTranscript:
        "Todo recto, luego el ascensor a la segunda planta. Señalizado.",
    graffitiStyleTag: "Cyan '→ PUERTA B47' gate direction tag",
    npcName: "Personal de Tierra",
    npcAvatarEmoji: "🦺",
  ),

  // ── S8: PAT_10 Rep 5 — Ask what time boarding starts ────
  Scenario(
    scenarioId: "ES_M10_S08",
    missionId: 10,
    environmentContext:
        "You're at the gate. Plenty of time. "
        "The departure board shows your flight "
        "but no boarding time yet. "
        "A gate agent is tidying papers at the desk.",
    introFlag: false,
    environmentalTextPrompt: "🕐 ¿A QUÉ HORA EMBARCAMOS?",
    sophieClueEnglishIntent: "Ask what time boarding starts",
    sophiePhoneticHint: "a ke o-ra em-bar-ka-mos",
    targetLanguageAnchor: "¿A qué hora embarcamos?",
    slotOptions: ["¿a qué hora embarcamos?", "¿cuándo abrirán la puerta?", "¿hay retraso?"],
    npcAudioResponseTranscript:
        "En veinte minutos. A las dos menos cuarto.",
    graffitiStyleTag: "Purple '⏱ EMBARQUE 13:45' gate time tag",
    npcName: "Agente de Puerta",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S9: PAT_09 Rep 5 — Ask for window seat on board ─────
  Scenario(
    scenarioId: "ES_M10_S09",
    missionId: 10,
    environmentContext:
        "On the plane. A flight attendant passes down the aisle "
        "before takeoff, checking bags and seats. "
        "You were assigned a middle seat. "
        "There's a window free two rows back.",
    introFlag: true,
    environmentalTextPrompt: "🪟 ¿PUEDO CAMBIAR AL ASIENTO DE VENTANILLA?",
    sophieClueEnglishIntent: "Ask if you can change to a window seat",
    sophiePhoneticHint: "pwe-do kam-byar al a-syen-to de ben-ta-ni-lla",
    targetLanguageAnchor: "¿Puedo cambiar al asiento de ventanilla?",
    slotOptions: ["de ventanilla", "de pasillo", "más adelante"],
    npcAudioResponseTranscript:
        "Sí, el 24A está libre. Adelante.",
    graffitiStyleTag: "Sky blue '🪟 ASIENTO 24A' window seat tag",
    npcName: "Azafata",
    npcAvatarEmoji: "💺",
  ),

  // ── S10: PAT_15 Rep 8 + PAT_07 Rep 5 — Goodbye + origin
  //         GRAND FINALE — all patterns consolidated
  Scenario(
    scenarioId: "ES_M10_S10",
    missionId: 10,
    environmentContext:
        "Seat 24A. The city falls away below. "
        "Sagrada Família. The port. The beach. "
        "The woman next to you is Spanish, heading home "
        "to Madrid after a conference. She smiles. "
        "One last conversation. In Spanish.",
    introFlag: false,
    environmentalTextPrompt: "🛫 DESPEGAR — ADIÓS BARCELONA",
    sophieClueEnglishIntent: "Tell her you're from [X] and it's been a wonderful week",
    sophiePhoneticHint: "soy de [X] i a si-do u-na se-ma-na ma-ra-bi-yo-sa",
    targetLanguageAnchor: "Soy de [X]. Ha sido una semana maravillosa",
    slotOptions: ["una semana maravillosa", "una experiencia increíble", "algo que no olvidaré"],
    npcAudioResponseTranscript:
        "¡Qué bonito! Barcelona enamora a todo el mundo. ¡Vuelva pronto!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA ✈ — ESPAÑOL DESBLOQUEADO 🇪🇸' FINAL STAMP",
    npcName: "Pasajera",
    npcAvatarEmoji: "👩",
  ),
];
