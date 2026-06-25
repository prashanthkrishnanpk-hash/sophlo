// lib/data/scenarios/english/english_m09_scenarios.dart
//
// MISSION 9: LOCAL FRIEND'S HOUSE — 12 SCENARIOS
// =================================================
// Type: SOCIAL IMMERSION + REGISTER SHIFT + CULTURAL RITUAL
// Location: A terraced house in Peckham, South London
// Pattern coverage:
//   PAT_16(R6), PAT_17(R1,R2,R3), PAT_18(R1,R2,R3),
//   PAT_07(R4), PAT_03(R4), PAT_13(R4), PAT_12(R7-FINAL),
//   PAT_14(R6), PAT_19(R1,R2), PAT_20(R1), PAT_21(R1)
//
// PAT_17 English substitute: Indirect request forms
//   Direct:   "Give me a tea"
//   Indirect: "I'd love a tea if you're making one"
//             "Would you mind if I had a biscuit?"
//             "I don't suppose you have any..."
//
// PAT_18 English cultural ritual: British small talk
//   Weather opener, queue commiseration, transport complaints
//   The 'cup of tea offered immediately' ritual
//   'Can't complain / mustn't grumble' response scripts

import '../../../models/models.dart';

const List<Scenario> englishM09Scenarios = [

  // ── S1: PAT_16 Rep 6 — Informal greeting at door ────────
  Scenario(
    scenarioId: "EN_M09_S01",
    missionId: 9,
    environmentContext:
        "Peckham. A Victorian terraced house. "
        "Your contact Oliver opens the door before you "
        "can knock. Warm light. The smell of a Sunday roast.",
    introFlag: false,
    environmentalTextPrompt: "🏠 OLIVER'S DOOR — SOUTH LONDON",
    sophieClueEnglishIntent: "Greet Oliver warmly and informally",
    sophiePhoneticHint: "al-ryt ol-i-ver! luv-lee to see yoo",
    targetLanguageAnchor: "All right Oliver! Lovely to see you",
    slotOptions: ["All right!", "Hey!", "Hiya!"],
    npcAudioResponseTranscript:
        "Mate! Get in — it's absolutely freezing out there, isn't it!",
    graffitiStyleTag: "Saffron '🏠 ALL RIGHT!' warm home greeting",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S2: PAT_17 Rep 1 — Indirect request INTRO (FULL ASSIST)
  Scenario(
    scenarioId: "EN_M09_S02",
    missionId: 9,
    environmentContext:
        "His mum appears from the kitchen. "
        "She immediately offers tea. This is mandatory in Britain. "
        "Oliver gestures to you — respond politely. "
        "Note how the language becomes softer, more indirect.",
    introFlag: true,
    environmentalTextPrompt: "👩 MEET OLIVER'S MUM — INDIRECT ENGLISH",
    sophieClueEnglishIntent:
        "Accept the tea offer using indirect, polite British form",
    sophiePhoneticHint: "ayd luv wun if yoor may-king wun thank yoo so much",
    targetLanguageAnchor: "I'd love one if you're making one — thank you so much",
    slotOptions: [
      "I'd love one if you're making one",
      "That would be lovely",
      "Only if it's no trouble"
    ],
    npcAudioResponseTranscript:
        "Of course it's no trouble! Milk and sugar, love?",
    graffitiStyleTag: "Gold 'INDIRECT REQUEST' British politeness tag",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S3: PAT_18 Rep 1 — Cultural ritual INTRO: weather ───
  Scenario(
    scenarioId: "EN_M09_S03",
    missionId: 9,
    environmentContext:
        "Tea in hand. Oliver's mum sits down. "
        "There is a tradition in Britain that must be observed. "
        "All conversation begins here.",
    introFlag: true,
    environmentalTextPrompt: "🌧️ SMALL TALK RITUAL — WEATHER",
    sophieClueEnglishIntent:
        "Open with the British weather small talk ritual",
    sophiePhoneticHint: "dred-ful weth-er we-v been hav-ing iz-unt it",
    targetLanguageAnchor: "Dreadful weather we've been having, isn't it?",
    slotOptions: [
      "Dreadful weather, isn't it?",
      "Lovely day though, isn't it?",
      "Can't believe this rain"
    ],
    npcAudioResponseTranscript:
        "Oh terrible! Absolutely soaking yesterday — "
        "I don't know why I bother with the garden.",
    graffitiStyleTag: "Warm '🌧️ WEATHER TALK' British ritual tag",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S4: PAT_07 Rep 4 — Self declaration: job ────────────
  Scenario(
    scenarioId: "EN_M09_S04",
    missionId: 9,
    environmentContext:
        "She gets curious. Asks what you do, "
        "how long you're in London, "
        "whether you've seen the sights.",
    introFlag: false,
    environmentalTextPrompt: "💬 QUESTIONS — WHAT DO YOU DO?",
    sophieClueEnglishIntent: "Tell her what you do",
    sophiePhoneticHint: "aym uh [X] ak-choo-uh-lee",
    targetLanguageAnchor: "I'm a [X], actually",
    slotOptions: ["student, actually", "freelancer, actually", "photographer, actually", "teacher, actually"],
    npcAudioResponseTranscript:
        "Oh how marvellous! Oliver never tells me anything. "
        "Are you enjoying London?",
    graffitiStyleTag: "Purple '💼 I AM' identity tag — house setting",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S5: PAT_03 Rep 4 — Location: bathroom ───────────────
  Scenario(
    scenarioId: "EN_M09_S05",
    missionId: 9,
    environmentContext:
        "Long journey. Enough said. "
        "Oliver is in the kitchen. "
        "The house layout is entirely unfamiliar.",
    introFlag: false,
    environmentalTextPrompt: "🚽 URGENT — NEED THE LOO",
    sophieClueEnglishIntent: "Ask Oliver where the loo is",
    sophiePhoneticHint: "ol-i-ver wair-z the loo",
    targetLanguageAnchor: "Oliver, where's the loo?",
    slotOptions: ["the loo", "the toilet", "the bathroom"],
    npcAudioResponseTranscript:
        "Top of the stairs, second door on the left — "
        "mind the step.",
    graffitiStyleTag: "Cyan '🚽 THE LOO' location tag",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S6: PAT_13 Rep 4 — Quantity: more food ──────────────
  Scenario(
    scenarioId: "EN_M09_S06",
    missionId: 9,
    environmentContext:
        "Sunday roast. Beef, roasties, Yorkshire pudding, "
        "gravy, the works. Oliver's mum serves you first. "
        "It is extraordinary.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ SUNDAY ROAST — SERVED WITH LOVE",
    sophieClueEnglishIntent: "Ask if you could have a bit more gravy",
    sophiePhoneticHint: "wud it bee or-ful of mee to ask for uh bit more gray-vee",
    targetLanguageAnchor: "Would it be awful of me to ask for a bit more gravy?",
    slotOptions: ["a bit more gravy", "another Yorkshire pud", "some more roasties"],
    npcAudioResponseTranscript:
        "Awful? You'll have the whole jug if I have anything to say about it!",
    graffitiStyleTag: "Orange '🍽️ MORE GRAVY' generous serving tag",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S7: PAT_18 Rep 2 — Cultural ritual: transport moan ──
  Scenario(
    scenarioId: "EN_M09_S07",
    missionId: 9,
    environmentContext:
        "Oliver asks how you got here. "
        "You mention the Tube. "
        "There is only one acceptable response.",
    introFlag: false,
    environmentalTextPrompt: "🚇 TUBE CONVERSATION — COMMISERATE",
    sophieClueEnglishIntent:
        "Bond with Oliver over how dreadful the Tube was",
    sophiePhoneticHint: "dred-ful deh-layz on the nort-hern line iznt it",
    targetLanguageAnchor: "Dreadful delays on the Northern line, isn't it?",
    slotOptions: [
      "Dreadful delays, wasn't it?",
      "Absolute nightmare on the Tube",
      "Signal failures again, apparently"
    ],
    npcAudioResponseTranscript:
        "Honestly — I've given up. Thirty-five minutes at Stockwell. "
        "Quite a queue at the barriers too.",
    graffitiStyleTag: "Red '🚇 DREADFUL DELAYS' Tube complaint tag",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S8: PAT_17 Rep 2 — Indirect request: biscuit ────────
  Scenario(
    scenarioId: "EN_M09_S08",
    missionId: 9,
    environmentContext:
        "Second cup of tea. A tin of biscuits appears. "
        "You want one. In Britain this requires "
        "a very specific approach.",
    introFlag: false,
    environmentalTextPrompt: "🍪 BISCUIT TIN — WANT ONE",
    sophieClueEnglishIntent: "Ask for a biscuit using indirect British form",
    sophiePhoneticHint: "wud yoo mynd if eye had wun of those bis-kits",
    targetLanguageAnchor: "Would you mind if I had one of those biscuits?",
    slotOptions: [
      "Would you mind if I had one?",
      "I don't suppose I could have a biscuit?",
      "Only if there are enough"
    ],
    npcAudioResponseTranscript:
        "Mind?! Take the whole tin! Nobody else eats the Hobnobs.",
    graffitiStyleTag: "Blue 'WOULD YOU MIND?' indirect request tag",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S9: PAT_12 Rep 7 — FINAL REP: feeling full ──────────
  Scenario(
    scenarioId: "EN_M09_S09",
    missionId: 9,
    environmentContext:
        "Third serving offered. Roast, then pudding, "
        "then sticky toffee with custard. "
        "You are at absolute physical capacity.",
    introFlag: false,
    environmentalTextPrompt: "😴 ABSOLUTELY STUFFED — MUST DECLINE",
    sophieClueEnglishIntent: "Tell her you're absolutely stuffed",
    sophiePhoneticHint: "aym ab-suh-loot-lee stuft, thank yoo so much",
    targetLanguageAnchor: "I'm absolutely stuffed — thank you so much",
    slotOptions: ["absolutely stuffed", "completely full", "I couldn't eat another thing"],
    npcAudioResponseTranscript:
        "Are you sure? There's more custard — "
        "oh go on then, I'll put it in a box for you.",
    graffitiStyleTag: "Purple '😴 STUFFED' full state tag",
    npcName: "Oliver's Mum",
    npcAvatarEmoji: "👩",
  ),

  // ── S10: PAT_14 Rep 6 — Spatial: to the bus stop ────────
  Scenario(
    scenarioId: "EN_M09_S10",
    missionId: 9,
    environmentContext:
        "Ten-thirty. Time to leave. Oliver's street "
        "is a maze of identical terraced houses. "
        "You need the bus.",
    introFlag: false,
    environmentalTextPrompt: "🌙 LEAVING — NEED THE BUS",
    sophieClueEnglishIntent:
        "Ask Oliver to walk you to the bus stop",
    sophiePhoneticHint: "kud yoo walk mee to the bus stop",
    targetLanguageAnchor: "Could you walk me to the bus stop?",
    slotOptions: ["the bus stop", "the main road", "somewhere I can get a cab"],
    npcAudioResponseTranscript:
        "Course! It's just round the corner — three minutes. "
        "Night bus runs every twelve.",
    graffitiStyleTag: "Green '🚶 WALK ME' companion tag",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S11: PAT_17 Rep 3 — Indirect: peer conversation ─────
  Scenario(
    scenarioId: "EN_M09_S11",
    missionId: 9,
    environmentContext:
        "Walking. Just you and Oliver. "
        "Cool air, quiet street. Honest conversation.",
    introFlag: false,
    environmentalTextPrompt: "🌃 NIGHT WALK — HONEST CHAT",
    sophieClueEnglishIntent:
        "Ask Oliver what he really thinks of London",
    sophiePhoneticHint: "wot doo yoo ak-choo-uh-lee think of lun-dun",
    targetLanguageAnchor: "What do you actually think of London?",
    slotOptions: ["actually think of London", "really make of it", "honestly feel about it"],
    npcAudioResponseTranscript:
        "To be honest? It's brilliant and exhausting in equal measure. "
        "You'll either love it or it'll finish you off.",
    graffitiStyleTag: "Cyan '🌃 HONEST CHAT' night walk tag",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),

  // ── S12: PAT_18 Rep 3 — Cultural farewell ritual ────────
  Scenario(
    scenarioId: "EN_M09_S12",
    missionId: 9,
    environmentContext:
        "Bus stop. Red double-decker in the distance. "
        "Oliver's hands are in his pockets against the cold. "
        "This was a perfect London evening.",
    introFlag: false,
    environmentalTextPrompt: "🚌 BUS ARRIVING — FINAL GOODBYE",
    sophieClueEnglishIntent:
        "Thank Oliver and his mum with the proper British farewell",
    sophiePhoneticHint:
        "that wuz ab-suh-loot-lee luv-lee — please thank yoor mum for mee, cheerz",
    targetLanguageAnchor:
        "That was absolutely lovely — please thank your mum for me, cheers",
    slotOptions: ["absolutely lovely", "brilliant", "smashing"],
    npcAudioResponseTranscript:
        "Come back any time — Mum already wants to feed you again. "
        "Safe travels — and mind the gap!",
    graffitiStyleTag:
        "GOLD 'MISSION COMPLETE' — home visit stamp, warm South London ink",
    npcName: "Oliver (friend)",
    npcAvatarEmoji: "🧑",
  ),
];
