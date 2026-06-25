// lib/data/scenarios/spanish/spanish_m06_scenarios.dart
//
// MISSION 6: STREET MARKET — 10 SCENARIOS
// ==========================================
// Location: Mercat de la Boqueria / Encants Vells, Barcelona
// Type: COMMERCE + NEGOTIATION PRESSURE
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Primary words: cuánto, quisiera, puede darme, muy caro, por aquí,
//   aquí tiene, oiga, para, hay, deme

import '../../../models/models.dart';

const List<Scenario> spanishM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question: how much is [X] ──
  Scenario(
    scenarioId: "ES_M06_S01",
    missionId: 6,
    environmentContext:
        "La Boqueria. Sensory overload. Colour, noise, "
        "the smell of blood orange and fresh fish. "
        "You're at a fruit stall. A pyramid of peaches. "
        "Perfect. How much?",
    introFlag: true,
    environmentalTextPrompt: "🍑 MERCADO — ¿CUÁNTO VALEN LOS [X]?",
    sophieClueEnglishIntent: "Ask how much the [X] cost",
    sophiePhoneticHint: "kwan-to ba-len los [X]",
    targetLanguageAnchor: "¿Cuánto valen los [X]?",
    slotOptions: ["melocotones", "tomates", "fresas", "higos"],
    npcAudioResponseTranscript:
        "Dos con cincuenta el kilo. Son de Lleida.",
    graffitiStyleTag: "Orange 'MELOCOTÓN €2.50' market price tag",
    npcName: "Frutero",
    npcAvatarEmoji: "🍊",
  ),

  // ── S2: PAT_02 Rep 4 — Order: half kilo of [X] ──────────
  Scenario(
    scenarioId: "ES_M06_S02",
    missionId: 6,
    environmentContext:
        "Good price. You want some but not a full kilo. "
        "The frutero is already reaching for a bag.",
    introFlag: false,
    environmentalTextPrompt: "⚖️ MEDIO KILO DE [X]",
    sophieClueEnglishIntent: "Ask for half a kilo of [X]",
    sophiePhoneticHint: "me-dio ki-lo de [X] por fa-vor",
    targetLanguageAnchor: "Medio kilo de [X], por favor",
    slotOptions: ["melocotones", "tomates cherry", "fresas", "uvas"],
    npcAudioResponseTranscript:
        "¿Así están bien, o los quiere más maduros?",
    graffitiStyleTag: "Green 'MEDIO KILO' weight tag — market scale style",
    npcName: "Frutero",
    npcAvatarEmoji: "🍊",
  ),

  // ── S3: PAT_13 Rep 3 — Request: can you wrap it ─────────
  Scenario(
    scenarioId: "ES_M06_S03",
    missionId: 6,
    environmentContext:
        "Encants Vells. The famous flea market under its "
        "mirrored canopy. You've found a ceramic bowl — "
        "handmade, perfect. You're worried about it breaking "
        "in your bag.",
    introFlag: true,
    environmentalTextPrompt: "🏺 ENCANTS — ¿PUEDE ENVOLVERLO?",
    sophieClueEnglishIntent: "Ask if they can wrap it for you",
    sophiePhoneticHint: "pwe-de en-bol-ver-lo por fa-vor",
    targetLanguageAnchor: "¿Puede envolverlo, por favor?",
    slotOptions: ["envolverlo", "ponerlo en una caja", "protegerlo"],
    npcAudioResponseTranscript:
        "Sí, claro — con papel de burbuja. Es delicado.",
    graffitiStyleTag: "Teal 'FRÁGIL ⚠' wrap request tag — packaging style",
    npcName: "Vendedora",
    npcAvatarEmoji: "🏺",
  ),

  // ── S4: PAT_11 Rep 3 — Negotiation: it's too expensive ──
  Scenario(
    scenarioId: "ES_M06_S04",
    missionId: 6,
    environmentContext:
        "The bowl is forty euros. Beautiful, yes. "
        "But forty euros. You've seen similar in "
        "other stalls. Time to negotiate.",
    introFlag: false,
    environmentalTextPrompt: "💸 CUARENTA EUROS — NEGOCIAR",
    sophieClueEnglishIntent: "Say it's too expensive and ask for a discount",
    sophiePhoneticHint: "es muy ka-ro ¿pwe-de ha-ser un des-kwen-to",
    targetLanguageAnchor: "Es muy caro, ¿puede hacer un descuento?",
    slotOptions: ["un descuento", "algo menos", "un precio mejor"],
    npcAudioResponseTranscript:
        "Mmm... para usted, treinta y cinco. Última oferta.",
    graffitiStyleTag: "Red 'DESCUENTO' negotiation tag — market splatter style",
    npcName: "Vendedora",
    npcAvatarEmoji: "🏺",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: direct to another stall ───
  Scenario(
    scenarioId: "ES_M06_S05",
    missionId: 6,
    environmentContext:
        "You couldn't agree on a price. You walked away. "
        "Now you're lost in the market's labyrinthine alleys. "
        "An elderly vendor sees you looking confused.",
    introFlag: true,
    environmentalTextPrompt: "🧭 PERDIDO EN EL MERCADO",
    sophieClueEnglishIntent: "Ask if the exit is this way",
    sophiePhoneticHint: "la sa-lee-da es por a-kee",
    targetLanguageAnchor: "¿La salida es por aquí?",
    slotOptions: ["por aquí", "por allá", "recto", "a la derecha"],
    npcAudioResponseTranscript:
        "No no, por allá — pase entre los puestos de ropa.",
    graffitiStyleTag: "White '→ SALIDA' direction tag — market alley",
    npcName: "Vendedor Mayor",
    npcAvatarEmoji: "👴",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: handover cash ─────────────
  Scenario(
    scenarioId: "ES_M06_S06",
    missionId: 6,
    environmentContext:
        "Back at the ceramic stall. You decided thirty-five "
        "is fair. You've got the money ready. "
        "You hand it over.",
    introFlag: false,
    environmentalTextPrompt: "💶 PAGAR EN EFECTIVO",
    sophieClueEnglishIntent: "Say here is the money",
    sophiePhoneticHint: "a-kee tye-ne el di-ne-ro",
    targetLanguageAnchor: "Aquí tiene el dinero",
    slotOptions: ["el dinero", "el efectivo", "treinta y cinco euros"],
    npcAudioResponseTranscript:
        "Perfecto. Le doy el cambio — dos euros.",
    graffitiStyleTag: "Gold 'PAGADO ✓' cash payment stamp",
    npcName: "Vendedora",
    npcAvatarEmoji: "🏺",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: didn't understand price ──
  Scenario(
    scenarioId: "ES_M06_S07",
    missionId: 6,
    environmentContext:
        "A spice stall. The vendor muttered the price "
        "quickly while weighing. You heard a number "
        "but you're not sure if it was seven or seventeen.",
    introFlag: true,
    environmentalTextPrompt: "🌶️ ¿CUÁNTO HA DICHO?",
    sophieClueEnglishIntent: "Say you didn't hear and ask them to repeat",
    sophiePhoneticHint: "per-do-ne ¿kwan-to a di-cho",
    targetLanguageAnchor: "Perdone, ¿cuánto ha dicho?",
    slotOptions: ["¿cuánto ha dicho?", "no he oído bien", "¿puede repetirlo?"],
    npcAudioResponseTranscript:
        "Siete euros. Siete. Con siete.",
    graffitiStyleTag: "White '¿CUÁNTO?' repeat request bubble",
    npcName: "Especiero",
    npcAvatarEmoji: "🌶️",
  ),

  // ── S8: PAT_09 Rep 3 — Ask for something for a gift ─────
  Scenario(
    scenarioId: "ES_M06_S08",
    missionId: 6,
    environmentContext:
        "You want to bring something back from Barcelona "
        "for a friend. Not a fridge magnet. "
        "Something real. You ask the market vendor.",
    introFlag: true,
    environmentalTextPrompt: "🎁 BUSCO ALGO PARA REGALAR",
    sophieClueEnglishIntent: "Say you're looking for something for a gift",
    sophiePhoneticHint: "bus-ko al-go pa-ra re-ga-lar",
    targetLanguageAnchor: "Busco algo para regalar",
    slotOptions: ["para regalar", "de recuerdo", "típico de aquí"],
    npcAudioResponseTranscript:
        "¿Para hombre o mujer? ¿Cuánto quiere gastar?",
    graffitiStyleTag: "Pink 'REGALO 🎁' gift tag — market ribbon style",
    npcName: "Vendedora",
    npcAvatarEmoji: "🏺",
  ),

  // ── S9: PAT_06 Rep 5 — Ask if they have smaller size ────
  Scenario(
    scenarioId: "ES_M06_S09",
    missionId: 6,
    environmentContext:
        "A leather goods stall. A wallet — exactly right. "
        "But only one left, and it's a large size. "
        "Maybe they have a smaller one in the back.",
    introFlag: false,
    environmentalTextPrompt: "👛 ¿HAY UNO MÁS PEQUEÑO?",
    sophieClueEnglishIntent: "Ask if they have a smaller one",
    sophiePhoneticHint: "ay al-gu-no mas pe-ke-nyo",
    targetLanguageAnchor: "¿Hay alguno más pequeño?",
    slotOptions: ["más pequeño", "en otro color", "de otro modelo"],
    npcAudioResponseTranscript:
        "Espere — creo que sí tengo uno en la trastienda.",
    graffitiStyleTag: "Brown 'CUERO' leather goods tag — artisan market",
    npcName: "Artesano",
    npcAvatarEmoji: "🧵",
  ),

  // ── S10: PAT_01 Rep 6 — DRILL: ask for a bag ────────────
  Scenario(
    scenarioId: "ES_M06_S10",
    missionId: 6,
    environmentContext:
        "Arms full of purchases. Fruit, spices, a ceramic bowl "
        "carefully wrapped. You need a bag — or two.",
    introFlag: false,
    environmentalTextPrompt: "🛍️ ¿PUEDE DARME UNA BOLSA?",
    sophieClueEnglishIntent: "Ask for a bag please",
    sophiePhoneticHint: "pwe-de dar-me u-na bol-sa por fa-vor",
    targetLanguageAnchor: "¿Puede darme una bolsa, por favor?",
    slotOptions: ["una bolsa", "dos bolsas", "una bolsa grande"],
    npcAudioResponseTranscript:
        "Aquí tiene dos. ¡Que aproveche la visita!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Mercado de Barcelona stamp",
    npcName: "Frutero",
    npcAvatarEmoji: "🍊",
  ),
];
