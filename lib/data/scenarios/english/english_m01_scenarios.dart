// lib/data/scenarios/english/english_m01_scenarios.dart
//
// MISSION 1: THE FLIGHT — 6 SCENARIOS
// =====================================
// Type: ONBOARDING — Teach the mechanic, not the language
// ALL introFlag: true — full assist throughout
// Pattern coverage:
//   PAT_16(R1,R2), PAT_05(R1), PAT_01(R1), PAT_12(R1), PAT_02(R1)
// Primary words: hello, thank you, my, seat, could I have,
//                I feel ill, I'd like

import '../../../models/models.dart';

const List<Scenario> englishM01Scenarios = [

  // ── S1: PAT_16 Rep 1 — First greeting ──────────────────
  Scenario(
    scenarioId: "EN_M01_S01",
    missionId: 1,
    environmentContext:
        "Heathrow bound. You find your row, stow your bag, "
        "and collapse into the seat. The flight attendant "
        "pauses at your aisle with a warm smile.",
    introFlag: true,
    environmentalTextPrompt: "🛫 BOARDING — HEATHROW BOUND",
    sophieClueEnglishIntent: "Greet the flight attendant",
    sophiePhoneticHint: "heh-loh",
    targetLanguageAnchor: "Hello",
    slotOptions: ["Hello", "Hi there", "Good morning"],
    npcAudioResponseTranscript:
        "Hello! Welcome aboard. First time flying with us?",
    graffitiStyleTag: "Union Jack red 'HELLO' bold street tag",
    npcName: "Sarah",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 1 — Identity possession: seat ───────
  Scenario(
    scenarioId: "EN_M01_S02",
    missionId: 1,
    environmentContext:
        "Someone is in your seat. They look up, unbothered. "
        "The boarding pass in your hand says otherwise.",
    introFlag: true,
    environmentalTextPrompt: "🎫 BOARDING PASS — SEAT [X]",
    sophieClueEnglishIntent: "Tell them your seat number",
    sophiePhoneticHint: "my seat is [X]",
    targetLanguageAnchor: "My seat is [X]",
    slotOptions: ["12A", "24B", "7C", "31F", "18D"],
    npcAudioResponseTranscript:
        "Oh! Sorry about that — let me just move my things.",
    graffitiStyleTag: "Yellow 'SEAT' neon tag — London Underground style",
    npcName: "Passenger",
    npcAvatarEmoji: "🧑",
  ),

  // ── S3: PAT_01 Rep 1 — Request imperative intro ─────────
  Scenario(
    scenarioId: "EN_M01_S03",
    missionId: 1,
    environmentContext:
        "Takeoff. Climb. The drink trolley squeaks down the aisle. "
        "The attendant looks at you expectantly.",
    introFlag: true,
    environmentalTextPrompt: "🥤 DRINK TROLLEY — [X] AVAILABLE",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "kud eye hav [X] pleez",
    targetLanguageAnchor: "Could I have [X], please?",
    slotOptions: ["water", "tea", "coffee", "orange juice", "a Coke"],
    npcAudioResponseTranscript:
        "Of course! Coming right up.",
    graffitiStyleTag: "Green 'CHEERS' drip tag — pub style",
    npcName: "James",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S4: PAT_12 Rep 1 — Medical state intro ──────────────
  Scenario(
    scenarioId: "EN_M01_S04",
    missionId: 1,
    environmentContext:
        "Turbulence over the Channel. The aircraft drops. "
        "Your stomach doesn't. The call button glows orange.",
    introFlag: true,
    environmentalTextPrompt: "😰 TURBULENCE — FEEL ILL",
    sophieClueEnglishIntent: "Tell the attendant you feel ill",
    sophiePhoneticHint: "ex-kyooz mee, eye feel il",
    targetLanguageAnchor: "Excuse me, I feel ill",
    slotOptions: ["I feel ill", "I feel sick", "I feel nauseous"],
    npcAudioResponseTranscript:
        "Oh dear! I'll be right with you — shall I fetch a bag?",
    graffitiStyleTag: "Red 'HELP' urgent splatter tag",
    npcName: "Sarah",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S5: PAT_02 Rep 1 — Want/need intro ──────────────────
  Scenario(
    scenarioId: "EN_M01_S05",
    missionId: 1,
    environmentContext:
        "Meal service. The trolley stops. Chicken or fish? "
        "The question hangs in the recycled air.",
    introFlag: true,
    environmentalTextPrompt: "🍽️ MEAL SERVICE — [X] OR [Y]?",
    sophieClueEnglishIntent: "Say you'd like [X]",
    sophiePhoneticHint: "ayd like the [X] pleez",
    targetLanguageAnchor: "I'd like the [X], please",
    slotOptions: ["chicken", "fish", "vegetarian option", "pasta"],
    npcAudioResponseTranscript:
        "Lovely choice! Enjoy your meal.",
    graffitiStyleTag: "Orange 'GRUB' bold British stamp",
    npcName: "James",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S6: PAT_16 Rep 2 — Social cluster close ─────────────
  Scenario(
    scenarioId: "EN_M01_S06",
    missionId: 1,
    environmentContext:
        "Wheels down. Heathrow. The attendant stands at the "
        "door as you file past. First words on British soil.",
    introFlag: true,
    environmentalTextPrompt: "🛬 WHEELS DOWN — HEATHROW AIRPORT",
    sophieClueEnglishIntent: "Thank her and say goodbye",
    sophiePhoneticHint: "thank yoo so much, good-by",
    targetLanguageAnchor: "Thank you so much, goodbye",
    slotOptions: ["Thank you so much", "Thanks very much", "Cheers"],
    npcAudioResponseTranscript:
        "Thank you! Enjoy your stay in London — lovely to have you!",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — ink-bleed Heathrow stamp",
    npcName: "Sarah",
    npcAvatarEmoji: "👩‍✈️",
  ),
];
