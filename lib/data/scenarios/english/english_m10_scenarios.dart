// lib/data/scenarios/english/english_m10_scenarios.dart
//
// MISSION 10: HOSTEL LOUNGE — 8 SCENARIOS — MASTER CLOSE
// =========================================================
// Type: SOCIAL CLOSURE + FINAL RETRIEVAL
// Location: Shoreditch Hostel Common Room, London
// Pattern coverage:
//   PAT_07(R5,R6), PAT_09(R5), PAT_17(R4), PAT_13(R5),
//   PAT_15(R6), PAT_18(R4), PAT_16(R7-FINAL-MASTER-CLOSE)
//
// EMOTIONAL BRIEF:
// This is the end. Ten missions across London.
// The user has survived the border, the black cab, the Tube.
// They've had a full English, bargained at Portobello,
// survived a chemist, caught a train, had Sunday roast
// at a stranger's house in Peckham.
// Mission 10 is not a test. It is a graduation.
// Every line should feel earned.

import '../../../models/models.dart';

const List<Scenario> englishM10Scenarios = [

  // ── S1: PAT_07 Rep 5 — Ask where someone is from ────────
  Scenario(
    scenarioId: "EN_M10_S01",
    missionId: 10,
    environmentContext:
        "Last night. Shoreditch hostel common room. "
        "Someone is playing guitar badly. A Japanese woman "
        "sits across from you, cradling a cup of tea. "
        "Your eyes meet.",
    introFlag: false,
    environmentalTextPrompt: "🛋️ HOSTEL LOUNGE — FINAL NIGHT",
    sophieClueEnglishIntent: "Ask where she is from",
    sophiePhoneticHint: "wair-uh-bowts ar yoo from",
    targetLanguageAnchor: "Whereabouts are you from?",
    slotOptions: ["Whereabouts are you from?", "Where are you from?", "What's your name?"],
    npcAudioResponseTranscript:
        "I'm from Tokyo — Japan. And you?",
    graffitiStyleTag: "Saffron '🌍 WHEREABOUTS?' world opener tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S2: PAT_07 Rep 6 — Give own origin ──────────────────
  Scenario(
    scenarioId: "EN_M10_S02",
    missionId: 10,
    environmentContext:
        "She answered. Your turn. "
        "Ten missions of London. "
        "This is why you learned.",
    introFlag: false,
    environmentalTextPrompt: "🌏 YOUR TURN — WHERE ARE YOU FROM?",
    sophieClueEnglishIntent: "Tell her where you are from",
    sophiePhoneticHint: "aym from [X] ak-choo-uh-lee",
    targetLanguageAnchor: "I'm from [X], actually",
    slotOptions: ["India, actually", "Australia, actually", "France, actually", "Brazil, actually"],
    npcAudioResponseTranscript:
        "Oh brilliant! How are you finding London?",
    graffitiStyleTag: "Blue '🏠 I'M FROM' origin tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S3: PAT_09 Rep 5 — Purpose destination: next stop ───
  Scenario(
    scenarioId: "EN_M10_S03",
    missionId: 10,
    environmentContext:
        "She mentions she's heading to Edinburgh next. "
        "You compare notes. Plans. Routes. "
        "The map of possible futures.",
    introFlag: false,
    environmentalTextPrompt: "✈️ NEXT DESTINATION — WHERE NEXT?",
    sophieClueEnglishIntent: "Tell her where you are going next",
    sophiePhoneticHint: "aym off to [X] next ak-choo-uh-lee",
    targetLanguageAnchor: "I'm off to [X] next, actually",
    slotOptions: ["Edinburgh, actually", "Paris, actually", "home, actually", "Amsterdam, actually"],
    npcAudioResponseTranscript:
        "Oh amazing! I've heard Edinburgh's absolutely brilliant.",
    graffitiStyleTag: "Cyan '→ OFF TO [X]' next stop tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S4: PAT_17 Rep 4 — Indirect: peer conversation ──────
  Scenario(
    scenarioId: "EN_M10_S04",
    missionId: 10,
    environmentContext:
        "Conversation deepens. A French guy named Pierre "
        "pulls up a chair. The guitar mercifully stops. "
        "Just the three of you now.",
    introFlag: false,
    environmentalTextPrompt: "💬 THREE OF YOU — CASUAL CHAT",
    sophieClueEnglishIntent:
        "Ask Pierre how long he has been travelling using indirect form",
    sophiePhoneticHint: "aym kyoo-ree-us how long yoov been trav-ul-ing",
    targetLanguageAnchor: "I'm curious — how long have you been travelling?",
    slotOptions: [
      "I'm curious — how long?",
      "I don't suppose you've been here long?",
      "How long have you been on the road?"
    ],
    npcAudioResponseTranscript:
        "Three months! Started in Morocco, came up through Spain. "
        "London is my last stop before going home.",
    graffitiStyleTag: "Purple 'I'M CURIOUS' indirect register tag",
    npcName: "Pierre (French traveller)",
    npcAvatarEmoji: "🧑‍🦱",
  ),

  // ── S5: PAT_13 Rep 5 — Quantity: one more round ─────────
  Scenario(
    scenarioId: "EN_M10_S05",
    missionId: 10,
    environmentContext:
        "Tea finished. The conversation is not. "
        "The kettle in the common room is right there. "
        "There is a ritual to observe.",
    introFlag: false,
    environmentalTextPrompt: "☕ KETTLE'S ON — ANOTHER ROUND?",
    sophieClueEnglishIntent: "Offer to make another round of teas",
    sophiePhoneticHint: "shall eye put the ket-ul on for an-uth-er rownd",
    targetLanguageAnchor: "Shall I put the kettle on for another round?",
    slotOptions: ["another round", "another cuppa", "more tea"],
    npcAudioResponseTranscript:
        "Oh yes please! Milk no sugar for me. "
        "Pierre — you are having tea, it's not optional.",
    graffitiStyleTag: "Orange '☕ KETTLE ON' British ritual tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S6: PAT_15 Rep 6 — Repair: missed name ──────────────
  Scenario(
    scenarioId: "EN_M10_S06",
    missionId: 10,
    environmentContext:
        "A fourth traveller joins. Australian. "
        "Introduces himself rapidly. "
        "You catch nothing.",
    introFlag: false,
    environmentalTextPrompt: "👋 NEW ARRIVAL — MISSED NAME",
    sophieClueEnglishIntent: "Politely say you didn't catch his name",
    sophiePhoneticHint: "sor-ee aym af-rayd eye did-unt catch yoor naym",
    targetLanguageAnchor: "Sorry — I'm afraid I didn't catch your name",
    slotOptions: ["didn't catch your name", "missed that", "didn't quite get that"],
    npcAudioResponseTranscript:
        "Ha — no worries! It's Jake. J-A-K-E. "
        "Everyone misses it the first time.",
    graffitiStyleTag: "White '😅 DIDN'T CATCH' repair tag",
    npcName: "Jake (Australian traveller)",
    npcAvatarEmoji: "🧑‍🦰",
  ),

  // ── S7: PAT_18 Rep 4 — Cultural exchange: teach them ────
  Scenario(
    scenarioId: "EN_M10_S07",
    missionId: 10,
    environmentContext:
        "Yuki asks about the small talk. She tried "
        "to talk to someone on the Tube and they looked "
        "absolutely terrified. You know why.",
    introFlag: false,
    environmentalTextPrompt: "🗣️ TEACHING BRITISH SMALL TALK",
    sophieClueEnglishIntent:
        "Explain that you never talk to strangers on the Tube",
    sophiePhoneticHint:
        "the rool is yoo nev-er talk on the Tube — but pubs and kyooz ar fine",
    targetLanguageAnchor:
        "The rule is you never talk on the Tube — but pubs and queues are fine",
    slotOptions: [
      "you never talk on the Tube",
      "the Tube is a no-talk zone",
      "silence on the Underground is sacred"
    ],
    npcAudioResponseTranscript:
        "OH! That explains everything. I thought they hated me specifically. "
        "So queues are okay? I've been doing it backwards!",
    graffitiStyleTag: "Gold '🗣️ TUBE RULE' cultural teaching tag",
    npcName: "Yuki (traveller)",
    npcAvatarEmoji: "🧳",
  ),

  // ── S8: PAT_16 Rep 7 — FINAL REP — MASTER CLOSE ─────────
  Scenario(
    scenarioId: "EN_M10_S08",
    missionId: 10,
    environmentContext:
        "1 AM. The common room empties slowly. "
        "Tomorrow you're on the early train. "
        "Yuki flies home in two days. Pierre goes back to Paris. "
        "Jake has a coach to Dublin at dawn. "
        "You all stand at the same moment — "
        "the unspoken signal that every traveller knows. "
        "This is the last moment of the course. "
        "Make it count.",
    introFlag: false,
    environmentalTextPrompt: "🌙 LAST MOMENT — FINAL GOODBYE",
    sophieClueEnglishIntent:
        "Say goodbye with the proper British warmth — "
        "it was lovely, safe travels, cheerio",
    sophiePhoneticHint:
        "it has been ab-suh-loot-lee luv-lee — safe trav-ulz the lot of yoo, cheerz",
    targetLanguageAnchor:
        "It has been absolutely lovely — safe travels, the lot of you. Cheers",
    slotOptions: ["absolutely lovely", "brilliant", "smashing"],
    npcAudioResponseTranscript:
        "Yuki: Safe travels! Mind the gap! "
        "Pierre: Au revoir — and thank you for the tea! "
        "Jake: Cheers mate — dead good meeting you! "
        "Oliver (calling from the door): Told you London wouldn't finish you off.",
    graffitiStyleTag:
        "GOLD 'SOPHLO COMPLETE' — MASTER CLOSE STAMP "
        "Full journey passport seal — all 10 missions — London ink bleed "
        "🌍 LONDON UNLOCKED",
    npcName: "Everyone",
    npcAvatarEmoji: "🌍",
  ),
];
