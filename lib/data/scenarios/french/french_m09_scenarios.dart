// lib/data/scenarios/french/french_m09_scenarios.dart
//
// MISSION 9: SE DÉPLACER — GETTING AROUND PARIS — 10 SCENARIOS
// =================================================================
// Location: Paris Métro / Bus / Street navigation
// Type: NAVIGATION + TRANSIT — Paris's dense, historic network
// Pattern coverage:
//   PAT_03(R3,R4), PAT_14(R5,R6), PAT_10(R4), PAT_13(R5),
//   PAT_06(R7), PAT_09(R4), PAT_15(R7), PAT_02(R7), PAT_12(R8), PAT_01(R8)
// Key forms: où est, je voudrais aller à, à quelle heure,
//   pourriez-vous, est-ce qu'il y a, jusqu'à, comment,
//   je voudrais acheter, je suis perdu, un plan s'il vous plaît

import '../../../models/models.dart';

const List<Scenario> frenchM09Scenarios = [

  // ── S1: PAT_03 Rep 3 — Location: where is the metro
  Scenario(
    scenarioId: "FR_M09_S01",
    missionId: 9,
    environmentContext:
        "Out of the hotel. You need Châtelet station. "
        "Paris Métro entrances are often a small, "
        "ornate Art Nouveau sign — elegant but easy to miss.",
    introFlag: true,
    environmentalTextPrompt: "🚇 OÙ EST LE MÉTRO ?",
    sophieClueEnglishIntent: "Ask where the metro station is",
    sophiePhoneticHint: "oo ay luh may-tro",
    targetLanguageAnchor: "Où est le métro ?",
    slotOptions: ["le métro", "la station Châtelet", "l'arrêt de bus", "la station de taxi"],
    npcAudioResponseTranscript: "Juste là, l'entrée verte. Vous la verrez tout de suite.",
    graffitiStyleTag: "Yellow 'MÉTROPOLITAIN' Art Nouveau tag",
    npcName: "Passant",
    npcAvatarEmoji: "🚶",
  ),

  // ── S2: PAT_14 Rep 5 — Direction: I want to go to [X]
  Scenario(
    scenarioId: "FR_M09_S02",
    missionId: 9,
    environmentContext:
        "At the metro information desk. "
        "You want to get to the Louvre. "
        "Which line?",
    introFlag: true,
    environmentalTextPrompt: "🚆 JE VOUDRAIS ALLER AU LOUVRE",
    sophieClueEnglishIntent: "Say you want to go to [X]",
    sophiePhoneticHint: "zhuh voo-dray a-lay a [X]",
    targetLanguageAnchor: "Je voudrais aller à [X]",
    slotOptions: ["au Louvre", "à Montmartre", "au Marais", "à la Tour Eiffel"],
    npcAudioResponseTranscript: "Ligne 1, direction La Défense. Trois arrêts.",
    graffitiStyleTag: "Yellow 'LIGNE 1 → LOUVRE' platform tag",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚇",
  ),

  // ── S3: PAT_10 Rep 4 — Ask time of last metro
  Scenario(
    scenarioId: "FR_M09_S03",
    missionId: 9,
    environmentContext:
        "Midnight in the Latin Quarter. "
        "Paris Métro runs later on weekends "
        "but you need to confirm tonight.",
    introFlag: true,
    environmentalTextPrompt: "🌙 À QUELLE HEURE EST LE DERNIER MÉTRO ?",
    sophieClueEnglishIntent: "Ask what time the last metro is",
    sophiePhoneticHint: "a kel er ay luh dair-nyay may-tro",
    targetLanguageAnchor: "À quelle heure est le dernier métro ?",
    slotOptions: ["le dernier métro", "le prochain métro", "le premier métro"],
    npcAudioResponseTranscript: "Ce soir, le dernier passe à 1h15. C'est vendredi !",
    graffitiStyleTag: "Purple '🌙 DERNIER MÉTRO 01:15' tag",
    npcName: "Passagère",
    npcAvatarEmoji: "🧑‍🦱",
  ),

  // ── S4: PAT_13 Rep 5 — Ask staff to validate ticket
  Scenario(
    scenarioId: "FR_M09_S04",
    missionId: 9,
    environmentContext:
        "You bought a paper ticket but the turnstile "
        "rejected it — maybe damaged. "
        "You find an agent to help.",
    introFlag: true,
    environmentalTextPrompt: "🎫 POURRIEZ-VOUS VALIDER MON BILLET ?",
    sophieClueEnglishIntent: "Ask them to validate your ticket",
    sophiePhoneticHint: "poor-yay voo va-lee-day mon bee-yay",
    targetLanguageAnchor: "Pourriez-vous valider mon billet ?",
    slotOptions: ["valider mon billet", "m'aider avec ce ticket", "vérifier mon billet"],
    npcAudioResponseTranscript: "Il est abîmé. Je vous en donne un nouveau.",
    graffitiStyleTag: "Orange 'BILLET VALIDÉ ✓' ticket stamp tag",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🎫",
  ),

  // ── S5: PAT_03 Rep 4 — Location: where is the bus stop
  Scenario(
    scenarioId: "FR_M09_S05",
    missionId: 9,
    environmentContext:
        "You want bus 69 — the famous route "
        "that passes the Eiffel Tower, the Louvre, "
        "and Père Lachaise. Where's the stop?",
    introFlag: true,
    environmentalTextPrompt: "🚌 OÙ EST L'ARRÊT DE BUS ?",
    sophieClueEnglishIntent: "Ask where the bus stop is",
    sophiePhoneticHint: "oo ay la-ray duh boos",
    targetLanguageAnchor: "Où est l'arrêt de bus ?",
    slotOptions: ["l'arrêt de bus", "l'arrêt du 69", "la station de taxi"],
    npcAudioResponseTranscript: "Juste au coin, devant la boulangerie.",
    graffitiStyleTag: "Green '🚌 ARRÊT' bus stop tag",
    npcName: "Agent de Sécurité",
    npcAvatarEmoji: "👮",
  ),

  // ── S6: PAT_09 Rep 4 — Ask for return ticket
  Scenario(
    scenarioId: "FR_M09_S06",
    missionId: 9,
    environmentContext:
        "Day trip to Versailles. "
        "At Gare Saint-Lazare, you buy your ticket. "
        "Return, obviously.",
    introFlag: true,
    environmentalTextPrompt: "🎫 UN ALLER-RETOUR POUR VERSAILLES",
    sophieClueEnglishIntent: "Ask for a return ticket to Versailles",
    sophiePhoneticHint: "un a-lay ruh-toor poor vair-sigh sil voo play",
    targetLanguageAnchor: "Un aller-retour pour Versailles, s'il vous plaît",
    slotOptions: ["un aller-retour", "un aller simple", "un pass journée"],
    npcAudioResponseTranscript: "7,10 euros. Voie 12, départ dans dix minutes.",
    graffitiStyleTag: "Burgundy 'ALLER-RETOUR ✓' return ticket tag",
    npcName: "Guichetier",
    npcAvatarEmoji: "🎫",
  ),

  // ── S7: PAT_14 Rep 6 — Lost: emergency direction
  Scenario(
    scenarioId: "FR_M09_S07",
    missionId: 9,
    environmentContext:
        "Versailles gardens. Enormous — 800 hectares. "
        "You've wandered off the main path "
        "and can't find your way back to the entrance.",
    introFlag: true,
    environmentalTextPrompt: "🆘 JE SUIS PERDU(E)",
    sophieClueEnglishIntent: "Say you are lost",
    sophiePhoneticHint: "zhuh swee pair-doo",
    targetLanguageAnchor: "Je suis perdu(e)",
    slotOptions: ["Je suis perdu(e)", "Je ne sais pas où je suis", "Je ne trouve plus mon chemin"],
    npcAudioResponseTranscript: "Pas de souci ! Le château est par là — suivez l'allée centrale.",
    graffitiStyleTag: "Red 'PERDU SOS' emergency tag",
    npcName: "Jardinier",
    npcAvatarEmoji: "🌳",
  ),

  // ── S8: PAT_02 Rep 7 — Buy a day pass
  Scenario(
    scenarioId: "FR_M09_S08",
    missionId: 9,
    environmentContext:
        "Back in Paris. You've been buying single tickets "
        "all day. A Mobilis day pass would have saved money. "
        "You buy one for tomorrow.",
    introFlag: true,
    environmentalTextPrompt: "🎫 JE VOUDRAIS UN PASS JOURNÉE",
    sophieClueEnglishIntent: "Say you want a day pass",
    sophiePhoneticHint: "zhuh voo-dray un pas zhoor-nay",
    targetLanguageAnchor: "Je voudrais un pass journée",
    slotOptions: ["un pass journée", "un pass semaine", "un carnet de tickets"],
    npcAudioResponseTranscript: "Zones 1-2 ? Ça fait 8,45 euros, valable jusqu'à minuit.",
    graffitiStyleTag: "Yellow 'PASS JOURNÉE ✓' day pass tag",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚇",
  ),

  // ── S9: PAT_15 Rep 7 — Repair: wrong platform?
  Scenario(
    scenarioId: "FR_M09_S09",
    missionId: 9,
    environmentContext:
        "Quai 3. You think. But the display shows "
        "Nation, not Châtelet. Either wrong platform "
        "or wrong direction. You ask the person next to you.",
    introFlag: false,
    environmentalTextPrompt: "😕 C'EST LE BON QUAI ?",
    sophieClueEnglishIntent: "Ask if this is the right platform",
    sophiePhoneticHint: "say luh bon kay",
    targetLanguageAnchor: "C'est le bon quai ?",
    slotOptions: ["le bon quai ?", "la bonne direction ?", "pour Châtelet ?"],
    npcAudioResponseTranscript: "Non, Châtelet c'est l'autre côté. Vite, le métro arrive !",
    graffitiStyleTag: "White 'BON QUAI ?' confirm bubble",
    npcName: "Voyageuse",
    npcAvatarEmoji: "👩",
  ),

  // ── S10: PAT_01 Rep 8 — DRILL: ask for a metro map
  Scenario(
    scenarioId: "FR_M09_S10",
    missionId: 9,
    environmentContext:
        "Back at the station. Phone battery dead. "
        "You want a paper RATP metro map. "
        "The information booth has them.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ UN PLAN DU MÉTRO, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for a metro map please",
    sophiePhoneticHint: "un plan doo may-tro sil voo play",
    targetLanguageAnchor: "Un plan du métro, s'il vous plaît",
    slotOptions: ["un plan du métro", "un plan de Paris", "un plan des bus"],
    npcAudioResponseTranscript: "Voilà ! Au dos, vous avez aussi les bus de nuit.",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Transports Parisiens stamp",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚇",
  ),
];
