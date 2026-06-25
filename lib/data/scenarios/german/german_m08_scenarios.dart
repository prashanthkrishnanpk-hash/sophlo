// lib/data/scenarios/german/german_m08_scenarios.dart
//
// MISSION 8: RESTAURANT — DINNER — 10 SCENARIOS
// ================================================
// Location: Weinbar / Gasthaus, Berlin Prenzlauer Berg
// Type: FULL MEAL + PEAK SOCIAL FLUENCY
// Pattern coverage:
//   PAT_02(R6), PAT_06(R7), PAT_13(R4), PAT_04(R5), PAT_11(R5),
//   PAT_16(R6), PAT_10(R4), PAT_01(R7-DRILL), PAT_09(R4), PAT_12(R7)
// Key forms: ich habe reserviert, gibt es, könnten Sie bringen,
//   was kostet, ohne, Prost!, bis wann, ich hätte gerne, getrennt,
//   es war wunderbar

import '../../../models/models.dart';

const List<Scenario> germanM08Scenarios = [

  // ── S1: PAT_02 Rep 6 — Claim dinner reservation ──────────
  Scenario(
    scenarioId: "DE_M08_S01",
    missionId: 8,
    environmentContext:
        "A candlelit Weinbar in Prenzlauer Berg. "
        "Exposed brick, natural wine list, the smell "
        "of schmaltz and sourdough. The host looks up.",
    introFlag: true,
    environmentalTextPrompt: "🍷 WEINBAR — ICH HABE RESERVIERT",
    sophieClueEnglishIntent: "Say you have a reservation for two",
    sophiePhoneticHint: "ich ha-be für zwei per-so-nen re-ser-viert",
    targetLanguageAnchor: "Ich habe für zwei Personen reserviert",
    slotOptions: ["für zwei Personen", "für drei Personen", "für vier Personen"],
    npcAudioResponseTranscript: "Herzlich willkommen! Auf welchen Namen?",
    graffitiStyleTag: "Burgundy 'RESERVIERT' formal table tag",
    npcName: "Gastgeber",
    npcAvatarEmoji: "🤵",
  ),

  // ── S2: PAT_06 Rep 7 — Ask for a table outside ───────────
  Scenario(
    scenarioId: "DE_M08_S02",
    missionId: 8,
    environmentContext:
        "Warm Berlin evening. The Biergarten-style "
        "terrace looks inviting. You ask if there's space.",
    introFlag: false,
    environmentalTextPrompt: "🌙 GIBT ES NOCH EINEN TISCH DRAUSSEN?",
    sophieClueEnglishIntent: "Ask if there is a table outside",
    sophiePhoneticHint: "gibt es noch ei-nen tisch draus-sen",
    targetLanguageAnchor: "Gibt es noch einen Tisch draußen?",
    slotOptions: ["draußen", "am Fenster", "im Garten", "drinnen"],
    npcAudioResponseTranscript: "Ja, noch einer — ganz hinten links. Passt das?",
    graffitiStyleTag: "Yellow 'TERRASSE 🕯' candlelit tag",
    npcName: "Gastgeber",
    npcAvatarEmoji: "🤵",
  ),

  // ── S3: PAT_13 Rep 4 — Request: wine list please ─────────
  Scenario(
    scenarioId: "DE_M08_S03",
    missionId: 8,
    environmentContext:
        "Seated. The food menu arrives. "
        "You want the wine list first — "
        "this place is known for its Riesling selection.",
    introFlag: false,
    environmentalTextPrompt: "🍷 DIE WEINKARTE BITTE",
    sophieClueEnglishIntent: "Ask for the wine list",
    sophiePhoneticHint: "könn-ten Sie mir die wein-kar-te brin-gen",
    targetLanguageAnchor: "Könnten Sie mir die Weinkarte bringen?",
    slotOptions: ["die Weinkarte", "die Speisekarte", "das Tagesmenü"],
    npcAudioResponseTranscript: "Natürlich. Unser Riesling vom Mosel ist sehr beliebt.",
    graffitiStyleTag: "White 'WEINKARTE 🍷' wine list tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S4: PAT_04 Rep 5 — Ask price of today's special ──────
  Scenario(
    scenarioId: "DE_M08_S04",
    missionId: 8,
    environmentContext:
        "The waiter mentions the Tagesgericht — "
        "wild mushroom Schnitzel. Sounds perfect. "
        "Price?",
    introFlag: false,
    environmentalTextPrompt: "🍄 WAS KOSTET DAS TAGESGERICHT?",
    sophieClueEnglishIntent: "Ask how much the daily special costs",
    sophiePhoneticHint: "was kos-tet das ta-ges-ge-richt",
    targetLanguageAnchor: "Was kostet das Tagesgericht?",
    slotOptions: ["das Tagesgericht", "das Schnitzel", "das Menü"],
    npcAudioResponseTranscript: "17,50 Euro — mit Salat und Brot inklusive.",
    graffitiStyleTag: "Blue 'TAGESGERICHT €17.50' special tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S5: PAT_11 Rep 5 — Dietary: without onion please ─────
  Scenario(
    scenarioId: "DE_M08_S05",
    missionId: 8,
    environmentContext:
        "The Schnitzel comes with caramelised onions "
        "but you have a meeting tomorrow morning "
        "and a sensitive stomach. Can it come without?",
    introFlag: false,
    environmentalTextPrompt: "🧅 OHNE ZWIEBELN BITTE",
    sophieClueEnglishIntent: "Ask if it can be made without onions",
    sophiePhoneticHint: "könn-te ich das oh-ne zwie-beln be-kom-men",
    targetLanguageAnchor: "Könnte ich das ohne Zwiebeln bekommen?",
    slotOptions: ["ohne Zwiebeln", "ohne Knoblauch", "ohne Gluten", "ohne Sahne"],
    npcAudioResponseTranscript: "Selbstverständlich, kein Problem — ich sag's der Küche.",
    graffitiStyleTag: "White 'OHNE ZWIEBELN ✗' dietary tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S6: PAT_16 Rep 6 — Toast: Prost! ────────────────────
  Scenario(
    scenarioId: "DE_M08_S06",
    missionId: 8,
    environmentContext:
        "Wine poured. The table next to you is already "
        "mid-toast. Your companion raises their glass. "
        "Say the word.",
    introFlag: false,
    environmentalTextPrompt: "🥂 PROST! — AUF BERLIN",
    sophieClueEnglishIntent: "Toast cheers and to a good evening",
    sophiePhoneticHint: "prost! auf ei-nen schö-nen a-bend",
    targetLanguageAnchor: "Prost! Auf einen schönen Abend!",
    slotOptions: ["Prost!", "Zum Wohl!", "Auf uns!"],
    npcAudioResponseTranscript: "Prost! Und herzlich willkommen in Berlin!",
    graffitiStyleTag: "Gold '🥂 PROST!' toast tag — celebration",
    npcName: "Tischnachbar",
    npcAvatarEmoji: "😄",
  ),

  // ── S7: PAT_10 Rep 4 — Ask until what time kitchen open ──
  Scenario(
    scenarioId: "DE_M08_S07",
    missionId: 8,
    environmentContext:
        "Your friend is running 30 minutes late. "
        "It's already 9:30 PM. German restaurants "
        "sometimes have early kitchens. How long?",
    introFlag: true,
    environmentalTextPrompt: "🕙 BIS WANN HAT DIE KÜCHE GEÖFFNET?",
    sophieClueEnglishIntent: "Ask until what time the kitchen is open",
    sophiePhoneticHint: "bis wann hat die kü-che ge-öff-net",
    targetLanguageAnchor: "Bis wann hat die Küche geöffnet?",
    slotOptions: ["die Küche geöffnet?", "die Küche auf?", "man bestellen?"],
    npcAudioResponseTranscript: "Letzter Bestellung um 22 Uhr — Sie haben noch Zeit.",
    graffitiStyleTag: "Purple '🕙 KÜCHE BIS 22:00' closing tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S8: PAT_01 Rep 7 — DRILL: order dessert ─────────────
  Scenario(
    scenarioId: "DE_M08_S08",
    missionId: 8,
    environmentContext:
        "Schnitzel demolished. The dessert menu arrives. "
        "Apfelstrudel mit Vanillesauce. No debate.",
    introFlag: false,
    environmentalTextPrompt: "🍎 EINEN APFELSTRUDEL BITTE",
    sophieClueEnglishIntent: "Order the Apfelstrudel please",
    sophiePhoneticHint: "ich hät-te ger-ne ei-nen ap-fel-stru-del bit-te",
    targetLanguageAnchor: "Ich hätte gerne einen Apfelstrudel, bitte",
    slotOptions: ["einen Apfelstrudel", "ein Stück Kuchen", "eine Crème brûlée", "Käse"],
    npcAudioResponseTranscript: "Ausgezeichnete Wahl. Mit oder ohne Sahne?",
    graffitiStyleTag: "Cinnamon 'APFELSTRUDEL 🍎' dessert tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S9: PAT_09 Rep 4 — Ask to pay separately ─────────────
  Scenario(
    scenarioId: "DE_M08_S09",
    missionId: 8,
    environmentContext:
        "Bill time. Two people, one check. "
        "Getrennt zahlen is perfectly normal in Germany — "
        "no one bats an eye.",
    introFlag: false,
    environmentalTextPrompt: "🧾 GETRENNT BITTE",
    sophieClueEnglishIntent: "Ask to pay separately",
    sophiePhoneticHint: "ge-trennt bit-te",
    targetLanguageAnchor: "Getrennt, bitte",
    slotOptions: ["Getrennt bitte", "Zusammen bitte", "Ich zahle für beide"],
    npcAudioResponseTranscript: "Natürlich — zwei Rechnungen. Kein Problem.",
    graffitiStyleTag: "Grey 'GETRENNT ÷2' bill split tag",
    npcName: "Kellner",
    npcAvatarEmoji: "🧑‍🍳",
  ),

  // ── S10: PAT_12 Rep 7 — Compliment: it was wonderful ─────
  Scenario(
    scenarioId: "DE_M08_S10",
    missionId: 8,
    environmentContext:
        "Coats on. The host holds the door. "
        "A genuinely perfect evening. You tell him.",
    introFlag: false,
    environmentalTextPrompt: "⭐ ES WAR WUNDERBAR",
    sophieClueEnglishIntent: "Say everything was wonderful thank you",
    sophiePhoneticHint: "es war wun-der-bar, vie-len dank",
    targetLanguageAnchor: "Es war wunderbar, vielen Dank!",
    slotOptions: ["wunderbar", "ausgezeichnet", "köstlich"],
    npcAudioResponseTranscript: "Das freut uns sehr! Kommen Sie gern wieder!",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berliner Weinbar stamp",
    npcName: "Gastgeber",
    npcAvatarEmoji: "🤵",
  ),
];
