// lib/data/scenarios/english/english_m08_scenarios.dart
//
// MISSION 8: KING'S CROSS STATION — 10 SCENARIOS
// =================================================
// Type: TRANSPORT + NAVIGATION + TIMING
// Location: King's Cross St Pancras, London
// Pattern coverage:
//   PAT_09(R4), PAT_02(R6), PAT_05(R4), PAT_03(R3), PAT_10(R4),
//   PAT_06(R7-FINAL), PAT_04(R5), PAT_14(R5), PAT_11(R5), PAT_08(R5)
// Cultural notes:
//   - British rail: say 'return' not 'round trip', 'standard' not 'economy'
//   - 'Mind the gap' is a cultural touchstone
//   - Signal failures and delays are genuinely expected

import '../../../models/models.dart';

const List<Scenario> englishM08Scenarios = [

  // ── S1: PAT_09 Rep 4 — Purpose destination: ticket ──────
  Scenario(
    scenarioId: "EN_M08_S01",
    missionId: 8,
    environmentContext:
        "King's Cross. Victorian red brick meets "
        "a soaring steel-and-glass arch. "
        "You need Edinburgh. Platform three.",
    introFlag: false,
    environmentalTextPrompt: "🚆 KING'S CROSS — TICKET OFFICE",
    sophieClueEnglishIntent: "Ask for a return ticket to Edinburgh",
    sophiePhoneticHint: "kud eye hav uh re-turn to [X] pleez",
    targetLanguageAnchor: "Could I have a return to [X], please?",
    slotOptions: ["Edinburgh", "Manchester", "York", "Cambridge", "Leeds"],
    npcAudioResponseTranscript:
        "Return to Edinburgh — when are you travelling?",
    graffitiStyleTag: "Saffron '🚆 RETURN TICKET' railway arch tag",
    npcName: "Ticket Clerk",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S2: PAT_02 Rep 6 — Want/need: class ─────────────────
  Scenario(
    scenarioId: "EN_M08_S02",
    missionId: 8,
    environmentContext:
        "She asks first or standard class. "
        "Four-hour journey. You weigh it up.",
    introFlag: false,
    environmentalTextPrompt: "🪑 CHOOSE CLASS",
    sophieClueEnglishIntent: "Say you'd like standard class",
    sophiePhoneticHint: "ayd like stan-derd klass pleez",
    targetLanguageAnchor: "I'd like standard class, please",
    slotOptions: ["standard class", "first class", "any class"],
    npcAudioResponseTranscript:
        "Standard return — off-peak or anytime?",
    graffitiStyleTag: "Blue '🪑 STANDARD' class tag",
    npcName: "Ticket Clerk",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S3: PAT_05 Rep 4 — Identity: seat number ────────────
  Scenario(
    scenarioId: "EN_M08_S03",
    missionId: 8,
    environmentContext:
        "Ticket in hand. Seat 34C, Coach D. "
        "You find Coach D. Someone is very comfortably "
        "occupying your reserved seat.",
    introFlag: false,
    environmentalTextPrompt: "🪑 YOUR RESERVED SEAT — TAKEN",
    sophieClueEnglishIntent: "Tell them your seat is 34C",
    sophiePhoneticHint: "aym af-rayd my seat is thir-tee-for see",
    targetLanguageAnchor: "I'm afraid my seat is thirty-four C",
    slotOptions: ["thirty-four C", "thirty-two A", "forty-one B"],
    npcAudioResponseTranscript:
        "Oh gosh — sorry! I thought this was unreserved. "
        "Let me move straight away.",
    graffitiStyleTag: "Orange '🪑 MY SEAT' reservation tag",
    npcName: "Passenger",
    npcAvatarEmoji: "🧑",
  ),

  // ── S4: PAT_03 Rep 3 — Location: platform ───────────────
  Scenario(
    scenarioId: "EN_M08_S04",
    missionId: 8,
    environmentContext:
        "Departure board. Platform three. "
        "But King's Cross is enormous and you've "
        "come through the wrong entrance.",
    introFlag: false,
    environmentalTextPrompt: "🚉 FIND PLATFORM 3",
    sophieClueEnglishIntent: "Ask where platform three is",
    sophiePhoneticHint: "ex-kyooz mee, wair is plat-form three",
    targetLanguageAnchor: "Excuse me, where is platform three?",
    slotOptions: ["platform three", "the departure boards", "the main concourse"],
    npcAudioResponseTranscript:
        "Straight ahead past the Costa, then left — "
        "can't miss it.",
    graffitiStyleTag: "Green 'PLATFORM 3→' direction tag",
    npcName: "Station Staff",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_10 Rep 4 — Time: departure time ─────────────
  Scenario(
    scenarioId: "EN_M08_S05",
    missionId: 8,
    environmentContext:
        "Platform three. Three trains visible. "
        "You check the board. It's not clear "
        "which one is yours.",
    introFlag: false,
    environmentalTextPrompt: "⏰ WHICH TRAIN — WHAT TIME?",
    sophieClueEnglishIntent: "Ask what time the Edinburgh train leaves",
    sophiePhoneticHint: "wot tym duz the Ed-in-bruh train leev",
    targetLanguageAnchor: "What time does the Edinburgh train leave?",
    slotOptions: ["the Edinburgh train", "my train", "the next train north"],
    npcAudioResponseTranscript:
        "Fourteen-oh-five — that's the one on platform three. "
        "About twelve minutes.",
    graffitiStyleTag: "Purple '⏰ DEPARTURE' clock tag",
    npcName: "Station Staff",
    npcAvatarEmoji: "💂",
  ),

  // ── S6: PAT_06 Rep 7 — FINAL REP: right train? ──────────
  Scenario(
    scenarioId: "EN_M08_S06",
    missionId: 8,
    environmentContext:
        "Train pulls in. You ask the conductor "
        "before stepping aboard. "
        "Wrong train to Edinburgh is a very long mistake.",
    introFlag: false,
    environmentalTextPrompt: "🚂 IS THIS THE EDINBURGH TRAIN?",
    sophieClueEnglishIntent: "Ask if this is the Edinburgh train",
    sophiePhoneticHint: "iz this the Ed-in-bruh train",
    targetLanguageAnchor: "Is this the Edinburgh train?",
    slotOptions: ["the Edinburgh train", "the right train", "the correct service"],
    npcAudioResponseTranscript:
        "It is indeed! Calling at Peterborough, York, "
        "Newcastle, and Edinburgh Waverley. Mind the gap.",
    graffitiStyleTag: "Cyan '✅ CORRECT TRAIN' confirm tag",
    npcName: "Conductor",
    npcAvatarEmoji: "👨‍✈️",
  ),

  // ── S7: PAT_04 Rep 5 — Price: upgrade cost ──────────────
  Scenario(
    scenarioId: "EN_M08_S07",
    missionId: 8,
    environmentContext:
        "On board. The first class carriage as you pass "
        "looks considerably nicer. The conductor is nearby.",
    introFlag: false,
    environmentalTextPrompt: "💺 FIRST CLASS — UPGRADE COST?",
    sophieClueEnglishIntent: "Ask how much an upgrade to first class would be",
    sophiePhoneticHint: "how much wud an up-grayd to ferst klass cost",
    targetLanguageAnchor: "How much would an upgrade to first class cost?",
    slotOptions: ["first class", "a better seat", "the quiet coach"],
    npcAudioResponseTranscript:
        "Thirty-five pounds for today — includes complimentary tea "
        "and biscuits if you're interested.",
    graffitiStyleTag: "Yellow '£ UPGRADE' first class tag",
    npcName: "Conductor",
    npcAvatarEmoji: "👨‍✈️",
  ),

  // ── S8: PAT_14 Rep 5 — Spatial: which direction ─────────
  Scenario(
    scenarioId: "EN_M08_S08",
    missionId: 8,
    environmentContext:
        "You took the upgrade. Coach A. "
        "But the train is long and you're standing "
        "somewhere in the middle with your bag.",
    introFlag: false,
    environmentalTextPrompt: "🚃 COACH A — WHICH DIRECTION?",
    sophieClueEnglishIntent: "Ask which way Coach A is",
    sophiePhoneticHint: "kud yoo tell mee witch way Coach A is",
    targetLanguageAnchor: "Could you tell me which way Coach A is?",
    slotOptions: ["Coach A", "first class", "the front of the train"],
    npcAudioResponseTranscript:
        "Walk towards the front — it's about six carriages up. "
        "There's a trolley coming through if you want to wait.",
    graffitiStyleTag: "Green '→ COACH A' direction tag",
    npcName: "Conductor",
    npcAvatarEmoji: "👨‍✈️",
  ),

  // ── S9: PAT_11 Rep 5 — Negation: ticket not scanning ────
  Scenario(
    scenarioId: "EN_M08_S09",
    missionId: 8,
    environmentContext:
        "The conductor does ticket checks. "
        "Your phone app. QR code. Red. "
        "Three times. Always red.",
    introFlag: false,
    environmentalTextPrompt: "❌ TICKET — NOT SCANNING",
    sophieClueEnglishIntent: "Tell the conductor the ticket isn't scanning",
    sophiePhoneticHint: "aym af-rayd my tik-it iznt scan-ing",
    targetLanguageAnchor: "I'm afraid my ticket isn't scanning",
    slotOptions: ["isn't scanning", "won't work", "isn't loading"],
    npcAudioResponseTranscript:
        "Not to worry — happens all the time with the app. "
        "Can I see your booking reference?",
    graffitiStyleTag: "Red '❌ NOT SCANNING' error tag",
    npcName: "Conductor",
    npcAvatarEmoji: "👨‍✈️",
  ),

  // ── S10: PAT_08 Rep 5 — Handover: booking reference ─────
  Scenario(
    scenarioId: "EN_M08_S10",
    missionId: 8,
    environmentContext:
        "Reference number. Six digits on the confirmation "
        "email. You scroll through your phone and find it.",
    introFlag: false,
    environmentalTextPrompt: "🎫 SHOW BOOKING REFERENCE",
    sophieClueEnglishIntent: "Show your booking reference",
    sophiePhoneticHint: "heer is my book-ing ref-er-ens",
    targetLanguageAnchor: "Here is my booking reference",
    slotOptions: ["booking reference", "confirmation email", "ticket number"],
    npcAudioResponseTranscript:
        "Brilliant — sorted. Enjoy the journey. "
        "We arrive at Edinburgh Waverley at eighteen-oh-three.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — railway stamp, King's Cross arch",
    npcName: "Conductor",
    npcAvatarEmoji: "👨‍✈️",
  ),
];
