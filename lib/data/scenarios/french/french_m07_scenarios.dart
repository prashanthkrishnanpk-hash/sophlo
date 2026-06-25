// lib/data/scenarios/french/french_m07_scenarios.dart
//
// MISSION 7: PHARMACIE — PHARMACY — 10 SCENARIOS
// =================================================
// Location: Pharmacie de garde, Paris Le Marais (open late)
// Type: HEALTH + URGENCY — survival-critical vocabulary
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Key forms: j'ai mal à la tête, j'ai de la fièvre,
//   je suis allergique à, est-ce qu'il y a, combien coûte,
//   combien de fois, je voudrais, voici, avant ou après les repas

import '../../../models/models.dart';

const List<Scenario> frenchM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Symptom: headache
  Scenario(
    scenarioId: "FR_M07_S01",
    missionId: 7,
    environmentContext:
        "A Pharmacie — the green cross blinking. "
        "The pharmacist in a white coat looks up. "
        "French pharmacists are highly trained — "
        "almost like a first line of medical care.",
    introFlag: true,
    environmentalTextPrompt: "💊 PHARMACIE DE GARDE — LE SOIR",
    sophieClueEnglishIntent: "Say you have a headache",
    sophiePhoneticHint: "zhay mal a la tet",
    targetLanguageAnchor: "J'ai mal à la tête",
    slotOptions: ["à la tête", "au ventre", "à la gorge", "au dos"],
    npcAudioResponseTranscript: "Depuis quand ? Vous avez de la fièvre aussi ?",
    graffitiStyleTag: "Green 'PHARMACIE' cross tag",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Symptom: fever
  Scenario(
    scenarioId: "FR_M07_S02",
    missionId: 7,
    environmentContext:
        "She asked about fever. Yes — 38.4°. "
        "Hot and cold since this afternoon.",
    introFlag: false,
    environmentalTextPrompt: "🌡️ J'AI DE LA FIÈVRE",
    sophieClueEnglishIntent: "Say you have a fever",
    sophiePhoneticHint: "zhay duh la fee-evr",
    targetLanguageAnchor: "J'ai de la fièvre",
    slotOptions: ["de la fièvre", "des frissons", "des nausées", "des vertiges"],
    npcAudioResponseTranscript: "38,4 — ce n'est pas grave. Je vous donne un antipyrétique.",
    graffitiStyleTag: "Red '38.4°C' thermometer tag — clinical",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_02 Rep 5 — Request specific medicine
  Scenario(
    scenarioId: "FR_M07_S03",
    missionId: 7,
    environmentContext:
        "You know what you usually take at home. "
        "You ask for the French equivalent by name.",
    introFlag: false,
    environmentalTextPrompt: "💊 JE VOUDRAIS [X]",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "zhuh voo-dray [X]",
    targetLanguageAnchor: "Je voudrais [X]",
    slotOptions: ["de l'ibuprofène", "du paracétamol", "un antihistaminique", "du sirop pour la toux"],
    npcAudioResponseTranscript: "Bien sûr. Vous préférez en comprimés ou en sachets ?",
    graffitiStyleTag: "Blue 'IBUPROFÈNE' pill tag — blister pack",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_04 Rep 4 — Ask how much it costs
  Scenario(
    scenarioId: "FR_M07_S04",
    missionId: 7,
    environmentContext:
        "She places two boxes on the counter. "
        "No reimbursement for tourists without French "
        "social security. You need the cost.",
    introFlag: false,
    environmentalTextPrompt: "💶 COMBIEN ÇA COÛTE ?",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "com-byan sa koot",
    targetLanguageAnchor: "Combien ça coûte ?",
    slotOptions: ["Combien ça coûte ?", "Ça fait combien en tout ?", "Vous avez moins cher ?"],
    npcAudioResponseTranscript: "L'ibuprofène fait 3,90, le sirop 5,60 euros.",
    graffitiStyleTag: "Orange 'PRIX' cost tag — pharmacy receipt",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_10 Rep 3 — Ask how often to take it
  Scenario(
    scenarioId: "FR_M07_S05",
    missionId: 7,
    environmentContext:
        "She's putting it in a paper bag. "
        "You need the dosage before she closes it.",
    introFlag: false,
    environmentalTextPrompt: "🕐 COMBIEN DE FOIS PAR JOUR ?",
    sophieClueEnglishIntent: "Ask how many times a day to take it",
    sophiePhoneticHint: "com-byan duh fwa par zhoor",
    targetLanguageAnchor: "Combien de fois par jour ?",
    slotOptions: ["Combien de fois ?", "Toutes les combien d'heures ?", "Combien de comprimés ?"],
    npcAudioResponseTranscript: "Trois fois par jour, maximum. Toujours après les repas.",
    graffitiStyleTag: "Purple '3x/JOUR' dosage tag — prescription",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_11 Rep 4 — Allergy declaration
  Scenario(
    scenarioId: "FR_M07_S06",
    missionId: 7,
    environmentContext:
        "She mentioned aspirin. "
        "You're allergic. Flag it now.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ JE SUIS ALLERGIQUE À L'ASPIRINE",
    sophieClueEnglishIntent: "Say you are allergic to aspirin",
    sophiePhoneticHint: "zhuh swee a-lair-zheek a las-pee-reen",
    targetLanguageAnchor: "Je suis allergique à l'aspirine",
    slotOptions: ["à l'aspirine", "à la pénicilline", "aux anti-inflammatoires", "au lactose"],
    npcAudioResponseTranscript: "Bien noté. Ce médicament n'en contient pas.",
    graffitiStyleTag: "Red '⚠ ALLERGIQUE' warning tag",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_06 Rep 6 — Ask if they have sunscreen
  Scenario(
    scenarioId: "FR_M07_S07",
    missionId: 7,
    environmentContext:
        "While here — French pharmacy skincare "
        "is legendary. The Paris sun caught "
        "you off guard at the Tuileries yesterday.",
    introFlag: true,
    environmentalTextPrompt: "☀️ EST-CE QU'IL Y A DE LA CRÈME SOLAIRE ?",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "es-ku ee-lee-a duh la krem so-lair",
    targetLanguageAnchor: "Est-ce qu'il y a de la crème solaire ?",
    slotOptions: ["de la crème solaire", "un indice 50", "de l'après-soleil"],
    npcAudioResponseTranscript: "Oui, ici. La Roche-Posay SPF 50 est très demandée.",
    graffitiStyleTag: "Yellow 'SPF 50 ☀' sun protection tag",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_08 Rep 4 — DRILL: hand over prescription
  Scenario(
    scenarioId: "FR_M07_S08",
    missionId: 7,
    environmentContext:
        "A different visit. Your doctor emailed "
        "a prescription before you left. "
        "You show it at the counter.",
    introFlag: true,
    environmentalTextPrompt: "📋 VOICI MON ORDONNANCE",
    sophieClueEnglishIntent: "Hand over your prescription",
    sophiePhoneticHint: "vwa-see mon or-do-nons",
    targetLanguageAnchor: "Voici mon ordonnance",
    slotOptions: ["mon ordonnance", "la prescription de mon médecin", "voilà le document"],
    npcAudioResponseTranscript: "Merci. Je vérifie ça, un instant.",
    graffitiStyleTag: "Green 'ORDONNANCE ✓' medical stamp",
    npcName: "Pharmacien",
    npcAvatarEmoji: "👨‍⚕️",
  ),

  // ── S9: PAT_15 Rep 5 — Repair: before or after meals?
  Scenario(
    scenarioId: "FR_M07_S09",
    missionId: 7,
    environmentContext:
        "She said something about repas quickly. "
        "Before or after meals? You need to be certain.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ AVANT OU APRÈS LES REPAS ?",
    sophieClueEnglishIntent: "Ask if it's before or after meals",
    sophiePhoneticHint: "a-von oo a-pray lay ruh-pa",
    targetLanguageAnchor: "Avant ou après les repas ?",
    slotOptions: ["Avant les repas ?", "Après les repas ?", "Pendant le repas ?"],
    npcAudioResponseTranscript: "Après les repas — pour ne pas irriter l'estomac.",
    graffitiStyleTag: "White 'AVANT/APRÈS ?' clarification bubble",
    npcName: "Pharmacienne",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_12 Rep 6 — Next day: feeling better
  Scenario(
    scenarioId: "FR_M07_S10",
    missionId: 7,
    environmentContext:
        "Next morning. Same pharmacy — a different pharmacist. "
        "He recognises you and asks how you're feeling.",
    introFlag: false,
    environmentalTextPrompt: "😊 JE ME SENS MIEUX",
    sophieClueEnglishIntent: "Say you feel better now thank you",
    sophiePhoneticHint: "zhuh muh son myuh, mair-see",
    targetLanguageAnchor: "Je me sens mieux, merci !",
    slotOptions: ["Je me sens mieux", "Ça va beaucoup mieux", "Je suis en pleine forme"],
    npcAudioResponseTranscript: "Tant mieux ! Profitez bien du reste de votre séjour !",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Pharmacie Parisienne stamp",
    npcName: "Pharmacien",
    npcAvatarEmoji: "👨‍⚕️",
  ),
];
