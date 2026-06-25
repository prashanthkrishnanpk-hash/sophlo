// lib/data/scenarios/english/english_m05_scenarios.dart
//
// MISSION 5: THE CAFÉ — 10 SCENARIOS
// =====================================
// Type: ORDERING + DIETARY + COMPLAINTS + PAYMENT
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)

import '../../../models/models.dart';

const List<Scenario> englishM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Yes/no: table free ───────────────
  Scenario(
    scenarioId: "EN_M05_S01",
    missionId: 5,
    environmentContext:
        "Borough Market café. Exposed brick. Every table "
        "packed with laptops and flat whites. You scan the room.",
    introFlag: false,
    environmentalTextPrompt: "☕ CAFÉ — NEED A TABLE",
    sophieClueEnglishIntent: "Ask if there is a free table",
    sophiePhoneticHint: "doo yoo hav uh tay-bul for wun",
    targetLanguageAnchor: "Do you have a table for one?",
    slotOptions: ["a table for one", "any space", "a seat"],
    npcAudioResponseTranscript:
        "We do — there's one at the back by the window. Follow me.",
    graffitiStyleTag: "Saffron 'TABLE?' coffee cup tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S2: PAT_02 Rep 3 — Want/need: order food ────────────
  Scenario(
    scenarioId: "EN_M05_S02",
    missionId: 5,
    environmentContext:
        "Menu is a chalkboard. Everything sounds brilliant. "
        "The full English in the corner calls to you.",
    introFlag: false,
    environmentalTextPrompt: "📋 MENU — ORDER THE LOCAL CLASSIC",
    sophieClueEnglishIntent: "Say you'd like the full English",
    sophiePhoneticHint: "ayd like the [X] pleez",
    targetLanguageAnchor: "I'd like the [X], please",
    slotOptions: ["full English", "beans on toast", "eggs on toast", "a bacon sandwich"],
    npcAudioResponseTranscript:
        "Full English — sorted. Brown sauce or ketchup?",
    graffitiStyleTag: "Orange '🍳 ORDER' local food tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — Request: drink ───────────────────
  Scenario(
    scenarioId: "EN_M05_S03",
    missionId: 5,
    environmentContext:
        "He's hovering, pad in hand. The eternal question "
        "in a British café: what are you having to drink?",
    introFlag: false,
    environmentalTextPrompt: "🥤 DRINKS ORDER",
    sophieClueEnglishIntent: "Order [X] to drink",
    sophiePhoneticHint: "kud eye hav [X] pleez",
    targetLanguageAnchor: "Could I have [X], please?",
    slotOptions: ["a tea", "a coffee", "tap water", "a pint", "a flat white"],
    npcAudioResponseTranscript:
        "Coming right up. Milk and sugar?",
    graffitiStyleTag: "Blue '☕ DRINKS' order tag — steam rising",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Medical: allergy ─────────────────
  Scenario(
    scenarioId: "EN_M05_S04",
    missionId: 5,
    environmentContext:
        "He's walking away. Wait — you just remembered. "
        "The baked beans contain something you need to ask about.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ ALLERGY — STOP HIM",
    sophieClueEnglishIntent: "Tell him you're allergic to gluten",
    sophiePhoneticHint: "ak-choo-uh-lee aym al-er-jik to gloo-ten",
    targetLanguageAnchor: "Actually, I'm allergic to gluten",
    slotOptions: ["gluten", "dairy", "nuts", "eggs"],
    npcAudioResponseTranscript:
        "Oh brilliant you said something — the bread has gluten. "
        "I'll swap it for the GF version, no problem.",
    graffitiStyleTag: "Red '⚠️ ALLERGY' warning tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Price question: dessert ──────────
  Scenario(
    scenarioId: "EN_M05_S05",
    missionId: 5,
    environmentContext:
        "Sticky toffee pudding. The chalkboard. No price listed. "
        "This is the moment of truth.",
    introFlag: false,
    environmentalTextPrompt: "🍮 DESSERT — NO PRICE LISTED",
    sophieClueEnglishIntent: "Ask how much the sticky toffee pudding is",
    sophiePhoneticHint: "how much is the stik-ee tof-ee pood-ing",
    targetLanguageAnchor: "How much is the sticky toffee pudding?",
    slotOptions: ["the sticky toffee pudding", "that dessert", "the pudding"],
    npcAudioResponseTranscript:
        "Six fifty — comes with custard or clotted cream.",
    graffitiStyleTag: "Green '£ HOW MUCH' price tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_13 Rep 2 — Quantity: less milk ──────────────
  Scenario(
    scenarioId: "EN_M05_S06",
    missionId: 5,
    environmentContext:
        "Tea arrives. More milk than tea. Classic British pour. "
        "You prefer it stronger.",
    introFlag: false,
    environmentalTextPrompt: "🍵 TEA — TOO MUCH MILK",
    sophieClueEnglishIntent: "Ask for a bit less milk next time",
    sophiePhoneticHint: "kud eye hav uh bit less milk next tym",
    targetLanguageAnchor: "Could I have a bit less milk next time?",
    slotOptions: ["a bit less milk", "it a bit stronger", "no milk"],
    npcAudioResponseTranscript:
        "Sorry about that — let me make you a fresh one.",
    graffitiStyleTag: "Orange '🍵 LESS MILK' milk tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S7: PAT_11 Rep 2 — Negation: wrong order ────────────
  Scenario(
    scenarioId: "EN_M05_S07",
    missionId: 5,
    environmentContext:
        "Plate arrives. This is definitely not a full English. "
        "This is eggs benedict. Beautiful but wrong.",
    introFlag: false,
    environmentalTextPrompt: "❌ WRONG ORDER",
    sophieClueEnglishIntent: "Say this isn't what you ordered",
    sophiePhoneticHint: "aym af-rayd this iznt wot eye or-derd",
    targetLanguageAnchor: "I'm afraid this isn't what I ordered",
    slotOptions: ["isn't what I ordered", "is the wrong dish", "isn't mine"],
    npcAudioResponseTranscript:
        "Oh gosh — so sorry! That's table seven's. "
        "Yours is coming right now.",
    graffitiStyleTag: "Red '❌ WRONG' order tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Purpose: takeaway box ────────────
  Scenario(
    scenarioId: "EN_M05_S08",
    missionId: 5,
    environmentContext:
        "Brilliant breakfast but enormous. Half a full English "
        "remains. You can't bear to leave it.",
    introFlag: false,
    environmentalTextPrompt: "📦 LEFTOVER — TAKEAWAY BOX",
    sophieClueEnglishIntent: "Ask for a box to take it away",
    sophiePhoneticHint: "kud eye hav uh box to tayk this uh-way",
    targetLanguageAnchor: "Could I have a box to take this away?",
    slotOptions: ["take this away", "take away the leftovers", "box this up"],
    npcAudioResponseTranscript:
        "Course! Can't waste a good full English.",
    graffitiStyleTag: "Purple '📦 TAKEAWAY' box tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: I'm vegetarian ────────────
  Scenario(
    scenarioId: "EN_M05_S09",
    missionId: 5,
    environmentContext:
        "Dessert menu. He recommends the pie. "
        "You need to clarify before committing.",
    introFlag: false,
    environmentalTextPrompt: "🥗 DIETARY — VEGETARIAN",
    sophieClueEnglishIntent: "Tell him you're vegetarian",
    sophiePhoneticHint: "aym vej-i-tair-ee-un",
    targetLanguageAnchor: "I'm vegetarian",
    slotOptions: ["vegetarian", "vegan", "pescatarian"],
    npcAudioResponseTranscript:
        "Brilliant — the crumble is fully veg, as is the sticky toffee. "
        "Both certified, if you need the cards.",
    graffitiStyleTag: "Green '🌿 VEGETARIAN' leaf tag",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S10: PAT_16 Rep 5 — Social: thank + compliment ──────
  Scenario(
    scenarioId: "EN_M05_S10",
    missionId: 5,
    environmentContext:
        "Bill paid. That was a proper London breakfast. "
        "Tom stacks your plates. You catch his eye.",
    introFlag: false,
    environmentalTextPrompt: "😊 LEAVING — EXPRESS THANKS",
    sophieClueEnglishIntent: "Thank him and say it was lovely",
    sophiePhoneticHint: "cheerz, that wuz ab-suh-loot-lee luv-lee",
    targetLanguageAnchor: "Cheers, that was absolutely lovely",
    slotOptions: ["absolutely lovely", "brilliant", "cracking"],
    npcAudioResponseTranscript:
        "Cheers! Come back tomorrow — we do a brilliant Sunday roast.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — café receipt seal, coffee stain",
    npcName: "Barista Tom",
    npcAvatarEmoji: "🧑‍🍳",
  ),
];
