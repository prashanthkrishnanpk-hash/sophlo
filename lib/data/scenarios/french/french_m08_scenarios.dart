// lib/data/scenarios/french/french_m08_scenarios.dart
//
// MISSION 8: RESTAURANT — LE DÎNER — 10 SCENARIOS
// ===================================================
// Location: Classic Parisian bistro, Le Marais
// Type: FULL MEAL + PEAK SOCIAL FLUENCY
// Pattern coverage:
//   PAT_02(R6), PAT_06(R7), PAT_13(R4), PAT_04(R5), PAT_11(R5),
//   PAT_16(R6), PAT_10(R4), PAT_01(R7-DRILL), PAT_09(R4), PAT_12(R7)
// Key forms: j'ai réservé, est-ce qu'il y a, pourriez-vous apporter,
//   combien coûte, sans, santé, jusqu'à quelle heure,
//   je voudrais (drill), séparément, c'était délicieux

import '../../../models/models.dart';

const List<Scenario> frenchM08Scenarios = [

  // ── S1: PAT_02 Rep 6 — Claim dinner reservation
  Scenario(
    scenarioId: "FR_M08_S01",
    missionId: 8,
    environmentContext:
        "A classic bistro — red banquettes, brass fixtures, "
        "the chalkboard menu, the hum of a full room. "
        "The maître d' looks up as you enter.",
    introFlag: true,
    environmentalTextPrompt: "🍷 BISTRO — J'AI RÉSERVÉ",
    sophieClueEnglishIntent: "Say you have a reservation for two",
    sophiePhoneticHint: "zhay ray-zair-vay poor duh per-son",
    targetLanguageAnchor: "J'ai réservé pour deux personnes",
    slotOptions: ["deux personnes", "trois personnes", "quatre personnes"],
    npcAudioResponseTranscript: "Bienvenue. C'est à quel nom, s'il vous plaît ?",
    graffitiStyleTag: "Burgundy 'RÉSERVÉ' formal table tag",
    npcName: "Maître d'Hôtel",
    npcAvatarEmoji: "🤵",
  ),

  // ── S2: PAT_06 Rep 7 — Ask for a table on the terrace
  Scenario(
    scenarioId: "FR_M08_S02",
    missionId: 8,
    environmentContext:
        "Warm Paris evening. The terrace tables "
        "look perfect — you'd love to be outside. "
        "You ask if there's space.",
    introFlag: false,
    environmentalTextPrompt: "🌙 EST-CE QU'IL Y A UNE TABLE EN TERRASSE ?",
    sophieClueEnglishIntent: "Ask if there is a table on the terrace",
    sophiePhoneticHint: "es-ku ee-lee-a oon tab-luh on tair-as",
    targetLanguageAnchor: "Est-ce qu'il y a une table en terrasse ?",
    slotOptions: ["en terrasse", "à côté de la fenêtre", "dans le coin tranquille", "à l'intérieur"],
    npcAudioResponseTranscript: "Oui, il en reste une — juste là. Ça vous va ?",
    graffitiStyleTag: "Yellow 'TERRASSE 🕯' candlelit tag",
    npcName: "Maître d'Hôtel",
    npcAvatarEmoji: "🤵",
  ),

  // ── S3: PAT_13 Rep 4 — Request: wine list please
  Scenario(
    scenarioId: "FR_M08_S03",
    missionId: 8,
    environmentContext:
        "Seated. The food menu arrives. "
        "You want the wine list first — "
        "this bistro is known for its natural wines.",
    introFlag: false,
    environmentalTextPrompt: "🍷 LA CARTE DES VINS, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for the wine list",
    sophiePhoneticHint: "poor-yay voo map-or-tay la kart day van",
    targetLanguageAnchor: "Pourriez-vous m'apporter la carte des vins ?",
    slotOptions: ["la carte des vins", "le menu", "les suggestions du chef"],
    npcAudioResponseTranscript: "Bien sûr. Notre Côtes du Rhône est très apprécié.",
    graffitiStyleTag: "White 'VINS 🍷' wine list tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_04 Rep 5 — Ask price of today's special
  Scenario(
    scenarioId: "FR_M08_S04",
    missionId: 8,
    environmentContext:
        "The waiter mentions le plat du jour — "
        "a blanquette de veau. Sounds perfect. "
        "Price?",
    introFlag: false,
    environmentalTextPrompt: "🍲 COMBIEN COÛTE LE PLAT DU JOUR ?",
    sophieClueEnglishIntent: "Ask how much the daily special costs",
    sophiePhoneticHint: "com-byan koot luh pla doo zhoor",
    targetLanguageAnchor: "Combien coûte le plat du jour ?",
    slotOptions: ["le plat du jour", "la blanquette", "le menu complet"],
    npcAudioResponseTranscript: "19,50 euros, avec une entrée incluse.",
    graffitiStyleTag: "Blue 'PLAT DU JOUR €19.50' special tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_11 Rep 5 — Dietary: without garlic please
  Scenario(
    scenarioId: "FR_M08_S05",
    missionId: 8,
    environmentContext:
        "The dish comes heavy in garlic and "
        "you have an important meeting tomorrow morning. "
        "You ask if it can be made without.",
    introFlag: false,
    environmentalTextPrompt: "🧄 SANS AIL, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask if it can be made without garlic",
    sophiePhoneticHint: "say pos-eebl son ay",
    targetLanguageAnchor: "C'est possible sans ail ?",
    slotOptions: ["sans ail", "sans gluten", "sans crème", "sans oignon"],
    npcAudioResponseTranscript: "Bien sûr, je préviens la cuisine. Aucun souci.",
    graffitiStyleTag: "White 'SANS AIL ✗' dietary tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_16 Rep 6 — Toast: santé!
  Scenario(
    scenarioId: "FR_M08_S06",
    missionId: 8,
    environmentContext:
        "Wine poured. The table next to you is "
        "mid-toast already. Your companion raises "
        "their glass. Say it.",
    introFlag: false,
    environmentalTextPrompt: "🥂 SANTÉ ! — À UNE BELLE SOIRÉE",
    sophieClueEnglishIntent: "Toast cheers and to a lovely evening",
    sophiePhoneticHint: "son-tay, a oon bel swa-ray",
    targetLanguageAnchor: "Santé ! À une belle soirée !",
    slotOptions: ["Santé !", "Tchin-tchin !", "À nous !"],
    npcAudioResponseTranscript: "Santé ! Bienvenue à Paris !",
    graffitiStyleTag: "Gold '🥂 SANTÉ !' toast tag",
    npcName: "Voisin de Table",
    npcAvatarEmoji: "😄",
  ),

  // ── S7: PAT_10 Rep 4 — Ask until what time kitchen is open
  Scenario(
    scenarioId: "FR_M08_S07",
    missionId: 8,
    environmentContext:
        "Your friend is running 30 minutes late. "
        "It's 9:30 PM already. French kitchens "
        "sometimes close early outside Paris's centre.",
    introFlag: true,
    environmentalTextPrompt: "🕙 JUSQU'À QUELLE HEURE EST LA CUISINE ?",
    sophieClueEnglishIntent: "Ask until what time the kitchen is open",
    sophiePhoneticHint: "zhoos-ka kel er ay la kwee-zeen",
    targetLanguageAnchor: "Jusqu'à quelle heure est la cuisine ?",
    slotOptions: ["la cuisine ouverte ?", "les commandes ?", "vous fermez ?"],
    npcAudioResponseTranscript: "Dernière commande à 22h30. Vous avez le temps.",
    graffitiStyleTag: "Purple '🕙 CUISINE JUSQU'À 22:30' closing tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_01 Rep 7 — DRILL: order dessert
  Scenario(
    scenarioId: "FR_M08_S08",
    missionId: 8,
    environmentContext:
        "Main course finished. The dessert menu arrives. "
        "Tarte tatin avec crème fraîche. No debate.",
    introFlag: false,
    environmentalTextPrompt: "🍎 LA TARTE TATIN, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Order the tarte tatin please",
    sophiePhoneticHint: "zhuh voo-dray la tart ta-tan sil voo play",
    targetLanguageAnchor: "Je voudrais la tarte tatin, s'il vous plaît",
    slotOptions: ["la tarte tatin", "la crème brûlée", "le fondant au chocolat", "les fromages"],
    npcAudioResponseTranscript: "Excellent choix. Avec ou sans crème fraîche ?",
    graffitiStyleTag: "Caramel 'TARTE TATIN 🍎' dessert tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_09 Rep 4 — Ask to pay separately
  Scenario(
    scenarioId: "FR_M08_S09",
    missionId: 8,
    environmentContext:
        "Bill time. Two people, one check. "
        "Splitting the bill in France is normal, "
        "though servers may sigh a little.",
    introFlag: false,
    environmentalTextPrompt: "🧾 SÉPARÉMENT, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask to pay separately",
    sophiePhoneticHint: "say-pa-ray-mon sil voo play",
    targetLanguageAnchor: "Séparément, s'il vous plaît",
    slotOptions: ["Séparément", "Ensemble", "Je paie pour les deux"],
    npcAudioResponseTranscript: "Bien sûr — deux additions. Pas de problème.",
    graffitiStyleTag: "Grey 'SÉPARÉMENT ÷2' bill split tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S10: PAT_12 Rep 7 — Compliment: it was delicious
  Scenario(
    scenarioId: "FR_M08_S10",
    missionId: 8,
    environmentContext:
        "Coats on. The maître d' holds the door. "
        "A genuinely perfect evening. You tell him.",
    introFlag: false,
    environmentalTextPrompt: "⭐ C'ÉTAIT DÉLICIEUX",
    sophieClueEnglishIntent: "Say everything was delicious thank you",
    sophiePhoneticHint: "say-tay day-lee-syuh, mair-see bo-koo",
    targetLanguageAnchor: "C'était délicieux, merci beaucoup !",
    slotOptions: ["délicieux", "excellent", "fabuleux"],
    npcAudioResponseTranscript: "Merci à vous ! Au plaisir de vous revoir !",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Bistro Parisien stamp",
    npcName: "Maître d'Hôtel",
    npcAvatarEmoji: "🤵",
  ),
];
