// lib/data/scenarios/french/french_m05_scenarios.dart
//
// MISSION 5: CAFÉ & BOULANGERIE — 10 SCENARIOS
// ===============================================
// Location: Café de Flore, Saint-Germain / local boulangerie, Le Marais
// Type: FOOD + SOCIAL — the daily rhythm of Paris
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Key forms: cette place est libre, je voudrais, s'il vous plaît (drill),
//   l'addition, combien coûte, pourriez-vous apporter, sans,
//   végétarien, à emporter, vous venez d'où, au revoir

import '../../../models/models.dart';

const List<Scenario> frenchM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Ask if this seat is free
  Scenario(
    scenarioId: "FR_M05_S01",
    missionId: 5,
    environmentContext:
        "Café de Flore. Full terrace on a Sunday morning. "
        "A man in a dark coat reads Libération alone — "
        "one empty chair at his table. You ask.",
    introFlag: true,
    environmentalTextPrompt: "☕ TERRASSE — CETTE PLACE EST LIBRE ?",
    sophieClueEnglishIntent: "Ask if this seat is free",
    sophiePhoneticHint: "set plass ay lee-bruh",
    targetLanguageAnchor: "Cette place est libre ?",
    slotOptions: ["Cette place est libre ?", "Ce siège est libre ?", "Je peux m'asseoir ?"],
    npcAudioResponseTranscript: "Oui, je vous en prie.",
    graffitiStyleTag: "Yellow 'LIBRE' open seat tag — café terrace",
    npcName: "Monsieur",
    npcAvatarEmoji: "📰",
  ),

  // ── S2: PAT_02 Rep 3 — Order coffee
  Scenario(
    scenarioId: "FR_M05_S02",
    missionId: 5,
    environmentContext:
        "The waiter arrives — unhurried, a white apron, "
        "a look that says he has seen everything. "
        "You order with confidence.",
    introFlag: true,
    environmentalTextPrompt: "☕ GARÇON — COMMANDER",
    sophieClueEnglishIntent: "Order a coffee please",
    sophiePhoneticHint: "zhuh voo-dray un ka-fay sil voo play",
    targetLanguageAnchor: "Je voudrais un café, s'il vous plaît",
    slotOptions: ["un café", "un café crème", "un café allongé", "un express"],
    npcAudioResponseTranscript: "Tout de suite. Autre chose ?",
    graffitiStyleTag: "Brown 'CAFÉ' barista tag — ceramic bistro",
    npcName: "Garçon",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — DRILL: order a pastry
  Scenario(
    scenarioId: "FR_M05_S03",
    missionId: 5,
    environmentContext:
        "The pastry display. A croissant aux amandes "
        "that looks flawless. You point and ask.",
    introFlag: false,
    environmentalTextPrompt: "🥐 UN [X], S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "un [X] sil voo play",
    targetLanguageAnchor: "Un [X], s'il vous plaît",
    slotOptions: ["croissant aux amandes", "pain au chocolat", "éclair au café", "tarte au citron"],
    npcAudioResponseTranscript: "Excellent choix, il sort du four.",
    graffitiStyleTag: "Orange 'CROISSANT 🥐' bakery tag",
    npcName: "Garçon",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Ask for the bill
  Scenario(
    scenarioId: "FR_M05_S04",
    missionId: 5,
    environmentContext:
        "Coffee drunk, croissant demolished. "
        "You have a museum visit in 30 minutes. "
        "The waiter is across the terrace.",
    introFlag: false,
    environmentalTextPrompt: "🧾 L'ADDITION, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for the bill",
    sophiePhoneticHint: "la-dee-syon sil voo play",
    targetLanguageAnchor: "L'addition, s'il vous plaît",
    slotOptions: ["L'addition", "Je voudrais payer", "On peut avoir l'addition ?"],
    npcAudioResponseTranscript: "Tout de suite. Ça fait 7,80 euros.",
    graffitiStyleTag: "Grey 'L'ADDITION' receipt tag",
    npcName: "Garçon",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Ask price of a baguette
  Scenario(
    scenarioId: "FR_M05_S05",
    missionId: 5,
    environmentContext:
        "A boulangerie near Saint-Paul metro. "
        "The queue is locals only — a good sign. "
        "No price visible on the baguette tradition.",
    introFlag: true,
    environmentalTextPrompt: "🥖 COMBIEN COÛTE LA BAGUETTE ?",
    sophieClueEnglishIntent: "Ask how much the baguette costs",
    sophiePhoneticHint: "com-byan koot la ba-get",
    targetLanguageAnchor: "Combien coûte la baguette ?",
    slotOptions: ["la baguette", "la baguette tradition", "le pain de campagne"],
    npcAudioResponseTranscript: "1,20 euro, madame/monsieur. La tradition fait 1,40.",
    graffitiStyleTag: "Wheat 'BAGUETTE €1.20' price tag — boulangerie",
    npcName: "Boulangère",
    npcAvatarEmoji: "🥖",
  ),

  // ── S6: PAT_13 Rep 2 — Ask for more bread at lunch
  Scenario(
    scenarioId: "FR_M05_S06",
    missionId: 5,
    environmentContext:
        "A set-menu lunch. The bread basket is empty "
        "and the entrée hasn't arrived yet. "
        "In France, bread is always free — just ask.",
    introFlag: true,
    environmentalTextPrompt: "🍞 ENCORE DU PAIN, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for a little more bread",
    sophiePhoneticHint: "poor-yay voo map-or-tay ong-kor doo pan",
    targetLanguageAnchor: "Pourriez-vous m'apporter encore du pain ?",
    slotOptions: ["du pain", "de l'eau", "du beurre", "des serviettes"],
    npcAudioResponseTranscript: "Bien sûr, tout de suite !",
    graffitiStyleTag: "Tan 'ENCORE DU PAIN +1' request tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S7: PAT_11 Rep 2 — Dietary: vegetarian
  Scenario(
    scenarioId: "FR_M05_S07",
    missionId: 5,
    environmentContext:
        "The plat du jour is a confit de canard — duck. "
        "You're vegetarian. France has improved "
        "but you still need to flag it clearly.",
    introFlag: true,
    environmentalTextPrompt: "🥗 JE SUIS VÉGÉTARIEN/NE",
    sophieClueEnglishIntent: "Say you are vegetarian",
    sophiePhoneticHint: "zhuh swee vay-zhay-tar-yan",
    targetLanguageAnchor: "Je suis végétarien/ne",
    slotOptions: ["végétarien/ne", "végane", "Je ne mange pas de viande"],
    npcAudioResponseTranscript: "Pas de problème — on a une option végétarienne aujourd'hui.",
    graffitiStyleTag: "Green 'VÉGÉTARIEN ✓' dietary tag",
    npcName: "Serveur",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Order takeaway
  Scenario(
    scenarioId: "FR_M05_S08",
    missionId: 5,
    environmentContext:
        "A boulangerie near the Seine. "
        "You want a jambon-beurre to eat "
        "walking along the river.",
    introFlag: true,
    environmentalTextPrompt: "🥪 À EMPORTER",
    sophieClueEnglishIntent: "Order [X] to take away",
    sophiePhoneticHint: "un [X] a om-por-tay sil voo play",
    targetLanguageAnchor: "Un [X] à emporter, s'il vous plaît",
    slotOptions: ["jambon-beurre", "croque-monsieur", "sandwich au chèvre", "quiche lorraine"],
    npcAudioResponseTranscript: "Je vous l'emballe ? Avec une serviette ?",
    graffitiStyleTag: "Tan 'À EMPORTER' takeaway tag — kraft paper",
    npcName: "Boulangère",
    npcAvatarEmoji: "🥖",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: ask where they're from
  Scenario(
    scenarioId: "FR_M05_S09",
    missionId: 5,
    environmentContext:
        "The baker has been chatting. Her accent is "
        "clearly from the south — not Parisian. "
        "You're curious.",
    introFlag: false,
    environmentalTextPrompt: "🌍 VOUS VENEZ D'OÙ ?",
    sophieClueEnglishIntent: "Ask where she is from",
    sophiePhoneticHint: "voo vuh-nay doo",
    targetLanguageAnchor: "Vous venez d'où ?",
    slotOptions: ["Vous venez d'où ?", "Vous êtes de Paris ?", "D'où venez-vous ?"],
    npcAudioResponseTranscript: "De Lyon ! Mais je suis à Paris depuis quinze ans.",
    graffitiStyleTag: "Orange 'DE LYON' origin tag — travel sticker",
    npcName: "Boulangère",
    npcAvatarEmoji: "🥖",
  ),

  // ── S10: PAT_16 Rep 5 — Warm social farewell
  Scenario(
    scenarioId: "FR_M05_S10",
    missionId: 5,
    environmentContext:
        "A wonderful five minutes of bread and conversation. "
        "Queue growing behind you. "
        "A warm French goodbye.",
    introFlag: false,
    environmentalTextPrompt: "👋 AU REVOIR — BONNE JOURNÉE",
    sophieClueEnglishIntent: "Say it was nice talking and goodbye",
    sophiePhoneticHint: "mair-see, bon-nuh zhoor-nay",
    targetLanguageAnchor: "Merci, bonne journée !",
    slotOptions: ["Bonne journée !", "Au revoir !", "À bientôt !"],
    npcAudioResponseTranscript: "À vous aussi ! Revenez !",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Boulangerie Parisienne stamp",
    npcName: "Boulangère",
    npcAvatarEmoji: "🥖",
  ),
];
