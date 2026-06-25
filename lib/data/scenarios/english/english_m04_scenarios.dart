// lib/data/scenarios/english/english_m04_scenarios.dart
//
// MISSION 4: THE HOSTEL — 10 SCENARIOS
// =======================================
// Type: BOOKING + IDENTITY + NAVIGATION
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Primary words: I'd like, my name is, here is my, where is,
//   do you have, what time, I work as, one more, sorry could you,
//   could I have

import '../../../models/models.dart';

const List<Scenario> englishM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Want/need: booking ───────────────
  Scenario(
    scenarioId: "EN_M04_S01",
    missionId: 4,
    environmentContext:
        "Shoreditch hostel. Fairy lights. A mural of London Bridge. "
        "The reception desk is made from reclaimed pallets. "
        "A girl with a nose ring looks up.",
    introFlag: false,
    environmentalTextPrompt: "🏨 HOSTEL RECEPTION — CHECK IN",
    sophieClueEnglishIntent: "Say you have a booking",
    sophiePhoneticHint: "ayd like to check in, eye hav uh book-ing",
    targetLanguageAnchor: "I'd like to check in — I have a booking",
    slotOptions: ["I have a booking", "I've got a reservation", "I booked online"],
    npcAudioResponseTranscript:
        "Brilliant! Name on the booking?",
    graffitiStyleTag: "Blue 'CHECK IN' front desk stamp",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S2: PAT_05 Rep 3 — Identity: name ───────────────────
  Scenario(
    scenarioId: "EN_M04_S02",
    missionId: 4,
    environmentContext:
        "She scans the screen with one finger. "
        "Scrolling. Scrolling. You wait.",
    introFlag: false,
    environmentalTextPrompt: "📋 NAME ON THE BOOKING",
    sophieClueEnglishIntent: "Tell her your name",
    sophiePhoneticHint: "my naym is [X]",
    targetLanguageAnchor: "My name is [X]",
    slotOptions: ["James Wilson", "Priya Sharma", "Ahmed Ali", "Emma Chen"],
    npcAudioResponseTranscript:
        "Got you — six-bed dorm, three nights. Got your ID?",
    graffitiStyleTag: "White 'NAME' chalk tag — ledger style",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport ───────────────
  Scenario(
    scenarioId: "EN_M04_S03",
    missionId: 4,
    environmentContext:
        "A printed sign behind her: ID required for all guests. "
        "You've done this dance before. Passport ready.",
    introFlag: false,
    environmentalTextPrompt: "🪪 ID REQUIRED — HOSTEL RULE",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "heer is my pas-port",
    targetLanguageAnchor: "Here is my passport",
    slotOptions: ["passport", "driving licence", "ID card"],
    npcAudioResponseTranscript:
        "Cheers — I'll just take a photo. One sec.",
    graffitiStyleTag: "Orange 'ID' document stamp — hostel style",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S4: PAT_03 Rep 2 — Location: lift or room ───────────
  Scenario(
    scenarioId: "EN_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. Room four, second floor. "
        "Bag weighs a tonne. You scan the lobby for a lift.",
    introFlag: false,
    environmentalTextPrompt: "🛗 ROOM 4 — 2ND FLOOR",
    sophieClueEnglishIntent: "Ask where the lift is",
    sophiePhoneticHint: "ex-kyooz mee, wair is the lift",
    targetLanguageAnchor: "Excuse me, where is the lift?",
    slotOptions: ["the lift", "the stairs", "room four"],
    npcAudioResponseTranscript:
        "Ah — no lift, I'm afraid. Stairs are just round the corner. "
        "I can help with the bag though!",
    graffitiStyleTag: "Green '↑ STAIRS' arrow tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S5: PAT_06 Rep 3 — Yes/no: WiFi ─────────────────────
  Scenario(
    scenarioId: "EN_M04_S05",
    missionId: 4,
    environmentContext:
        "Room found. Bunk located. First priority "
        "universally agreed upon by all travellers everywhere.",
    introFlag: false,
    environmentalTextPrompt: "📶 WIFI — NEED IT NOW",
    sophieClueEnglishIntent: "Ask for the WiFi password",
    sophiePhoneticHint: "doo yoo hav wi-fy? wots the pas-werd",
    targetLanguageAnchor: "Do you have WiFi? What's the password?",
    slotOptions: ["WiFi password", "the network name", "internet access"],
    npcAudioResponseTranscript:
        "Yeah — it's ShoreditchHostel2024, all one word, "
        "capital S and H.",
    graffitiStyleTag: "Cyan '📶 WIFI' signal tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S6: PAT_10 Rep 2 — Time: breakfast ──────────────────
  Scenario(
    scenarioId: "EN_M04_S06",
    missionId: 4,
    environmentContext:
        "You haven't eaten since the plane. The smell of toast "
        "from somewhere in the building is real and taunting.",
    introFlag: false,
    environmentalTextPrompt: "🍳 BREAKFAST — WHAT TIME?",
    sophieClueEnglishIntent: "Ask what time breakfast is",
    sophiePhoneticHint: "wot tym is brek-fust",
    targetLanguageAnchor: "What time is breakfast?",
    slotOptions: ["breakfast", "checkout", "the common room open until"],
    npcAudioResponseTranscript:
        "Seven till ten — full English included in your rate. "
        "It's upstairs, left at the top.",
    graffitiStyleTag: "Yellow '🍳 BREAKFAST' morning tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S7: PAT_07 Rep 2 — Self declaration: job ────────────
  Scenario(
    scenarioId: "EN_M04_S07",
    missionId: 4,
    environmentContext:
        "She gets chatty. Asks where you're from, what you do. "
        "The queue behind you has gone. It's just conversation.",
    introFlag: false,
    environmentalTextPrompt: "💬 SMALL TALK — WHAT DO YOU DO?",
    sophieClueEnglishIntent: "Tell her what you do",
    sophiePhoneticHint: "aym uh [X]",
    targetLanguageAnchor: "I'm a [X]",
    slotOptions: ["student", "freelancer", "photographer", "teacher", "writer"],
    npcAudioResponseTranscript:
        "Oh brilliant! We get loads of creatives staying here. "
        "You'll love Shoreditch.",
    graffitiStyleTag: "Purple '💼 I AM' identity tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S8: PAT_13 Rep 1 — Quantity: extra towel ────────────
  Scenario(
    scenarioId: "EN_M04_S08",
    missionId: 4,
    environmentContext:
        "One thin towel. Barely a flannel. "
        "You're going to need more than this.",
    introFlag: true,
    environmentalTextPrompt: "🛁 ONE TOWEL — NOT ENOUGH",
    sophieClueEnglishIntent: "Ask for one more towel",
    sophiePhoneticHint: "kud eye hav wun more tau-ul pleez",
    targetLanguageAnchor: "Could I have one more towel, please?",
    slotOptions: ["towel", "blanket", "pillow", "key card"],
    npcAudioResponseTranscript:
        "Course! I'll bring one up in a mo.",
    graffitiStyleTag: "Green '+ ONE MORE' quantity tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: write it down ────────────
  Scenario(
    scenarioId: "EN_M04_S09",
    missionId: 4,
    environmentContext:
        "She rattles off checkout time, key deposit policy, "
        "kitchen rules, locker code. Your brain has left the building.",
    introFlag: false,
    environmentalTextPrompt: "📝 TOO MUCH INFO — NEED WRITTEN",
    sophieClueEnglishIntent: "Ask if she could write it down",
    sophiePhoneticHint: "sor-ee kud yoo ryt that down for mee",
    targetLanguageAnchor: "Sorry, could you write that down for me?",
    slotOptions: ["write that down", "put that in writing", "give me a note"],
    npcAudioResponseTranscript:
        "Ha — sorry, I do go on! Here — I'll give you the info card.",
    graffitiStyleTag: "White '✍️ WRITE IT' chalk repair tag",
    npcName: "Receptionist Lily",
    npcAvatarEmoji: "👩‍💼",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: extra blanket ────────────
  Scenario(
    scenarioId: "EN_M04_S10",
    missionId: 4,
    environmentContext:
        "2 AM. The window rattles. A very British cold "
        "has found its way through every gap.",
    introFlag: false,
    environmentalTextPrompt: "🥶 FREEZING — NEED BLANKET",
    sophieClueEnglishIntent: "Call reception and ask for a blanket",
    sophiePhoneticHint: "kud eye hav an ex-tra blang-kit pleez",
    targetLanguageAnchor: "Could I have an extra blanket, please?",
    slotOptions: ["blanket", "duvet", "extra bedding"],
    npcAudioResponseTranscript:
        "Oh of course — I'll bring one straight away. "
        "It is a bit nippy tonight, isn't it!",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — hostel key stamp seal",
    npcName: "Night Staff",
    npcAvatarEmoji: "👩‍💼",
  ),
];
