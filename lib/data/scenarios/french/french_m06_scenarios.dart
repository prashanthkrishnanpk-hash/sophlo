// lib/data/scenarios/french/french_m06_scenarios.dart
//
// MISSION 6: MARCHÉ — MARKET — 10 SCENARIOS
// =============================================
// Location: Marché Bastille / Marché aux Puces de Saint-Ouen
// Type: COMMERCE + NEGOTIATION — French market culture
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Key forms: combien coûte, je voudrais, pourriez-vous emballer,
//   c'est trop cher, par ici, voici, comment, pour offrir,
//   est-ce qu'il y a, un sac s'il vous plaît

import '../../../models/models.dart';

const List<Scenario> frenchM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question
  Scenario(
    scenarioId: "FR_M06_S01",
    missionId: 6,
    environmentContext:
        "Marché Bastille. Saturday morning. "
        "Colour, noise, the smell of roasted chicken "
        "and fresh oysters. A cheese stall with a "
        "magnificent Comté wheel. No price visible.",
    introFlag: true,
    environmentalTextPrompt: "🧀 MARCHÉ BASTILLE — COMBIEN COÛTE LE FROMAGE ?",
    sophieClueEnglishIntent: "Ask how much the cheese costs",
    sophiePhoneticHint: "com-byan koot luh fro-mahzh",
    targetLanguageAnchor: "Combien coûte le fromage ?",
    slotOptions: ["le fromage", "le Comté", "ça", "les 200 grammes"],
    npcAudioResponseTranscript: "3,50 euros les 100 grammes. Vous voulez goûter ?",
    graffitiStyleTag: "Orange '€3.50/100g' market price tag",
    npcName: "Fromager",
    npcAvatarEmoji: "🧀",
  ),

  // ── S2: PAT_02 Rep 4 — Order: 200 grams
  Scenario(
    scenarioId: "FR_M06_S02",
    missionId: 6,
    environmentContext:
        "The taste sample was extraordinary. "
        "You want 200 grams to take back to the hotel.",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 200 GRAMMES, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for 200 grams please",
    sophiePhoneticHint: "zhuh voo-dray duh sahn gram sil voo play",
    targetLanguageAnchor: "Je voudrais 200 grammes, s'il vous plaît",
    slotOptions: ["200 grammes", "100 grammes", "un demi-kilo"],
    npcAudioResponseTranscript: "Voilà, ça fait 7 euros. Autre chose ?",
    graffitiStyleTag: "Green '200g ✓' weight tag — market scale",
    npcName: "Fromager",
    npcAvatarEmoji: "🧀",
  ),

  // ── S3: PAT_13 Rep 3 — Request: wrap it carefully
  Scenario(
    scenarioId: "FR_M06_S03",
    missionId: 6,
    environmentContext:
        "Marché aux Puces de Saint-Ouen. Endless stalls of "
        "antiques. You found a small vintage perfume bottle — "
        "beautiful and fragile. You worry about your bag.",
    introFlag: true,
    environmentalTextPrompt: "🏺 POURRIEZ-VOUS L'EMBALLER ?",
    sophieClueEnglishIntent: "Ask if they can wrap it for you",
    sophiePhoneticHint: "poor-yay voo lom-ba-lay",
    targetLanguageAnchor: "Pourriez-vous l'emballer ?",
    slotOptions: ["l'emballer", "le protéger", "le mettre dans une boîte"],
    npcAudioResponseTranscript: "Bien sûr, je l'enveloppe dans du papier bulle.",
    graffitiStyleTag: "Teal 'FRAGILE ⚠' wrap request tag",
    npcName: "Antiquaire",
    npcAvatarEmoji: "🏺",
  ),

  // ── S4: PAT_11 Rep 3 — Negotiate: too expensive
  Scenario(
    scenarioId: "FR_M06_S04",
    missionId: 6,
    environmentContext:
        "The bottle is €45. Lovely, but steep. "
        "Negotiation at the puces is expected — "
        "this is the place to try it.",
    introFlag: false,
    environmentalTextPrompt: "💸 C'EST TROP CHER — UN PEU MOINS ?",
    sophieClueEnglishIntent: "Say it's too expensive and ask to negotiate",
    sophiePhoneticHint: "say tro shair, voo poo-vay fair mwan",
    targetLanguageAnchor: "C'est trop cher. Vous pouvez faire moins ?",
    slotOptions: ["faire moins ?", "un meilleur prix ?", "un geste ?"],
    npcAudioResponseTranscript: "Bon, pour vous — 35 euros. C'est mon dernier prix.",
    graffitiStyleTag: "Red 'NÉGOCIATION!' tag — flea market",
    npcName: "Antiquaire",
    npcAvatarEmoji: "🏺",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: ask for directions
  Scenario(
    scenarioId: "FR_M06_S05",
    missionId: 6,
    environmentContext:
        "Lost in the puces' maze of alleys. "
        "The food court — where the merguez sandwiches "
        "are — should be nearby.",
    introFlag: true,
    environmentalTextPrompt: "🧭 C'EST PAR ICI ?",
    sophieClueEnglishIntent: "Ask if the food stalls are this way",
    sophiePhoneticHint: "say par ee-see",
    targetLanguageAnchor: "C'est par ici ?",
    slotOptions: ["par ici ?", "par là ?", "tout droit ?"],
    npcAudioResponseTranscript: "Non, c'est par là-bas — vous sentirez l'odeur !",
    graffitiStyleTag: "White '→ MARCHÉ' direction tag — flea market alley",
    npcName: "Visiteur",
    npcAvatarEmoji: "🚶",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: hand over cash
  Scenario(
    scenarioId: "FR_M06_S06",
    missionId: 6,
    environmentContext:
        "Deal struck at 35 euros. Cash only — "
        "a handwritten sign confirms it. "
        "You hand over the notes.",
    introFlag: false,
    environmentalTextPrompt: "💶 PAIEMENT EN ESPÈCES",
    sophieClueEnglishIntent: "Hand over the money",
    sophiePhoneticHint: "vwa-see",
    targetLanguageAnchor: "Voici",
    slotOptions: ["Voici", "Tenez", "Voilà l'argent"],
    npcAudioResponseTranscript: "Merci. Voici votre monnaie — cinq euros.",
    graffitiStyleTag: "Gold 'PAYÉ ✓' cash payment stamp",
    npcName: "Antiquaire",
    npcAvatarEmoji: "🏺",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: didn't catch the price
  Scenario(
    scenarioId: "FR_M06_S07",
    missionId: 6,
    environmentContext:
        "A spice stall near the entrance. "
        "The vendor named the price quickly while "
        "weighing. Quatre euros or quatorze?",
    introFlag: true,
    environmentalTextPrompt: "🌶️ COMMENT ? — LE PRIX ENCORE",
    sophieClueEnglishIntent: "Ask how much she said",
    sophiePhoneticHint: "kom-bee-en a-vay voo dee",
    targetLanguageAnchor: "Comment ? Combien avez-vous dit ?",
    slotOptions: ["Combien avez-vous dit ?", "Pardon ?", "Je n'ai pas entendu"],
    npcAudioResponseTranscript: "Quatre euros. Qu-a-tre. Pas quatorze.",
    graffitiStyleTag: "White 'COMMENT ?' repeat request bubble",
    npcName: "Épicière",
    npcAvatarEmoji: "🌶️",
  ),

  // ── S8: PAT_09 Rep 3 — Ask for something as a gift
  Scenario(
    scenarioId: "FR_M06_S08",
    missionId: 6,
    environmentContext:
        "You want to bring something home from Paris — "
        "not an Eiffel Tower keychain. "
        "Something real. You ask a vendor.",
    introFlag: true,
    environmentalTextPrompt: "🎁 JE CHERCHE UN CADEAU",
    sophieClueEnglishIntent: "Say you are looking for a gift",
    sophiePhoneticHint: "zhuh shairsh un ka-doh",
    targetLanguageAnchor: "Je cherche un cadeau",
    slotOptions: ["un cadeau", "quelque chose à offrir", "un souvenir typique"],
    npcAudioResponseTranscript: "Pour un homme ou une femme ? Quel budget ?",
    graffitiStyleTag: "Pink 'CADEAU 🎁' gift tag — ribbon style",
    npcName: "Vendeuse",
    npcAvatarEmoji: "🎨",
  ),

  // ── S9: PAT_06 Rep 5 — Ask if they have a smaller size
  Scenario(
    scenarioId: "FR_M06_S09",
    missionId: 6,
    environmentContext:
        "A vintage scarf stall. Beautiful silk Hermès-style "
        "pattern, but the only one on display is enormous. "
        "Maybe a smaller one exists.",
    introFlag: false,
    environmentalTextPrompt: "🧣 EST-CE QU'IL Y A UNE PLUS PETITE TAILLE ?",
    sophieClueEnglishIntent: "Ask if there is a smaller size",
    sophiePhoneticHint: "es-ku ee-lee-a oon ploo puh-teet tie",
    targetLanguageAnchor: "Est-ce qu'il y a une plus petite taille ?",
    slotOptions: ["plus petite taille", "une autre couleur", "un autre motif"],
    npcAudioResponseTranscript: "Oui, j'en ai un plus petit dans la caisse — un instant.",
    graffitiStyleTag: "Silk 'TAILLE ?' size tag — vintage scarf",
    npcName: "Vendeuse",
    npcAvatarEmoji: "🧣",
  ),

  // ── S10: PAT_01 Rep 6 — DRILL: ask for a bag
  Scenario(
    scenarioId: "FR_M06_S10",
    missionId: 6,
    environmentContext:
        "Arms full — cheese, perfume bottle, spices, scarf. "
        "You desperately need a bag.",
    introFlag: false,
    environmentalTextPrompt: "🛍️ UN SAC, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Ask for a bag please",
    sophiePhoneticHint: "un sak sil voo play",
    targetLanguageAnchor: "Un sac, s'il vous plaît",
    slotOptions: ["un sac", "un grand sac", "un sac en papier"],
    npcAudioResponseTranscript: "Tenez ! Et revenez nous voir.",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE' — Marché Bastille stamp",
    npcName: "Fromager",
    npcAvatarEmoji: "🧀",
  ),
];
