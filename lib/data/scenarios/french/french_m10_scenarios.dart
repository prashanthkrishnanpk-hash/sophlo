// lib/data/scenarios/french/french_m10_scenarios.dart
//
// MISSION 10: LE DÉPART — THE DEPARTURE — 10 SCENARIOS
// ========================================================
// Location: CDG Airport Terminal — Departure Day
// Type: GRAND FINALE — all 16 patterns at peak repetition
// Pattern coverage:
//   PAT_16(R7), PAT_05(R4), PAT_02(R8), PAT_04(R6), PAT_11(R6),
//   PAT_08(R6), PAT_03(R5), PAT_10(R5), PAT_09(R5), PAT_15(R8)+PAT_07(R5)
// Key forms: bonjour, je m'appelle, je voudrais enregistrer,
//   combien coûte, pourriez-vous, voici, où est, à quelle heure,
//   un siège côté hublot, pouvez-vous répéter + je viens de

import '../../../models/models.dart';

const List<Scenario> frenchM10Scenarios = [

  // ── S1: PAT_16 Rep 7 — Final greeting: check-in desk
  Scenario(
    scenarioId: "FR_M10_S01",
    missionId: 10,
    environmentContext:
        "CDG. Last morning. 5:45 AM. The check-in hall "
        "already hums with activity. An Air France agent "
        "in navy blue looks up as you approach.",
    introFlag: true,
    environmentalTextPrompt: "✈️ CDG — ENREGISTREMENT",
    sophieClueEnglishIntent: "Greet the check-in agent politely",
    sophiePhoneticHint: "bon-zhur",
    targetLanguageAnchor: "Bonjour",
    slotOptions: ["Bonjour", "Bonjour madame", "Bonjour monsieur"],
    npcAudioResponseTranscript: "Bonjour ! Votre passeport et votre réservation, s'il vous plaît.",
    graffitiStyleTag: "Navy '✈ DÉPART' Air France check-in tag",
    npcName: "Agente Air France",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 4 — Identity: confirm booking name
  Scenario(
    scenarioId: "FR_M10_S02",
    missionId: 10,
    environmentContext:
        "She needs your name to pull up the booking. "
        "Clear, formal — vous-form all the way.",
    introFlag: false,
    environmentalTextPrompt: "📋 VOTRE NOM, S'IL VOUS PLAÎT",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "zhuh ma-pel [X]",
    targetLanguageAnchor: "Je m'appelle [X]",
    slotOptions: ["Claire Dupont", "James Walker", "Hana Yamamoto", "Samir Benali"],
    npcAudioResponseTranscript: "Merci. Un instant, je vous retrouve.",
    graffitiStyleTag: "White 'NOM CONFIRMÉ' name confirm tag",
    npcName: "Agente Air France",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S3: PAT_02 Rep 8 — Request: check in one bag
  Scenario(
    scenarioId: "FR_M10_S03",
    missionId: 10,
    environmentContext:
        "One checked bag, one carry-on. "
        "You want to check in just the suitcase.",
    introFlag: false,
    environmentalTextPrompt: "🧳 JE VOUDRAIS ENREGISTRER MA VALISE",
    sophieClueEnglishIntent: "Say you want to check in your suitcase",
    sophiePhoneticHint: "zhuh voo-dray on-ruh-zhees-tray ma va-leez",
    targetLanguageAnchor: "Je voudrais enregistrer ma valise",
    slotOptions: ["ma valise", "mon bagage", "ma valise et mon sac"],
    npcAudioResponseTranscript: "Bien sûr, mettez-la sur la balance s'il vous plaît.",
    graffitiStyleTag: "Blue 'ENREGISTREMENT' baggage check tag",
    npcName: "Agente Air France",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S4: PAT_04 Rep 6 — Ask overweight fee
  Scenario(
    scenarioId: "FR_M10_S04",
    missionId: 10,
    environmentContext:
        "25.6 kilos. Limit is 23. Overweight. "
        "The scale flashes a warning. She's checking "
        "her screen. How much will this cost?",
    introFlag: false,
    environmentalTextPrompt: "⚖️ COMBIEN COÛTE L'EXCÉDENT DE BAGAGES ?",
    sophieClueEnglishIntent: "Ask how much the excess baggage fee is",
    sophiePhoneticHint: "com-byan koot lek-say-don duh ba-gazh",
    targetLanguageAnchor: "Combien coûte l'excédent de bagages ?",
    slotOptions: ["l'excédent ?", "le supplément ?", "combien je dois payer ?"],
    npcAudioResponseTranscript: "2,6 kilos en trop — ça fait 45 euros de supplément.",
    graffitiStyleTag: "Orange 'EXCÉDENT €45' fee tag",
    npcName: "Agente Air France",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S5: PAT_11 Rep 6 — Negotiate: ask for exception
  Scenario(
    scenarioId: "FR_M10_S05",
    missionId: 10,
    environmentContext:
        "45 euros for 2.6 kilos. Those gifts "
        "from the marché aux puces. "
        "Worth a polite try.",
    introFlag: false,
    environmentalTextPrompt: "🙏 VOUS POUVEZ FAIRE UNE EXCEPTION ?",
    sophieClueEnglishIntent: "Ask politely if she can make an exception",
    sophiePhoneticHint: "voo poo-vay fair oon ek-sep-syon",
    targetLanguageAnchor: "Vous pouvez faire une exception ?",
    slotOptions: ["une exception ?", "un geste ?", "fermer les yeux cette fois ?"],
    npcAudioResponseTranscript: "Bon, pour cette fois — mais faites attention la prochaine fois !",
    graffitiStyleTag: "Pink '🙏 EXCEPTION' exception tag",
    npcName: "Agente Air France",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S6: PAT_08 Rep 6 — Hand over boarding pass
  Scenario(
    scenarioId: "FR_M10_S06",
    missionId: 10,
    environmentContext:
        "Security. An officer in a dark uniform. "
        "Boarding pass on your phone, passport ready. "
        "You present both.",
    introFlag: true,
    environmentalTextPrompt: "🎫 CARTE D'EMBARQUEMENT ET PASSEPORT",
    sophieClueEnglishIntent: "Hand over your boarding pass",
    sophiePhoneticHint: "vwa-see ma kart dom-bark-mon",
    targetLanguageAnchor: "Voici ma carte d'embarquement",
    slotOptions: ["ma carte d'embarquement", "mon passeport et ma carte", "voilà tout"],
    npcAudioResponseTranscript: "Merci. Sortez votre ordinateur de votre sac, s'il vous plaît.",
    graffitiStyleTag: "Green 'CARTE ✓' boarding pass stamp",
    npcName: "Agent de Sécurité",
    npcAvatarEmoji: "💂",
  ),

  // ── S7: PAT_03 Rep 5 — Ask where the gate is
  Scenario(
    scenarioId: "FR_M10_S07",
    missionId: 10,
    environmentContext:
        "Security cleared. CDG Terminal 2E is enormous "
        "and confusing. Your gate is E72. "
        "You ask a ground crew member.",
    introFlag: false,
    environmentalTextPrompt: "🚶 OÙ EST LA PORTE E72 ?",
    sophieClueEnglishIntent: "Ask where gate E72 is",
    sophiePhoneticHint: "oo ay la port uh sat-on-tuh-duh",
    targetLanguageAnchor: "Où est la porte E72 ?",
    slotOptions: ["la porte E72", "ma porte d'embarquement", "le duty-free", "le salon"],
    npcAudioResponseTranscript: "Vous devez prendre la navette. C'est par là.",
    graffitiStyleTag: "Cyan '→ E72' departure gate tag",
    npcName: "Personnel au Sol",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S8: PAT_10 Rep 5 — Ask when boarding starts
  Scenario(
    scenarioId: "FR_M10_S08",
    missionId: 10,
    environmentContext:
        "Gate E72. Flight at 09:45. "
        "When does boarding begin? "
        "You ask the gate agent.",
    introFlag: false,
    environmentalTextPrompt: "⏰ L'EMBARQUEMENT COMMENCE À QUELLE HEURE ?",
    sophieClueEnglishIntent: "Ask what time boarding starts",
    sophiePhoneticHint: "lom-bark-mon ko-mons a kel er",
    targetLanguageAnchor: "L'embarquement commence à quelle heure ?",
    slotOptions: ["l'embarquement ?", "quand on monte ?", "le départ ?"],
    npcAudioResponseTranscript: "À 9h05. Préparez votre passeport, s'il vous plaît.",
    graffitiStyleTag: "Purple '⏰ EMBARQUEMENT 9:05' boarding tag",
    npcName: "Agente de Porte",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S9: PAT_09 Rep 5 — Ask for window seat on board
  Scenario(
    scenarioId: "FR_M10_S09",
    missionId: 10,
    environmentContext:
        "Boarding. The cabin crew greets passengers. "
        "Your allocated seat is a middle seat. "
        "You ask about window seats.",
    introFlag: false,
    environmentalTextPrompt: "🪟 UN SIÈGE CÔTÉ HUBLOT ?",
    sophieClueEnglishIntent: "Ask if there is a window seat available",
    sophiePhoneticHint: "es-ku ee-lee-a un syezh ko-tay oo-blo",
    targetLanguageAnchor: "Est-ce qu'il y a un siège côté hublot ?",
    slotOptions: ["côté hublot", "côté couloir", "à l'avant"],
    npcAudioResponseTranscript: "Je vérifie. Le 24A est libre. Ça vous convient ?",
    graffitiStyleTag: "Sky '🪟 HUBLOT 24A' window seat tag",
    npcName: "Hôtesse de l'Air",
    npcAvatarEmoji: "✈️",
  ),

  // ── S10: PAT_15 Rep 8 + PAT_07 Rep 5 — Final repair + origin farewell
  Scenario(
    scenarioId: "FR_M10_S10",
    missionId: 10,
    environmentContext:
        "Cruising altitude. The flight attendant from "
        "earlier passes with drinks. She asks if this "
        "was your first time in France and where you're from. "
        "Last conversation of the entire arc.",
    introFlag: false,
    environmentalTextPrompt: "🌍 DERNIÈRE CONVERSATION — AU REVOIR, PARIS",
    sophieClueEnglishIntent: "Say you're from [X] and Paris was wonderful",
    sophiePhoneticHint: "zhuh vyen duh [X], pa-ree ay-tay mehr-vay-yuh",
    targetLanguageAnchor: "Je viens de [X]. Paris était merveilleux !",
    slotOptions: ["Je veux revenir", "C'était le meilleur voyage", "Je continue le français"],
    npcAudioResponseTranscript: "Ça me fait très plaisir ! Revenez vite à Paris !",
    graffitiStyleTag: "GOLD 'MISSION ACCOMPLIE — ARC PARISIEN COMPLET' Grand Finale stamp",
    npcName: "Hôtesse de l'Air",
    npcAvatarEmoji: "✈️",
  ),
];
