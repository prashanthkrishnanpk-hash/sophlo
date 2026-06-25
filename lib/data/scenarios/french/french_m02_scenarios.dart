// lib/data/scenarios/french/french_m02_scenarios.dart
//
// MISSION 2: ARRIVÉE — CDG TERMINAL — 10 SCENARIOS
// ===================================================
// Location: Charles de Gaulle Airport — Immigration & Exit
// Type: FIRST REAL PRESSURE — vous-form formal register
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Key forms: Bonjour, je suis ici en touriste, je m'appelle,
//   voici, mon bagage était sur, où est, est-ce qu'il y a,
//   à quelle heure, pouvez-vous répéter, un billet pour

import '../../../models/models.dart';

const List<Scenario> frenchM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Formal greeting: passport control
  Scenario(
    scenarioId: "FR_M02_S01",
    missionId: 2,
    environmentContext:
        "CDG Terminal 2E. Contrôle des passeports. "
        "Long queues, fluorescent lights. "
        "The officer looks up without expression. "
        "In France, a greeting matters — you speak first.",
    introFlag: true,
    environmentalTextPrompt: "🛂 CONTRÔLE DES PASSEPORTS — CDG",
    sophieClueEnglishIntent: "Greet the passport officer politely",
    sophiePhoneticHint: "bon-zhur",
    targetLanguageAnchor: "Bonjour",
    slotOptions: ["Bonjour", "Bonsoir", "Bonjour monsieur"],
    npcAudioResponseTranscript: "Bonjour. Votre passeport, s'il vous plaît.",
    graffitiStyleTag: "Blue 'BONJOUR' Haussmann stencil — formal",
    npcName: "Agent des Frontières",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Purpose: tourism
  Scenario(
    scenarioId: "FR_M02_S02",
    missionId: 2,
    environmentContext:
        "He types. Pauses. Eyes up. "
        "Motif de votre visite? "
        "The classic border question.",
    introFlag: true,
    environmentalTextPrompt: "📋 MOTIF DE VOTRE VISITE ?",
    sophieClueEnglishIntent: "Say you are here as a tourist",
    sophiePhoneticHint: "je swee ee-see on too-reest",
    targetLanguageAnchor: "Je suis ici en touriste",
    slotOptions: ["en touriste", "pour les vacances", "pour visiter"],
    npcAudioResponseTranscript: "Combien de temps restez-vous en France ?",
    graffitiStyleTag: "Blue 'TOURISTE' travel purpose tag",
    npcName: "Agent des Frontières",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity: name declaration
  Scenario(
    scenarioId: "FR_M02_S03",
    missionId: 2,
    environmentContext:
        "She checks the photo against your face. "
        "Types. Looks up. Asks for verbal confirmation.",
    introFlag: false,
    environmentalTextPrompt: "📋 VOTRE NOM, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "zhuh ma-pel [X]",
    targetLanguageAnchor: "Je m'appelle [X]",
    slotOptions: ["Sophie Martin", "Liam Dubois", "Mia Rossi", "Omar Khalid"],
    npcAudioResponseTranscript: "Très bien. Bonne visite en France.",
    graffitiStyleTag: "White 'NOM' document tag — worn ink",
    npcName: "Agent des Frontières",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Handover: passport
  Scenario(
    scenarioId: "FR_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. Another desk. "
        "The officer extends her hand. "
        "You hand over your passport.",
    introFlag: true,
    environmentalTextPrompt: "🪪 CONTRÔLE SECONDAIRE",
    sophieClueEnglishIntent: "Hand over your passport politely",
    sophiePhoneticHint: "vwa-see",
    targetLanguageAnchor: "Voici mon passeport",
    slotOptions: ["Voici mon passeport", "Le voici", "Voilà"],
    npcAudioResponseTranscript: "Merci. Un instant, s'il vous plaît.",
    graffitiStyleTag: "Orange 'PASSEPORT' document stamp",
    npcName: "Agente",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Baggage: missing bag
  Scenario(
    scenarioId: "FR_M02_S05",
    missionId: 2,
    environmentContext:
        "Livraison des bagages. The belt has stopped. "
        "Your bag isn't here. "
        "An Air France ground staff member approaches.",
    introFlag: true,
    environmentalTextPrompt: "🧳 LIVRAISON DES BAGAGES — SAC PERDU",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "mon ba-gazh ay-tay sur le vol [X]",
    targetLanguageAnchor: "Mon bagage était sur le vol [X]",
    slotOptions: ["AF1234", "AF0084", "EY006", "LH2030"],
    npcAudioResponseTranscript: "Je vais vérifier ça. Quel est le numéro de vol ?",
    graffitiStyleTag: "Green 'BAGAGES' belt tag — industrial",
    npcName: "Personnel au Sol",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location: where is the exit
  Scenario(
    scenarioId: "FR_M02_S06",
    missionId: 2,
    environmentContext:
        "Bag retrieved. CDG is labyrinthine — "
        "multiple terminals, satellites, train stations. "
        "You need the exit.",
    introFlag: true,
    environmentalTextPrompt: "🚪 OÙ EST LA SORTIE ?",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "oo ay la sor-tee",
    targetLanguageAnchor: "Où est la sortie ?",
    slotOptions: ["la sortie", "le RER", "les taxis", "les bus"],
    npcAudioResponseTranscript: "Tout droit, puis à gauche — vous verrez les panneaux.",
    graffitiStyleTag: "Cyan '→ SORTIE' neon exit arrow",
    npcName: "Agent d'Accueil",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Availability: is there a RER
  Scenario(
    scenarioId: "FR_M02_S07",
    missionId: 2,
    environmentContext:
        "You've heard about the RER B — "
        "the train to Paris city centre. "
        "You want to confirm it exists here.",
    introFlag: true,
    environmentalTextPrompt: "🚆 EST-CE QU'IL Y A UN RER ?",
    sophieClueEnglishIntent: "Ask if there is a RER train here",
    sophiePhoneticHint: "es-ku ee-lee-a un air-uh-air ee-see",
    targetLanguageAnchor: "Est-ce qu'il y a un RER ici ?",
    slotOptions: ["un RER", "un bus", "un taxi", "un Uber"],
    npcAudioResponseTranscript: "Oui, le RER B est au niveau -1. Direction Paris.",
    graffitiStyleTag: "Yellow 'RER B ✓' transit tag",
    npcName: "Agent d'Information",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S8: PAT_10 Rep 1 — Time: next RER
  Scenario(
    scenarioId: "FR_M02_S08",
    missionId: 2,
    environmentContext:
        "At the RER B platform. Level -1. "
        "You want to know when the next train departs.",
    introFlag: true,
    environmentalTextPrompt: "🚆 À QUELLE HEURE EST LE PROCHAIN RER ?",
    sophieClueEnglishIntent: "Ask what time the next train is",
    sophiePhoneticHint: "a kel er ay luh pro-shain tran",
    targetLanguageAnchor: "À quelle heure est le prochain train ?",
    slotOptions: ["le prochain train", "le dernier train", "le prochain bus"],
    npcAudioResponseTranscript: "Dans quatre minutes, quai B. Direction Paris-Nord.",
    graffitiStyleTag: "Purple 'RER B 🕐' schedule tag",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚆",
  ),

  // ── S9: PAT_15 Rep 1 — Repair: didn't catch platform
  Scenario(
    scenarioId: "FR_M02_S09",
    missionId: 2,
    environmentContext:
        "She said the quai quickly — "
        "quai A or quai B? French transit announcements "
        "are notoriously fast. You need her to repeat.",
    introFlag: false,
    environmentalTextPrompt: "😕 POUVEZ-VOUS RÉPÉTER ?",
    sophieClueEnglishIntent: "Ask her to repeat please",
    sophiePhoneticHint: "poo-vay-voo ray-pay-tay sil voo play",
    targetLanguageAnchor: "Pouvez-vous répéter, s'il vous plaît ?",
    slotOptions: ["Pouvez-vous répéter ?", "Plus lentement", "Je n'ai pas compris"],
    npcAudioResponseTranscript: "Quai B. Q-U-A-I — B, comme Bretagne.",
    graffitiStyleTag: "White 'ENCORE SVP' repeat request bubble",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚆",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: buy ticket to Paris
  Scenario(
    scenarioId: "FR_M02_S10",
    missionId: 2,
    environmentContext:
        "At the ticket window. "
        "Paris-Nord is your stop. "
        "One adult ticket. The agent waits.",
    introFlag: false,
    environmentalTextPrompt: "🎫 UN BILLET POUR [X]",
    sophieClueEnglishIntent: "Ask for one ticket to [X] please",
    sophiePhoneticHint: "un bih-yay poor [X] sil voo play",
    targetLanguageAnchor: "Un billet pour [X], s'il vous plaît",
    slotOptions: ["Paris-Nord", "Châtelet", "Gare du Nord", "Saint-Michel"],
    npcAudioResponseTranscript: "11,80 euros. Merci et bonne journée.",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — CDG Terminal cleared stamp",
    npcName: "Agent RATP",
    npcAvatarEmoji: "🚆",
  ),
];
