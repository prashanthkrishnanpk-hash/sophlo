// lib/data/scenarios/french/french_m03_scenarios.dart
//
// MISSION 3: TAXI — LE TAXI — 10 SCENARIOS
// ===========================================
// Location: Paris taxi — CDG to city centre / Le Marais
// Type: DIRECTION + TRANSACTION — vous-form polite commands
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2), PAT_16(R4)
// Key forms: conduisez-moi à, tout droit, tournez à gauche/droite,
//   acceptez-vous les cartes, combien ça coûte, c'est trop cher,
//   un reçu, avez-vous bien compris, arrêtez-vous ici, merci

import '../../../models/models.dart';

const List<Scenario> frenchM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Direction: tell driver destination
  Scenario(
    scenarioId: "FR_M03_S01",
    missionId: 3,
    environmentContext:
        "A Paris taxi — white, a small tricolore sticker "
        "on the windshield. The driver catches your eye "
        "in the rearview mirror. Où allons-nous ?",
    introFlag: true,
    environmentalTextPrompt: "🚕 TAXI — OÙ ALLONS-NOUS ?",
    sophieClueEnglishIntent: "Tell the driver where you want to go",
    sophiePhoneticHint: "kon-dwee-zay mwa a [X] sil voo play",
    targetLanguageAnchor: "Conduisez-moi à [X], s'il vous plaît",
    slotOptions: ["l'hôtel dans le Marais", "la Tour Eiffel", "Gare du Nord", "Montmartre"],
    npcAudioResponseTranscript: "Très bien. Il y aura peut-être du trafic.",
    graffitiStyleTag: "Yellow 'TAXI' bold Paris cab tag",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S2: PAT_14 Rep 2 — Direction: go straight
  Scenario(
    scenarioId: "FR_M03_S02",
    missionId: 3,
    environmentContext:
        "The driver is about to turn. "
        "Your map shows straight ahead is much faster "
        "and cheaper. You intervene politely.",
    introFlag: true,
    environmentalTextPrompt: "📍 TOUT DROIT, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Tell the driver to go straight",
    sophiePhoneticHint: "too drwa sil voo play",
    targetLanguageAnchor: "Tout droit, s'il vous plaît",
    slotOptions: ["Tout droit", "Continuez tout droit", "Par ici"],
    npcAudioResponseTranscript: "D'accord, comme vous voulez.",
    graffitiStyleTag: "Blue '→ TOUT DROIT' road marking tag",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S3: PAT_14 Rep 3 — Direction: turn left
  Scenario(
    scenarioId: "FR_M03_S03",
    missionId: 3,
    environmentContext:
        "Almost there. Your hotel is "
        "down a narrow street to the left. "
        "Easy to miss in le Marais.",
    introFlag: false,
    environmentalTextPrompt: "↙️ TOURNEZ À GAUCHE",
    sophieClueEnglishIntent: "Tell the driver to turn left",
    sophiePhoneticHint: "toor-nay a gohsh",
    targetLanguageAnchor: "Tournez à gauche, s'il vous plaît",
    slotOptions: ["à gauche", "à droite", "au prochain carrefour"],
    npcAudioResponseTranscript: "Ah oui, par là. On y est presque.",
    graffitiStyleTag: "White '↙ GAUCHE' chalk arrow — pavement",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S4: PAT_06 Rep 2 — Ask if card payment accepted
  Scenario(
    scenarioId: "FR_M03_S04",
    missionId: 3,
    environmentContext:
        "Arrived. The meter reads €42.60 — CDG is far. "
        "You haven't got euros yet — only a card. "
        "Paris taxis legally must accept cards but verify.",
    introFlag: true,
    environmentalTextPrompt: "💳 ACCEPTEZ-VOUS LES CARTES ?",
    sophieClueEnglishIntent: "Ask if they accept card payment",
    sophiePhoneticHint: "ak-sep-tay voo lay kart",
    targetLanguageAnchor: "Acceptez-vous les cartes ?",
    slotOptions: ["les cartes", "la carte bancaire", "Visa", "le paiement sans contact"],
    npcAudioResponseTranscript: "Oui, bien sûr. Glissez votre carte.",
    graffitiStyleTag: "Green 'CARTE ACCEPTÉE ✓' payment tag",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S5: PAT_04 Rep 1 — Price: how much
  Scenario(
    scenarioId: "FR_M03_S05",
    missionId: 3,
    environmentContext:
        "A vélo-taxi near the Louvre. Charming, quirky. "
        "You want a short tour but need the price first.",
    introFlag: true,
    environmentalTextPrompt: "🚲 VÉLO-TAXI — LOUVRE",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "com-bee-en sa koot",
    targetLanguageAnchor: "Combien ça coûte ?",
    slotOptions: ["Combien ça coûte ?", "C'est combien ?", "Quel est le tarif ?"],
    npcAudioResponseTranscript: "20 euros pour un tour de 30 minutes — Louvre, Tuileries, Seine.",
    graffitiStyleTag: "Orange 'TARIF ?' question tag — Parisian",
    npcName: "Conducteur",
    npcAvatarEmoji: "🚴",
  ),

  // ── S6: PAT_11 Rep 1 — Too expensive
  Scenario(
    scenarioId: "FR_M03_S06",
    missionId: 3,
    environmentContext:
        "20 euros for 30 minutes. You're two people. "
        "That's 40 total. Worth a polite French try — "
        "un geste commercial is culturally acceptable.",
    introFlag: false,
    environmentalTextPrompt: "💸 C'EST TROP CHER — UN GESTE ?",
    sophieClueEnglishIntent: "Say it's too expensive and ask for a discount",
    sophiePhoneticHint: "say tro shair, voo poo-vay fair un zhest",
    targetLanguageAnchor: "C'est trop cher. Vous pouvez faire un geste ?",
    slotOptions: ["faire un geste ?", "moins cher ?", "un tarif de groupe ?"],
    npcAudioResponseTranscript: "Bon... pour vous deux, 30 euros. C'est mon dernier mot.",
    graffitiStyleTag: "Red 'TROP CHER !' price splatter tag",
    npcName: "Conducteur",
    npcAvatarEmoji: "🚴",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: ask for receipt
  Scenario(
    scenarioId: "FR_M03_S07",
    missionId: 3,
    environmentContext:
        "Tour done. Notre-Dame scaffolding, "
        "the Seine glinting in the sun. "
        "You need the receipt for expenses.",
    introFlag: false,
    environmentalTextPrompt: "🧾 UN REÇU, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for a receipt please",
    sophiePhoneticHint: "un ruh-soo sil voo play",
    targetLanguageAnchor: "Un reçu, s'il vous plaît",
    slotOptions: ["Un reçu", "Une facture", "Un ticket"],
    npcAudioResponseTranscript: "Bien sûr, voilà. Bonne continuation à Paris !",
    graffitiStyleTag: "Grey 'REÇU' receipt tear-off tag",
    npcName: "Conducteur",
    npcAvatarEmoji: "🚴",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: confirm address
  Scenario(
    scenarioId: "FR_M03_S08",
    missionId: 3,
    environmentContext:
        "Back in a taxi. You gave the hotel address "
        "but the driver repeated it slightly differently. "
        "You need to confirm.",
    introFlag: true,
    environmentalTextPrompt: "😕 VOUS AVEZ BIEN COMPRIS ?",
    sophieClueEnglishIntent: "Ask if they understood you correctly",
    sophiePhoneticHint: "voo za-vay byan kom-pree",
    targetLanguageAnchor: "Vous avez bien compris ?",
    slotOptions: ["Vous avez bien compris ?", "C'est correct ?", "C'est bien ça ?"],
    npcAudioResponseTranscript: "Hôtel du Marais, rue de Bretagne. C'est ça ?",
    graffitiStyleTag: "White 'COMPRIS ?' confirmation bubble",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S9: PAT_12 Rep 2 — Stop here
  Scenario(
    scenarioId: "FR_M03_S09",
    missionId: 3,
    environmentContext:
        "You can see your hotel sign. "
        "The driver is about to overshoot. "
        "Say it now.",
    introFlag: false,
    environmentalTextPrompt: "🛑 ARRÊTEZ-VOUS ICI !",
    sophieClueEnglishIntent: "Tell the driver to stop here",
    sophiePhoneticHint: "a-ray-tay voo ee-see sil voo play",
    targetLanguageAnchor: "Arrêtez-vous ici, s'il vous plaît",
    slotOptions: ["Arrêtez-vous ici", "Ici, c'est parfait", "Stoppez là"],
    npcAudioResponseTranscript: "Ah oui ! Voilà !",
    graffitiStyleTag: "Red 'STOP ✋' road marking tag",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),

  // ── S10: PAT_16 Rep 4 — Farewell: thank the driver
  Scenario(
    scenarioId: "FR_M03_S10",
    missionId: 3,
    environmentContext:
        "Out on the pavement. Paris evening. "
        "Café noise, the smell of crêpes. "
        "The driver gives a brief nod.",
    introFlag: false,
    environmentalTextPrompt: "🌆 PARIS — HÔTEL ATTEINT",
    sophieClueEnglishIntent: "Thank the driver and say good evening",
    sophiePhoneticHint: "mer-see bo-koo bon-swar",
    targetLanguageAnchor: "Merci beaucoup, bonsoir !",
    slotOptions: ["Merci beaucoup", "Bonsoir", "À bientôt"],
    npcAudioResponseTranscript: "Bonsoir ! Profitez bien de Paris !",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Taxi Parisien stamp",
    npcName: "Chauffeur",
    npcAvatarEmoji: "🚖",
  ),
];
