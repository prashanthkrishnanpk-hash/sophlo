// lib/data/scenarios/english/english_m02_scenarios.dart
//
// MISSION 2: THE TERMINAL — 10 SCENARIOS
// =========================================
// Type: FIRST REAL PRESSURE
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Primary words: hello, I'm here for, my name is, here is my,
//   for, where is, do you have, what time, excuse me, could I have

import '../../../models/models.dart';

const List<Scenario> englishM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Greeting: border officer ─────────
  Scenario(
    scenarioId: "EN_M02_S01",
    missionId: 2,
    environmentContext:
        "Border Force. A glass booth. An officer in a stab vest "
        "stares at your passport photo, then at you. "
        "Then at the photo again.",
    introFlag: true,
    environmentalTextPrompt: "🛂 UK BORDER — HEATHROW T5",
    sophieClueEnglishIntent: "Greet the border officer",
    sophiePhoneticHint: "heh-loh",
    targetLanguageAnchor: "Hello",
    slotOptions: ["Hello", "Good morning", "Good afternoon"],
    npcAudioResponseTranscript:
        "Passport please. Purpose of visit?",
    graffitiStyleTag: "Blue 'HELLO' formal stencil — border control style",
    npcName: "Border Officer",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Self declaration: purpose ────────
  Scenario(
    scenarioId: "EN_M02_S02",
    missionId: 2,
    environmentContext:
        "Two words. That's what the officer said. "
        "Purpose. Of. Visit. You have a prepared answer.",
    introFlag: true,
    environmentalTextPrompt: "📋 PURPOSE OF VISIT?",
    sophieClueEnglishIntent: "Say you are here on holiday",
    sophiePhoneticHint: "aym heer on hol-i-day",
    targetLanguageAnchor: "I'm here on holiday",
    slotOptions: ["on holiday", "for tourism", "as a tourist"],
    npcAudioResponseTranscript:
        "How long are you planning to stay?",
    graffitiStyleTag: "Green 'HOLIDAY' stamp — tourism badge",
    npcName: "Border Officer",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity possession: name ────────
  Scenario(
    scenarioId: "EN_M02_S03",
    missionId: 2,
    environmentContext:
        "She types. Pauses. Types again. Looks up. "
        "Confirm your name for the record.",
    introFlag: false,
    environmentalTextPrompt: "📋 NAME CONFIRMATION",
    sophieClueEnglishIntent: "Say your name is [X]",
    sophiePhoneticHint: "my naym is [X]",
    targetLanguageAnchor: "My name is [X]",
    slotOptions: ["James Wilson", "Priya Sharma", "Ahmed Ali", "Emma Chen"],
    npcAudioResponseTranscript:
        "Right. Two weeks? Enjoy London.",
    graffitiStyleTag: "White 'NAME' chalk tag — record style",
    npcName: "Border Officer",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Handover: passport ───────────────
  Scenario(
    scenarioId: "EN_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. Another officer. He points at "
        "a counter. Needs to see everything again.",
    introFlag: true,
    environmentalTextPrompt: "🪪 SECONDARY CHECK",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "heer is my pas-port",
    targetLanguageAnchor: "Here is my passport",
    slotOptions: ["passport", "visa", "travel documents"],
    npcAudioResponseTranscript:
        "Thank you. All looks fine — off you go.",
    graffitiStyleTag: "Orange 'PASSPORT' document stamp",
    npcName: "Secondary Officer",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Purpose destination: ticket ──────
  Scenario(
    scenarioId: "EN_M02_S05",
    missionId: 2,
    environmentContext:
        "Baggage claim. Belt three. Twenty minutes. "
        "Your bag finally appears. You need the Tube now.",
    introFlag: true,
    environmentalTextPrompt: "🚇 HEATHROW — NEED THE TUBE",
    sophieClueEnglishIntent: "Say you need a ticket to central London",
    sophiePhoneticHint: "ayd like uh tik-it to sen-trul lun-dun",
    targetLanguageAnchor: "I'd like a ticket to central London",
    slotOptions: ["central London", "Paddington", "King's Cross", "Victoria"],
    npcAudioResponseTranscript:
        "Single or return? And do you have an Oyster card?",
    graffitiStyleTag: "Cyan '🚇 TUBE' underground roundel tag",
    npcName: "Tube Staff",
    npcAvatarEmoji: "🚇",
  ),

  // ── S6: PAT_03 Rep 1 — Location question: exit ──────────
  Scenario(
    scenarioId: "EN_M02_S06",
    missionId: 2,
    environmentContext:
        "Terminal 5. Seven exits. Three floors. "
        "Your brain is running on four hours of sleep. "
        "You need the way out.",
    introFlag: true,
    environmentalTextPrompt: "🚪 FIND THE EXIT",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "ex-kyooz mee, wair is the ex-it",
    targetLanguageAnchor: "Excuse me, where is the exit?",
    slotOptions: ["the exit", "the Tube station", "the taxi rank", "the bus stop"],
    npcAudioResponseTranscript:
        "Straight on, then take the lift down to level zero.",
    graffitiStyleTag: "Cyan 'EXIT→' neon arrow tag",
    npcName: "Airport Staff",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Yes/no: Oyster card ──────────────
  Scenario(
    scenarioId: "EN_M02_S07",
    missionId: 2,
    environmentContext:
        "Tube ticket machine. Eight options on screen. "
        "A queue forming behind you. Focus.",
    introFlag: true,
    environmentalTextPrompt: "🚇 TUBE TICKET — OYSTER?",
    sophieClueEnglishIntent: "Ask if they have Oyster cards",
    sophiePhoneticHint: "doo yoo hav Oyster cards heer",
    targetLanguageAnchor: "Do you have Oyster cards here?",
    slotOptions: ["Oyster cards", "contactless payment", "day passes"],
    npcAudioResponseTranscript:
        "Yes — the machine on the right does Oyster top-ups and new cards.",
    graffitiStyleTag: "Yellow 'OYSTER?' roundel tag",
    npcName: "Tube Staff",
    npcAvatarEmoji: "🚇",
  ),

  // ── S8: PAT_10 Rep 1 — Time question: last train ────────
  Scenario(
    scenarioId: "EN_M02_S08",
    missionId: 2,
    environmentContext:
        "It's 11:15 PM. You've been in transit for nineteen hours. "
        "One critical question before you buy anything.",
    introFlag: true,
    environmentalTextPrompt: "🕐 LATE NIGHT — LAST TUBE?",
    sophieClueEnglishIntent: "Ask what time the last Tube is",
    sophiePhoneticHint: "wot tym is the last Tube",
    targetLanguageAnchor: "What time is the last Tube?",
    slotOptions: ["the last Tube", "the last train", "the last service"],
    npcAudioResponseTranscript:
        "Last Piccadilly line from here is eleven fifty-three. You've got time.",
    graffitiStyleTag: "Purple '🕐 LAST TUBE' clock tag — urgency style",
    npcName: "Tube Staff",
    npcAvatarEmoji: "🚇",
  ),

  // ── S9: PAT_15 Rep 1 — Politeness repair ────────────────
  Scenario(
    scenarioId: "EN_M02_S09",
    missionId: 2,
    environmentContext:
        "Fast British accent. Platform announcement. "
        "Something about a signal failure. You caught nothing.",
    introFlag: true,
    environmentalTextPrompt: "😕 ANNOUNCEMENT — DIDN'T CATCH IT",
    sophieClueEnglishIntent: "Ask them to repeat it slowly",
    sophiePhoneticHint: "sor-ee kud yoo say that uh-gen sloh-lee",
    targetLanguageAnchor: "Sorry, could you say that again slowly?",
    slotOptions: ["say that again slowly", "repeat that please", "speak a bit slower"],
    npcAudioResponseTranscript:
        "Of course! There's a signal failure at Earl's Court — "
        "use the District line instead.",
    graffitiStyleTag: "White 'PARDON?' speech bubble chalk tag",
    npcName: "Tube Staff",
    npcAvatarEmoji: "🚇",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: Oyster top-up ────────────
  Scenario(
    scenarioId: "EN_M02_S10",
    missionId: 2,
    environmentContext:
        "Oyster card in hand. Ten pounds on it. "
        "The machine prompts. You need to add credit.",
    introFlag: false,
    environmentalTextPrompt: "💳 OYSTER — ADD CREDIT",
    sophieClueEnglishIntent: "Ask for ten pounds of credit please",
    sophiePhoneticHint: "kud eye hav ten powndz on it pleez",
    targetLanguageAnchor: "Could I have ten pounds on it, please?",
    slotOptions: ["ten pounds", "twenty pounds", "a day travelcard"],
    npcAudioResponseTranscript:
        "There you go — ten pounds loaded. Tap in at the barrier.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — Terminal cleared, London stamp",
    npcName: "Tube Staff",
    npcAvatarEmoji: "🚇",
  ),
];
