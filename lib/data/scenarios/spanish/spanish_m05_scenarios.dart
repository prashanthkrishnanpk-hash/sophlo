// lib/data/scenarios/spanish/spanish_m05_scenarios.dart
//
// MISSION 5: THE CAFÉ — 10 SCENARIOS
// =====================================
// Location: Bar Marsella, El Raval / Local granja, Barcelona
// Type: FOOD + SOCIAL FLUENCY
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Primary words: libre, quisiera, deme, alergia, cuánto,
//   un poco de, no, para, soy vegetariano, gracias

import '../../../models/models.dart';

const List<Scenario> spanishM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Ask if this seat is free ─────────
  Scenario(
    scenarioId: "ES_M05_S01",
    missionId: 5,
    environmentContext:
        "A sun-drenched terrace. Every seat taken — almost. "
        "There's a spare chair at a table where a man "
        "reads a newspaper. He looks approachable.",
    introFlag: true,
    environmentalTextPrompt: "☀️ TERRAZA — ¿ESTÁ LIBRE ESTA SILLA?",
    sophieClueEnglishIntent: "Ask if this seat is free",
    sophiePhoneticHint: "es-ta li-bre es-ta si-lla",
    targetLanguageAnchor: "¿Está libre esta silla?",
    slotOptions: ["esta silla", "este sitio", "esta mesa"],
    npcAudioResponseTranscript:
        "Sí, sí, cójala. Estoy solo.",
    graffitiStyleTag: "Yellow 'LIBRE' sun tag — terrace café style",
    npcName: "Señor Mayor",
    npcAvatarEmoji: "📰",
  ),

  // ── S2: PAT_02 Rep 3 — Order coffee ─────────────────────
  Scenario(
    scenarioId: "ES_M05_S02",
    missionId: 5,
    environmentContext:
        "The waiter appears. Young, efficient, the kind "
        "who takes orders without a notepad and gets "
        "everything right. Time to order.",
    introFlag: true,
    environmentalTextPrompt: "☕ CAMARERO — PEDIR CAFÉ",
    sophieClueEnglishIntent: "Order a coffee please",
    sophiePhoneticHint: "un ka-fe con le-che por fa-vor",
    targetLanguageAnchor: "Un café con leche, por favor",
    slotOptions: ["un café con leche", "un cortado", "un café solo", "un café americano"],
    npcAudioResponseTranscript:
        "Enseguida. ¿Algo más?",
    graffitiStyleTag: "Brown 'CAFÉ CON LECHE' barista tag — ceramic cup style",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — DRILL: order breakfast ───────────
  Scenario(
    scenarioId: "ES_M05_S03",
    missionId: 5,
    environmentContext:
        "You need food. The waiter is still there, "
        "pen now ready. The menu is all in Catalan "
        "but you know what you want.",
    introFlag: false,
    environmentalTextPrompt: "🥐 PEDIR DESAYUNO",
    sophieClueEnglishIntent: "Order [X] please",
    sophiePhoneticHint: "ki-sye-ra [X] por fa-vor",
    targetLanguageAnchor: "Quisiera [X], por favor",
    slotOptions: ["una tostada con tomate", "un croissant", "un bocadillo de jamón", "unos churros"],
    npcAudioResponseTranscript:
        "Muy bien. Marchando.",
    graffitiStyleTag: "Red 'PAN CON TOMATE' Barcelona breakfast tag",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — DRILL: call for the bill ─────────
  Scenario(
    scenarioId: "ES_M05_S04",
    missionId: 5,
    environmentContext:
        "Coffee drunk, croissant gone. You need to catch "
        "the 10am tour. The waiter is at the back "
        "of the terrace.",
    introFlag: false,
    environmentalTextPrompt: "🧾 PEDIR LA CUENTA",
    sophieClueEnglishIntent: "Ask for the bill",
    sophiePhoneticHint: "la kwen-ta por fa-vor",
    targetLanguageAnchor: "La cuenta, por favor",
    slotOptions: ["La cuenta", "¿Me cobra?", "¿Cuánto es?"],
    npcAudioResponseTranscript:
        "Ahora mismo. Son cuatro con ochenta.",
    graffitiStyleTag: "Grey 'LA CUENTA' receipt tear-off tag",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Ask price of water ───────────────
  Scenario(
    scenarioId: "ES_M05_S05",
    missionId: 5,
    environmentContext:
        "A different café, later in the day. "
        "The tourist trap zone near La Rambla. "
        "You want water but you've heard stories. "
        "Ask first.",
    introFlag: true,
    environmentalTextPrompt: "💧 ¿CUÁNTO CUESTA EL AGUA?",
    sophieClueEnglishIntent: "Ask how much the water costs",
    sophiePhoneticHint: "kwan-to kues-ta el a-gua",
    targetLanguageAnchor: "¿Cuánto cuesta el agua?",
    slotOptions: ["el agua", "el agua mineral", "el agua del grifo"],
    npcAudioResponseTranscript:
        "Tres euros la botella. O agua del grifo gratis.",
    graffitiStyleTag: "Blue 'AGUA €3' price tag — tourist trap style",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_13 Rep 2 — Ask for a little more bread ──────
  Scenario(
    scenarioId: "ES_M05_S06",
    missionId: 5,
    environmentContext:
        "Lunch. A set-menu restaurant. The bread basket "
        "is empty and the soup is still coming. "
        "You need more.",
    introFlag: true,
    environmentalTextPrompt: "🍞 UN POCO MÁS DE PAN",
    sophieClueEnglishIntent: "Ask for a little more bread",
    sophiePhoneticHint: "pwe-de trer un po-ko mas de pan",
    targetLanguageAnchor: "¿Puede traer un poco más de pan?",
    slotOptions: ["pan", "agua", "aceite", "servilletas"],
    npcAudioResponseTranscript:
        "¡Claro que sí! Enseguida.",
    graffetiStyleTag: "Wheat 'PAN +1' request tag — restaurant linen",
    npcName: "Camarera",
    npcAvatarEmoji: "👩‍🍳",
  ),

  // ── S7: PAT_11 Rep 2 — Allergy: no meat ─────────────────
  Scenario(
    scenarioId: "ES_M05_S07",
    missionId: 5,
    environmentContext:
        "The menu del día. Three courses for twelve euros. "
        "But the second course is all meat. "
        "You need an alternative.",
    introFlag: true,
    environmentalTextPrompt: "🥗 SOY VEGETARIANO/A",
    sophieClueEnglishIntent: "Say you are vegetarian",
    sophiePhoneticHint: "soy be-xe-ta-rya-no/a",
    targetLanguageAnchor: "Soy vegetariano/a",
    slotOptions: ["vegetariano/a", "vegano/a", "alérgico/a a la carne"],
    npcAudioResponseTranscript:
        "Sin problema — le hago una tortilla de patatas. ¿Bien?",
    graffitiStyleTag: "Green 'VEGETARIANO ✓' diet tag — restaurant style",
    npcName: "Camarera",
    npcAvatarEmoji: "👩‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Order for takeaway ───────────────
  Scenario(
    scenarioId: "ES_M05_S08",
    missionId: 5,
    environmentContext:
        "A bakery near the Picasso Museum. "
        "A queue of locals. You want something to eat "
        "walking around — for takeaway.",
    introFlag: true,
    environmentalTextPrompt: "🥖 PANADERÍA — PARA LLEVAR",
    sophieClueEnglishIntent: "Say you'd like [X] to take away",
    sophiePhoneticHint: "un [X] pa-ra lle-var por fa-vor",
    targetLanguageAnchor: "Un [X] para llevar, por favor",
    slotOptions: ["bocadillo de queso", "croissant de chocolate", "ensaimada", "napolitana"],
    npcAudioResponseTranscript:
        "Claro. ¿Lo envuelvo?",
    graffitiStyleTag: "Pink 'PARA LLEVAR' takeaway tag — paper bag style",
    npcName: "Panadera",
    npcAvatarEmoji: "🧁",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: ask where they're from ────
  Scenario(
    scenarioId: "ES_M05_S09",
    missionId: 5,
    environmentContext:
        "The bakery owner has started talking to you. "
        "She's not from Barcelona — there's an accent "
        "you can't place. You're curious.",
    introFlag: false,
    environmentalTextPrompt: "🌍 ¿DE DÓNDE ES USTED?",
    sophieClueEnglishIntent: "Ask where she is from",
    sophiePhoneticHint: "de don-de es us-ted",
    targetLanguageAnchor: "¿De dónde es usted?",
    slotOptions: ["¿De dónde es?", "¿Es de aquí?", "¿Es catalana?"],
    npcAudioResponseTranscript:
        "De Sevilla, pero llevo veinte años en Barcelona. ¡Me quedé!",
    graffitiStyleTag: "Orange 'DE SEVILLA' origin tag — travel sticker style",
    npcName: "Panadera",
    npcAvatarEmoji: "🧁",
  ),

  // ── S10: PAT_16 Rep 5 — Warm social farewell ────────────
  Scenario(
    scenarioId: "ES_M05_S10",
    missionId: 5,
    environmentContext:
        "You've been chatting for five minutes. "
        "There's a queue forming. Time to go. "
        "A proper, warm Spanish goodbye.",
    introFlag: false,
    environmentalTextPrompt: "👋 DESPEDIRSE — ¡HASTA LUEGO!",
    sophieClueEnglishIntent: "Say it was nice talking and goodbye",
    sophiePhoneticHint: "mu-cho gus-to, as-ta lwe-go",
    targetLanguageAnchor: "Mucho gusto, ¡hasta luego!",
    slotOptions: ["Hasta luego", "Hasta pronto", "¡Que le vaya bien!"],
    npcAudioResponseTranscript:
        "¡A usted! ¡Vuelva cuando quiera!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Barcelona café stamp",
    npcName: "Panadera",
    npcAvatarEmoji: "🧁",
  ),
];
