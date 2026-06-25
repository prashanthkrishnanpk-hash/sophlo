// lib/data/scenarios/spanish/spanish_m07_scenarios.dart
//
// MISSION 7: THE PHARMACY — 10 SCENARIOS
// =========================================
// Location: Farmacia de Guardia, Barcelona (24-hour)
// Type: HEALTH + URGENCY PRESSURE
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Primary words: me duele, tengo fiebre, soy alérgico, medicamento,
//   cuánto, pastilla, después de comer, no, seguro, perdone

import '../../../models/models.dart';

const List<Scenario> spanishM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Symptom: I have a headache ───────
  Scenario(
    scenarioId: "ES_M07_S01",
    missionId: 7,
    environmentContext:
        "2 AM. The green pharmacy cross pulses in the dark. "
        "You've had a headache since dinner. "
        "The farmacéutica looks up — calm, capable.",
    introFlag: true,
    environmentalTextPrompt: "💊 FARMACIA DE GUARDIA — 2AM",
    sophieClueEnglishIntent: "Say you have a headache",
    sophiePhoneticHint: "me due-le la ka-be-sa",
    targetLanguageAnchor: "Me duele la cabeza",
    slotOptions: ["la cabeza", "el estómago", "la garganta", "la espalda"],
    npcAudioResponseTranscript:
        "¿Desde cuándo? ¿Tiene fiebre también?",
    graffitiStyleTag: "White 'FARMACIA' cross tag — pharmacy green glow",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Symptom: I have a fever ─────────
  Scenario(
    scenarioId: "ES_M07_S02",
    missionId: 7,
    environmentContext:
        "She asked if you have a fever. You do. "
        "You've been feeling hot and cold since the afternoon. "
        "38.5° when you checked an hour ago.",
    introFlag: false,
    environmentalTextPrompt: "🌡️ TENGO FIEBRE",
    sophieClueEnglishIntent: "Say you have a fever",
    sophiePhoneticHint: "ten-go fye-bre",
    targetLanguageAnchor: "Tengo fiebre",
    slotOptions: ["fiebre", "escalofríos", "náuseas", "mareos"],
    npcAudioResponseTranscript:
        "Treinta y ocho y medio — no es grave. Le doy un antitérmico.",
    graffitiStyleTag: "Red 'FIEBRE 38.5°' thermometer tag — clinical style",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_02 Rep 5 — Request specific medicine ────────
  Scenario(
    scenarioId: "ES_M07_S03",
    missionId: 7,
    environmentContext:
        "You have your own preferred brand from home "
        "but you don't know the Spanish equivalent. "
        "You describe what you need.",
    introFlag: false,
    environmentalTextPrompt: "💊 PEDIR MEDICAMENTO",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "ki-sye-ra [X] por fa-vor",
    targetLanguageAnchor: "Quisiera [X], por favor",
    slotOptions: ["ibuprofeno", "paracetamol", "antihistamínico", "jarabe para la tos"],
    npcAudioResponseTranscript:
        "Claro. ¿Cuántos días lleva con los síntomas?",
    graffitiStyleTag: "Blue 'IBUPROFENO' pill tag — blister pack style",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_04 Rep 4 — Ask how much it costs ────────────
  Scenario(
    scenarioId: "ES_M07_S04",
    missionId: 7,
    environmentContext:
        "She puts two boxes on the counter. "
        "You want to know the cost before nodding. "
        "You haven't got European travel insurance sorted.",
    introFlag: false,
    environmentalTextPrompt: "💶 ¿CUÁNTO CUESTA?",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "kwan-to kues-ta",
    targetLanguageAnchor: "¿Cuánto cuesta?",
    slotOptions: ["¿Cuánto cuesta?", "¿Cuánto es en total?", "¿Tiene algo más barato?"],
    npcAudioResponseTranscript:
        "El ibuprofeno tres con noventa. El jarabe, seis diez.",
    graffitiStyleTag: "Orange 'PRECIO' cost tag — pharmacy receipt",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_10 Rep 3 — Ask how often to take it ─────────
  Scenario(
    scenarioId: "ES_M07_S05",
    missionId: 7,
    environmentContext:
        "She's stapling the bag. You need to know "
        "the dosage before she closes it. "
        "How many times a day?",
    introFlag: false,
    environmentalTextPrompt: "🕐 ¿CADA CUÁNTAS HORAS?",
    sophieClueEnglishIntent: "Ask how often to take it",
    sophiePhoneticHint: "ka-da kwan-tas o-ras lo to-mo",
    targetLanguageAnchor: "¿Cada cuántas horas lo tomo?",
    slotOptions: ["¿cada cuántas horas?", "¿cuántas al día?", "¿cuántas pastillas?"],
    npcAudioResponseTranscript:
        "Cada ocho horas. Máximo tres al día. Con comida.",
    graffitiStyleTag: "Purple '⏱ CADA 8H' dosage tag — prescription style",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_11 Rep 4 — Allergy: I'm allergic to [X] ────
  Scenario(
    scenarioId: "ES_M07_S06",
    missionId: 7,
    environmentContext:
        "Wait. She mentioned an ingredient. "
        "You're allergic to aspirin. "
        "You need to flag this before she hands anything over.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ SOY ALÉRGICO/A",
    sophieClueEnglishIntent: "Say you are allergic to [X]",
    sophiePhoneticHint: "soy a-ler-xi-ko a [X]",
    targetLanguageAnchor: "Soy alérgico/a a [X]",
    slotOptions: ["la aspirina", "la penicilina", "los antiinflamatorios", "la codeína"],
    npcAudioResponseTranscript:
        "Perfecto — entonces el ibuprofeno sin problema. La aspirina no le doy.",
    graffitiStyleTag: "Red '⚠ ALÉRGICO' allergy warning tag",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_06 Rep 6 — Ask if they have sunscreen ───────
  Scenario(
    scenarioId: "ES_M07_S07",
    missionId: 7,
    environmentContext:
        "While you're here — the Barcelona sun destroyed you "
        "on the beach yesterday. Shoulders like a lobster. "
        "The pharmacy also sells cosmetics.",
    introFlag: true,
    environmentalTextPrompt: "☀️ ¿TIENE PROTECTOR SOLAR?",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "tye-ne pro-tek-tor so-lar",
    targetLanguageAnchor: "¿Tiene protector solar?",
    slotOptions: ["protector solar", "crema solar", "aftersun", "factor 50"],
    npcAudioResponseTranscript:
        "Sí — aquí, factor 50 y aftersun también.",
    graffitiStyleTag: "Yellow 'FACTOR 50 ☀' sun protection tag",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_08 Rep 4 — DRILL: hand over prescription ────
  Scenario(
    scenarioId: "ES_M07_S08",
    missionId: 7,
    environmentContext:
        "A different visit — you found a prescription "
        "your doctor emailed before you left. "
        "It's on your phone. You show the pharmacist.",
    introFlag: true,
    environmentalTextPrompt: "📋 RECETA MÉDICA — EN EL MÓVIL",
    sophieClueEnglishIntent: "Say here is my prescription",
    sophiePhoneticHint: "a-kee tye-ne mi re-se-ta",
    targetLanguageAnchor: "Aquí tiene mi receta",
    slotOptions: ["mi receta", "la receta de mi médico", "el documento"],
    npcAudioResponseTranscript:
        "Perfecto. Lo busco en el sistema. Un momento.",
    graffitiStyleTag: "Green 'RECETA ✓' medical stamp — prescription style",
    npcName: "Farmacéutico",
    npcAvatarEmoji: "👨‍⚕️",
  ),

  // ── S9: PAT_15 Rep 5 — Repair: didn't catch instructions
  Scenario(
    scenarioId: "ES_M07_S09",
    missionId: 7,
    environmentContext:
        "She gave the full instructions fast. "
        "Something about food — before or after? "
        "You need to clarify before you leave.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ ¿ANTES O DESPUÉS DE COMER?",
    sophieClueEnglishIntent: "Ask if it should be taken before or after eating",
    sophiePhoneticHint: "es an-tes o des-pwes de ko-mer",
    targetLanguageAnchor: "¿Es antes o después de comer?",
    slotOptions: ["¿antes de comer?", "¿después de comer?", "¿con comida?"],
    npcAudioResponseTranscript:
        "Después de comer — siempre. Para no irritar el estómago.",
    graffitiStyleTag: "White '¿ANTES O DESPUÉS?' clarification bubble",
    npcName: "Farmacéutica",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_12 Rep 6 — Final symptom: feeling better ───
  Scenario(
    scenarioId: "ES_M07_S10",
    missionId: 7,
    environmentContext:
        "Next morning. Same pharmacy — different pharmacist. "
        "He asks how you're feeling after last night. "
        "Honestly, better.",
    introFlag: false,
    environmentalTextPrompt: "😊 AL DÍA SIGUIENTE — MEJOR",
    sophieClueEnglishIntent: "Say you feel better now thank you",
    sophiePhoneticHint: "me syen-to me-hor gra-syas",
    targetLanguageAnchor: "Me siento mejor, gracias",
    slotOptions: ["Me siento mejor", "Estoy mejor", "Ya me encuentro bien"],
    npcAudioResponseTranscript:
        "¡Me alegro mucho! ¡Que siga bien y disfrute Barcelona!",
    graffitiStyleTag: "GOLD 'MISIÓN COMPLETA' — Farmacia Barcelona stamp",
    npcName: "Farmacéutico",
    npcAvatarEmoji: "👨‍⚕️",
  ),
];
