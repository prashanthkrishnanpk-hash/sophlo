// lib/data/scenarios/german/german_m05_scenarios.dart
//
// MISSION 5: CAFÉ & BÄCKEREI — CAFÉ & BAKERY — 10 SCENARIOS
// ============================================================
// Location: Café Kranzler / local Bäckerei, Berlin Mitte
// Type: FOOD + SOCIAL — daily Berlin rhythm
// Pattern coverage:
//   PAT_06(R4), PAT_02(R3), PAT_01(R5), PAT_12(R3), PAT_04(R2),
//   PAT_13(R2), PAT_11(R2), PAT_09(R2), PAT_07(R3-DRILL), PAT_16(R5)
// Key forms: ist dieser Platz frei, ich hätte gerne, bitte,
//   die Rechnung, was kostet, könnten Sie, ohne, vegetarisch,
//   zum Mitnehmen, woher kommen Sie, auf Wiedersehen

import '../../../models/models.dart';

const List<Scenario> germanM05Scenarios = [

  // ── S1: PAT_06 Rep 4 — Ask if this seat is free ─────────
  Scenario(
    scenarioId: "DE_M05_S01",
    missionId: 5,
    environmentContext:
        "A Berlin café on a Sunday morning. "
        "Every table taken except one chair "
        "next to a woman reading Der Spiegel.",
    introFlag: true,
    environmentalTextPrompt: "☕ CAFÉ — IST DIESER PLATZ FREI?",
    sophieClueEnglishIntent: "Ask if this seat is free",
    sophiePhoneticHint: "ist die-ser platz frei",
    targetLanguageAnchor: "Ist dieser Platz frei?",
    slotOptions: ["dieser Platz", "dieser Stuhl", "dieser Tisch"],
    npcAudioResponseTranscript: "Ja, bitte. Der ist frei.",
    graffitiStyleTag: "Yellow 'FREI' open seat tag — café minimal",
    npcName: "Frau mit Zeitung",
    npcAvatarEmoji: "📰",
  ),

  // ── S2: PAT_02 Rep 3 — Order coffee ─────────────────────
  Scenario(
    scenarioId: "DE_M05_S02",
    missionId: 5,
    environmentContext:
        "The waiter arrives. No notepad — just memory. "
        "The menu is a chalkboard. "
        "You know what you want.",
    introFlag: true,
    environmentalTextPrompt: "☕ KELLNER — BESTELLEN",
    sophieClueEnglishIntent: "Order a coffee please",
    sophiePhoneticHint: "ich hät-te ger-ne ei-nen kaf-fee bit-te",
    targetLanguageAnchor: "Ich hätte gerne einen Kaffee, bitte",
    slotOptions: ["einen Kaffee", "einen Cappuccino", "einen Latte", "einen Espresso"],
    npcAudioResponseTranscript: "Gerne. Mit Milch?",
    graffitiStyleTag: "Brown 'KAFFEE' barista tag — ceramic style",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S3: PAT_01 Rep 5 — DRILL: order a pastry ────────────
  Scenario(
    scenarioId: "DE_M05_S03",
    missionId: 5,
    environmentContext:
        "The pastry display is magnificent — "
        "Buttercroissant, Nussschnecke, Berliner. "
        "You point and ask.",
    introFlag: false,
    environmentalTextPrompt: "🥐 EINEN [X] BITTE",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "ei-nen [X] bit-te",
    targetLanguageAnchor: "Einen [X], bitte",
    slotOptions: ["Berliner", "Croissant", "Nussschnecke", "Mohnkuchen"],
    npcAudioResponseTranscript: "Sehr gut, frisch von heute Morgen.",
    graffitiStyleTag: "Orange 'BERLINER 🍩' bakery tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_12 Rep 3 — Ask for the bill ─────────────────
  Scenario(
    scenarioId: "DE_M05_S04",
    missionId: 5,
    environmentContext:
        "Coffee finished, pastry gone. "
        "You need to be at the museum in 20 minutes. "
        "The waiter is across the room.",
    introFlag: false,
    environmentalTextPrompt: "🧾 DIE RECHNUNG BITTE",
    sophieClueEnglishIntent: "Ask for the bill",
    sophiePhoneticHint: "die rech-nung bit-te",
    targetLanguageAnchor: "Die Rechnung, bitte",
    slotOptions: ["Die Rechnung", "Zahlen bitte", "Ich möchte zahlen"],
    npcAudioResponseTranscript: "Sofort. Das macht 5,80 Euro.",
    graffitiStyleTag: "Grey 'RECHNUNG' receipt tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_04 Rep 2 — Ask price of cake slice ───────────
  Scenario(
    scenarioId: "DE_M05_S05",
    missionId: 5,
    environmentContext:
        "A Konditorei near Hackescher Markt. "
        "Schwarzwälder Kirschtorte under glass. "
        "No price label. You ask the woman behind the counter.",
    introFlag: true,
    environmentalTextPrompt: "🎂 WAS KOSTET EIN STÜCK KUCHEN?",
    sophieClueEnglishIntent: "Ask how much a slice of cake costs",
    sophiePhoneticHint: "was kos-tet ein stück ku-chen",
    targetLanguageAnchor: "Was kostet ein Stück Kuchen?",
    slotOptions: ["ein Stück Kuchen", "die Torte", "das hier"],
    npcAudioResponseTranscript: "3,50 Euro. Mit Sahne noch einen Euro mehr.",
    graffitiStyleTag: "Pink 'KUCHEN €3.50' price tag — Konditorei",
    npcName: "Verkäuferin",
    npcAvatarEmoji: "👩‍🍳",
  ),

  // ── S6: PAT_13 Rep 2 — Ask for more bread ───────────────
  Scenario(
    scenarioId: "DE_M05_S06",
    missionId: 5,
    environmentContext:
        "Lunch at a simple Gasthaus. "
        "The bread basket is empty and the soup "
        "is still coming. You need more.",
    introFlag: true,
    environmentalTextPrompt: "🍞 NOCH ETWAS BROT BITTE",
    sophieClueEnglishIntent: "Ask for a little more bread",
    sophiePhoneticHint: "könn-ten Sie noch etwas brot brin-gen",
    targetLanguageAnchor: "Könnten Sie noch etwas Brot bringen?",
    slotOptions: ["Brot", "Wasser", "Butter", "Servietten"],
    npcAudioResponseTranscript: "Natürlich, kommt sofort.",
    graffitiStyleTag: "Wheat 'BROT +1' request tag — Gasthaus",
    npcName: "Kellnerin",
    npcAvatarEmoji: "👩‍🍳",
  ),

  // ── S7: PAT_11 Rep 2 — Dietary: no meat please ───────────
  Scenario(
    scenarioId: "DE_M05_S07",
    missionId: 5,
    environmentContext:
        "The Tagesmenü looks great but "
        "everything is meat. Germany has improved "
        "for vegetarians but you still need to ask.",
    introFlag: true,
    environmentalTextPrompt: "🥗 ICH BIN VEGETARIER",
    sophieClueEnglishIntent: "Say you are vegetarian",
    sophiePhoneticHint: "ich bin ve-ge-ta-ri-er/in",
    targetLanguageAnchor: "Ich bin Vegetarier/in",
    slotOptions: ["Vegetarier/in", "Veganer/in", "Ich esse kein Fleisch"],
    npcAudioResponseTranscript: "Kein Problem. Wir haben einen vegetarischen Flammkuchen.",
    graffitiStyleTag: "Green 'VEGETARISCH ✓' dietary tag",
    npcName: "Kellnerin",
    npcAvatarEmoji: "👩‍🍳",
  ),

  // ── S8: PAT_09 Rep 2 — Order takeaway ───────────────────
  Scenario(
    scenarioId: "DE_M05_S08",
    missionId: 5,
    environmentContext:
        "A Bäckerei near the Reichstag. "
        "You want a Laugenbrezel to eat "
        "walking around Tiergarten.",
    introFlag: true,
    environmentalTextPrompt: "🥨 ZUM MITNEHMEN",
    sophieClueEnglishIntent: "Order [X] to take away",
    sophiePhoneticHint: "ei-ne [X] zum mit-neh-men bit-te",
    targetLanguageAnchor: "Eine [X] zum Mitnehmen, bitte",
    slotOptions: ["Laugenbrezel", "Käsestulle", "Schrippe", "Nussschnecke"],
    npcAudioResponseTranscript: "Gerne. Soll ich sie einpacken?",
    graffitiStyleTag: "Tan 'ZUM MITNEHMEN' takeaway tag — paper bag",
    npcName: "Bäckereifachverkäuferin",
    npcAvatarEmoji: "🥖",
  ),

  // ── S9: PAT_07 Rep 3 — DRILL: ask where they're from ────
  Scenario(
    scenarioId: "DE_M05_S09",
    missionId: 5,
    environmentContext:
        "The baker has been chatting. She has a strong "
        "Saxon accent — definitely not Berlin. You're curious.",
    introFlag: false,
    environmentalTextPrompt: "🌍 WOHER KOMMEN SIE?",
    sophieClueEnglishIntent: "Ask where she is from",
    sophiePhoneticHint: "wo-her kom-men Sie",
    targetLanguageAnchor: "Woher kommen Sie?",
    slotOptions: ["Woher kommen Sie?", "Sind Sie aus Berlin?", "Woher sind Sie?"],
    npcAudioResponseTranscript: "Aus Leipzig! Aber ich bin schon zehn Jahre in Berlin.",
    graffitiStyleTag: "Orange 'AUS LEIPZIG' origin tag — travel sticker",
    npcName: "Bäckereifachverkäuferin",
    npcAvatarEmoji: "🥖",
  ),

  // ── S10: PAT_16 Rep 5 — Warm social farewell ─────────────
  Scenario(
    scenarioId: "DE_M05_S10",
    missionId: 5,
    environmentContext:
        "A good five minutes of Brezel and chat. "
        "Queue building. Time to go — "
        "warm Berlin goodbye.",
    introFlag: false,
    environmentalTextPrompt: "👋 TSCHÜSS — AUF WIEDERSEHEN",
    sophieClueEnglishIntent: "Say it was nice talking and goodbye",
    sophiePhoneticHint: "schön mit Ih-nen ge-re-det, tschüss",
    targetLanguageAnchor: "Schön mit Ihnen geredet! Tschüss!",
    slotOptions: ["Tschüss!", "Auf Wiedersehen!", "Schönen Tag noch!"],
    npcAudioResponseTranscript: "Tschüss! Kommen Sie wieder!",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berliner Bäckerei stamp",
    npcName: "Bäckereifachverkäuferin",
    npcAvatarEmoji: "🥖",
  ),
];
