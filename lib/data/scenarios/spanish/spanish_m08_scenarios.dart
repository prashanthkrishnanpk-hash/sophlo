// lib/data/scenarios/spanish/spanish_m08_scenarios.dart
//
// MISSION 8: THE RESTAURANT — 10 SCENARIOS
// ===========================================
// Location: Restaurant Can Culleretes / Eixample dinner spot, Barcelona
// Type: FULL MEAL + SOCIAL FLUENCY
// Pattern coverage:
//   PAT_02(R6), PAT_01(R7), PAT_06(R7), PAT_04(R5), PAT_11(R5),
//   PAT_13(R4), PAT_12(R7), PAT_15(R6), PAT_16(R6), PAT_08(R5-DRILL)
// Primary words: una mesa para, quisiera, hay, cuánto, sin, traer,
//   la cuenta, perdone, muy rico, aquí tiene

import '../../../models/models.dart';

const List<Scenario> spanishM08Scenarios = [

  // ── S1: PAT_02 Rep 6 — Request: table for two ───────────
  Scenario(
    scenarioId: "ES_M08_S01",
    missionId: 8,
    environmentContext:
        "Can Culleretes. The oldest restaurant in Barcelona. "
        "Photos of Miró and Dalí on the walls. "
        "The maître d' blocks the entrance with a smile.",
    introFlag: true,
    environmentalTextPrompt: "🍽️ CAN CULLERETES — RESERVAR MESA",
    sophieClueEnglishIntent: "Ask for a table for two",
    sophiePhoneticHint: "u-na me-sa pa-ra dos por fa-vor",
    targetLanguageAnchor: "Una mesa para dos, por favor",
    slotOptions: ["para dos", "para tres", "para cuatro", "para uno"],
    npcAudioResponseTranscript:
        "¿Tienen reserva, o vienen sin reserva?",
    graffitiStyleTag: "Red 'MESA PARA 2' restaurant tag — vintage Barcelona style",
    npcName: "Maître",
    npcAvatarEmoji: "🤵",
  ),

  // ── S2: PAT_01 Rep 7 — DRILL: order from the menu ───────
  Scenario(
    scenarioId: "ES_M08_S02",
    missionId: 8,
    environmentContext:
        "Seated. The waiter arrives with the menú del día. "
        "Nine euros fifty. Three courses. "
        "You know what you want.",
    introFlag: true,
    environmentalTextPrompt: "📋 MENÚ DEL DÍA — PEDIR PRIMER PLATO",
    sophieClueEnglishIntent: "Order [X] as a starter",
    sophiePhoneticHint: "de pri-mer pla-to ki-sye-ra [X]",
    targetLanguageAnchor: "De primer plato quisiera [X]",
    slotOptions: ["la sopa de fideos", "la ensalada mixta", "el gazpacho", "los croquetas"],
    npcAudioResponseTranscript:
        "Muy bien. ¿Y de segundo?",
    graffitiStyleTag: "White 'PRIMER PLATO' menu tag — handwritten",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_06 Rep 7 — Ask if dish has [allergen] ───────
  Scenario(
    scenarioId: "ES_M08_S03",
    missionId: 8,
    environmentContext:
        "The second course — something with cassola. "
        "You can't identify all the ingredients. "
        "You're lactose intolerant. You need to check.",
    introFlag: false,
    environmentalTextPrompt: "🥛 ¿LLEVA LÁCTEOS?",
    sophieClueEnglishIntent: "Ask if it contains dairy",
    sophiePhoneticHint: "llye-va lak-te-os",
    targetLanguageAnchor: "¿Lleva lácteos?",
    slotOptions: ["lácteos", "gluten", "frutos secos", "mariscos"],
    npcAudioResponseTranscript:
        "Lleva nata en la salsa — pero puedo pedirlo sin. ¿Lo quiere así?",
    graffitiStyleTag: "Blue '¿ALÉRGENOS?' allergy check tag — restaurant card",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_04 Rep 5 — Ask price of house wine ──────────
  Scenario(
    scenarioId: "ES_M08_S04",
    missionId: 8,
    environmentContext:
        "The wine list is a leather-bound book. "
        "But there's a chalkboard with vino de la casa. "
        "Always ask the price of the house wine first.",
    introFlag: false,
    environmentalTextPrompt: "🍷 ¿CUÁNTO CUESTA EL VINO DE LA CASA?",
    sophieClueEnglishIntent: "Ask how much the house wine costs",
    sophiePhoneticHint: "kwan-to kues-ta el bi-no de la ka-sa",
    targetLanguageAnchor: "¿Cuánto cuesta el vino de la casa?",
    slotOptions: ["el vino de la casa", "la jarra de vino", "la botella", "la media botella"],
    npcAudioResponseTranscript:
        "La jarra, cuatro cincuenta. La botella, ocho.",
    graffitiStyleTag: "Wine-red 'VINO DE LA CASA' tag — chalk board style",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_11 Rep 5 — Complaint: dish is wrong ─────────
  Scenario(
    scenarioId: "ES_M08_S05",
    missionId: 8,
    environmentContext:
        "The second course arrives. It has cream in it. "
        "You specifically asked for it without. "
        "The waiter sets it down and turns to leave.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ LO PEDÍ SIN NATA",
    sophieClueEnglishIntent: "Say you ordered it without cream",
    sophiePhoneticHint: "lo pe-dee sin na-ta",
    targetLanguageAnchor: "Lo pedí sin nata",
    slotOptions: ["sin nata", "sin lácteos", "diferente a lo que pedí"],
    npcAudioResponseTranscript:
        "Mil perdones — ahora mismo lo cambio. Un momento.",
    graffitiStyleTag: "Orange '¡SIN NATA!' complaint tag — kitchen note style",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_13 Rep 4 — Request: more water for the table
  Scenario(
    scenarioId: "ES_M08_S06",
    missionId: 8,
    environmentContext:
        "The replacement dish is excellent. "
        "The water jug is empty. You catch the waiter's eye.",
    introFlag: false,
    environmentalTextPrompt: "💧 MÁS AGUA POR FAVOR",
    sophieClueEnglishIntent: "Ask for more water please",
    sophiePhoneticHint: "pwe-de trer mas a-gua por fa-vor",
    targetLanguageAnchor: "¿Puede traer más agua, por favor?",
    slotOptions: ["más agua", "otra jarra", "agua con gas", "agua sin gas"],
    npcAudioResponseTranscript:
        "Por supuesto. ¿Con gas o sin gas?",
    graffitiStyleTag: "Blue '💧 MÁS AGUA' table request tag",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S7: PAT_12 Rep 7 — Compliment: it's delicious ───────
  Scenario(
    scenarioId: "ES_M08_S07",
    missionId: 8,
    environmentContext:
        "The dessert. Crema catalana. The waiter passes "
        "and raises an eyebrow. You're scraping the bowl. "
        "The answer is obvious.",
    introFlag: false,
    environmentalTextPrompt: "😍 CREMA CATALANA — ¡ESTÁ BUENÍSIMA!",
    sophieClueEnglishIntent: "Say it's delicious",
    sophiePhoneticHint: "es-ta bwe-nee-si-ma",
    targetLanguageAnchor: "¡Está buenísima!",
    slotOptions: ["¡Buenísima!", "¡Está muy rica!", "¡Qué rico está!", "¡Riquísima!"],
    npcAudioResponseTranscript:
        "¡Me alegra! La hacemos desde 1786. Receta de la abuela.",
    graffitiStyleTag: "Gold '¡BUENÍSIMA! ⭐' compliment tag — restaurant pride",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_15 Rep 6 — Repair: wrong bill given ─────────
  Scenario(
    scenarioId: "ES_M08_S08",
    missionId: 8,
    environmentContext:
        "The bill arrives. Something's off — the total "
        "seems too high for two menús del día. "
        "You scan the items.",
    introFlag: false,
    environmentalTextPrompt: "🧾 CREO QUE HAY UN ERROR EN LA CUENTA",
    sophieClueEnglishIntent: "Say you think there is a mistake in the bill",
    sophiePhoneticHint: "kre-o ke ay un e-ror en la kwen-ta",
    targetLanguageAnchor: "Creo que hay un error en la cuenta",
    slotOptions: ["un error", "un cobro de más", "algo incorrecto"],
    npcAudioResponseTranscript:
        "A ver... sí, tiene razón — le hemos cobrado un postre de más. Disculpe.",
    graffitiStyleTag: "Red '¡ERROR! ✗' bill correction tag — receipt style",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_16 Rep 6 — Warm compliment to the chef ──────
  Scenario(
    scenarioId: "ES_M08_S09",
    missionId: 8,
    environmentContext:
        "The owner comes out to check tables. "
        "Old, proud, spotless white apron. "
        "Can Culleretes has been in the family since 1786. "
        "You want him to know.",
    introFlag: false,
    environmentalTextPrompt: "👨‍🍳 FELICITAR AL COCINERO",
    sophieClueEnglishIntent: "Say the meal was excellent and congratulate them",
    sophiePhoneticHint: "la ko-mi-da es-ta-ba ex-se-len-te en-ho-ra-bwe-na",
    targetLanguageAnchor: "La comida estaba excelente, ¡enhorabuena!",
    slotOptions: ["¡Enhorabuena!", "¡Felicidades!", "¡Es el mejor que he probado!"],
    npcAudioResponseTranscript:
        "Muchas gracias. Es lo que más me alegra escuchar. ¡Vuelvan pronto!",
    graffitiStyleTag: "Gold '¡ENHORABUENA! 👨‍🍳' chef compliment tag",
    npcName: "Propietario",
    npcAvatarEmoji: "👴",
  ),

  // ── S10: PAT_08 Rep 5 — DRILL: hand over payment ────────
  Scenario(
    scenarioId: "ES_M08_S10",
    missionId: 8,
    environmentContext:
        "Corrected bill: nineteen euros. You put a twenty "
        "on the table and slide it across. "
        "One final sentence.",
    introFlag: false,
    environmentalTextPrompt: "💶 PAGAR LA CUENTA — AQUÍ TIENE",
    sophieClueEnglishIntent: "Say here you are and keep the change",
    sophiePhoneticHint: "a-kee tye-ne ke-de-se kon el kam-byo",
    targetLanguageAnchor: "Aquí tiene, quédese con el cambio",
    slotOptions: ["Quédese con el cambio", "No hace falta el cambio", "Es para usted"],
    npcAudioResponseTranscript:
        "Muy amable. ¡Hasta pronto y que disfruten Barcelona!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Can Culleretes 1786 stamp",
    npcName: "Camarero",
    npcAvatarEmoji: "🧑‍🍳",
  ),
];
