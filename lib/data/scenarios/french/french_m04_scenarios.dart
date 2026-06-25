// lib/data/scenarios/french/french_m04_scenarios.dart
//
// MISSION 4: HÔTEL — THE HOTEL — 10 SCENARIOS
// ==============================================
// Location: Boutique hotel, Le Marais, Paris
// Type: ACCOMMODATION + SERVICE — vous-form throughout
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Key forms: j'ai une réservation, je m'appelle, voici,
//   où est, est-ce qu'il y a, à quelle heure, je viens de,
//   pourriez-vous, pouvez-vous répéter, un [NOUN] s'il vous plaît

import '../../../models/models.dart';

const List<Scenario> frenchM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Claim reservation
  Scenario(
    scenarioId: "FR_M04_S01",
    missionId: 4,
    environmentContext:
        "Hôtel du Marais. Black and white marble floor, "
        "a vase of white peonies, the scent of Diptyque. "
        "The receptionist looks up with a measured smile.",
    introFlag: true,
    environmentalTextPrompt: "🏨 RÉCEPTION — ENREGISTREMENT",
    sophieClueEnglishIntent: "Say you have a reservation",
    sophiePhoneticHint: "zhay oon ray-zer-vah-syon",
    targetLanguageAnchor: "J'ai une réservation",
    slotOptions: ["J'ai une réservation", "J'ai réservé une chambre", "J'ai une chambre réservée"],
    npcAudioResponseTranscript: "Bienvenue. C'est à quel nom ?",
    graffitiStyleTag: "Gold 'RÉSERVATION' booking tag — Paris minimal",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S2: PAT_05 Rep 3 — Give name for reservation
  Scenario(
    scenarioId: "FR_M04_S02",
    missionId: 4,
    environmentContext:
        "She's checking her screen, scrolling through bookings. "
        "She needs your name.",
    introFlag: false,
    environmentalTextPrompt: "📋 C'EST À QUEL NOM ?",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "zhuh ma-pel [X]",
    targetLanguageAnchor: "Je m'appelle [X]",
    slotOptions: ["Claire Dupont", "James Walker", "Hana Yamamoto", "Samir Benali"],
    npcAudioResponseTranscript: "Voilà — chambre supérieure, deux nuits. C'est bien ça ?",
    graffitiStyleTag: "White 'NOM' chalk tag — reception desk",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport
  Scenario(
    scenarioId: "FR_M04_S03",
    missionId: 4,
    environmentContext:
        "French hotels require passport for non-EU guests. "
        "She asks. You hand it over.",
    introFlag: false,
    environmentalTextPrompt: "🪪 VOTRE PASSEPORT",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "vwa-see mon pa-spor",
    targetLanguageAnchor: "Voici mon passeport",
    slotOptions: ["Voici mon passeport", "Le voilà", "Voilà"],
    npcAudioResponseTranscript: "Parfait, je fais une copie. Un instant.",
    graffitiStyleTag: "Orange 'PASSEPORT ✓' hotel stamp",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S4: PAT_03 Rep 2 — Location: where is the room
  Scenario(
    scenarioId: "FR_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. The hotel is a converted "
        "17th-century hôtel particulier. "
        "Multiple staircases. Where is your room?",
    introFlag: false,
    environmentalTextPrompt: "🗝️ OÙ EST MA CHAMBRE ?",
    sophieClueEnglishIntent: "Ask where your room is",
    sophiePhoneticHint: "oo ay ma shom-bruh",
    targetLanguageAnchor: "Où est ma chambre ?",
    slotOptions: ["ma chambre", "l'ascenseur", "le petit-déjeuner", "le bar"],
    npcAudioResponseTranscript: "Deuxième étage, à gauche de l'ascenseur. Numéro 14.",
    graffitiStyleTag: "Cyan '→ CHAMBRE 14' room tag",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S5: PAT_06 Rep 3 — Ask if WiFi available
  Scenario(
    scenarioId: "FR_M04_S05",
    missionId: 4,
    environmentContext:
        "You need to check emails. "
        "You ask about WiFi.",
    introFlag: false,
    environmentalTextPrompt: "📶 EST-CE QU'IL Y A DU WIFI ?",
    sophieClueEnglishIntent: "Ask if there is WiFi",
    sophiePhoneticHint: "es-ku ee-lee-a doo wee-fee",
    targetLanguageAnchor: "Est-ce qu'il y a du WiFi ?",
    slotOptions: ["du WiFi", "du WiFi gratuit", "une connexion internet"],
    npcAudioResponseTranscript: "Oui, gratuit. Le mot de passe est sur votre carton de clé.",
    graffitiStyleTag: "Blue 'WIFI ✓' network tag",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S6: PAT_10 Rep 2 — Ask what time breakfast is
  Scenario(
    scenarioId: "FR_M04_S06",
    missionId: 4,
    environmentContext:
        "A French hotel breakfast — "
        "croissants, pain au chocolat, baguette, confiture. "
        "You need to know the hours.",
    introFlag: true,
    environmentalTextPrompt: "🥐 À QUELLE HEURE EST LE PETIT-DÉJEUNER ?",
    sophieClueEnglishIntent: "Ask what time breakfast is",
    sophiePhoneticHint: "a kel er ay luh puh-tee day-zhuh-nay",
    targetLanguageAnchor: "À quelle heure est le petit-déjeuner ?",
    slotOptions: ["le petit-déjeuner", "le dîner", "le check-out"],
    npcAudioResponseTranscript: "De 7h30 à 10h30. Buffet au rez-de-chaussée.",
    graffitiStyleTag: "Yellow 'PETIT-DÉJ 7:30-10:30' morning tag",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S7: PAT_07 Rep 2 — Tell concierge where you're from
  Scenario(
    scenarioId: "FR_M04_S07",
    missionId: 4,
    environmentContext:
        "The concierge is helping with a city map. "
        "He asks where you've come from — "
        "genuinely curious, in the French way.",
    introFlag: true,
    environmentalTextPrompt: "🌍 VOUS VENEZ D'OÙ ?",
    sophieClueEnglishIntent: "Say where you are from",
    sophiePhoneticHint: "zhuh vyen duh [X]",
    targetLanguageAnchor: "Je viens de [X]",
    slotOptions: ["l'Italie", "l'Allemagne", "l'Inde", "le Brésil", "le Japon"],
    npcAudioResponseTranscript: "Ah, magnifique ! C'est votre première fois à Paris ?",
    graffitiStyleTag: "Green 'JE VIENS DE [X]' origin tag",
    npcName: "Concierge",
    npcAvatarEmoji: "🛎️",
  ),

  // ── S8: PAT_13 Rep 1 — Request: extra pillow
  Scenario(
    scenarioId: "FR_M04_S08",
    missionId: 4,
    environmentContext:
        "Your room has one thin pillow. "
        "You call the front desk.",
    introFlag: false,
    environmentalTextPrompt: "📞 UN OREILLER SUPPLÉMENTAIRE",
    sophieClueEnglishIntent: "Ask for an extra pillow please",
    sophiePhoneticHint: "poor-yay voo map-or-tay un or-ay-yay",
    targetLanguageAnchor: "Pourriez-vous m'apporter un oreiller supplémentaire ?",
    slotOptions: ["un oreiller", "une couverture", "une serviette", "du papier toilette"],
    npcAudioResponseTranscript: "Bien sûr, on vous l'envoie immédiatement.",
    graffitiStyleTag: "Teal 'OREILLER +1' service request tag",
    npcName: "Réception",
    npcAvatarEmoji: "📞",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: missed checkout time
  Scenario(
    scenarioId: "FR_M04_S09",
    missionId: 4,
    environmentContext:
        "Reception is busy. Someone told you checkout "
        "but you missed it. Midi or onze heures? "
        "You confirm politely.",
    introFlag: false,
    environmentalTextPrompt: "🕙 LE CHECK-OUT EST À MIDI, C'EST BIEN ÇA ?",
    sophieClueEnglishIntent: "Confirm checkout is at noon",
    sophiePhoneticHint: "luh shek-owt ay a mee-dee say byan sa",
    targetLanguageAnchor: "Le check-out est à midi, c'est bien ça ?",
    slotOptions: ["à midi ?", "à onze heures ?", "à quelle heure exactement ?"],
    npcAudioResponseTranscript: "Oui, à midi. Vous pouvez laisser vos bagages si vous voulez.",
    graffitiStyleTag: "White 'MIDI ✓' checkout confirm bubble",
    npcName: "Réceptionniste",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: ask for a city map
  Scenario(
    scenarioId: "FR_M04_S10",
    missionId: 4,
    environmentContext:
        "Ready to explore Paris. "
        "The concierge has a rack of neighbourhood maps. "
        "You want the Marais map.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ UN PLAN DU QUARTIER",
    sophieClueEnglishIntent: "Ask for a map of the area please",
    sophiePhoneticHint: "un plan doo kar-tee-ay sil voo play",
    targetLanguageAnchor: "Un plan du quartier, s'il vous plaît",
    slotOptions: ["un plan du quartier", "un plan de Paris", "un plan du métro"],
    npcAudioResponseTranscript: "Voilà ! J'ai noté mes adresses préférées aussi.",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Hôtel Paris cleared stamp",
    npcName: "Concierge",
    npcAvatarEmoji: "🛎️",
  ),
];
