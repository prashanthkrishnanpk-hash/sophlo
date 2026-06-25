// lib/data/scenarios/german/german_m03_scenarios.dart
//
// MISSION 3: TAXI — THE TAXI — 10 SCENARIOS
// ============================================
// Location: Berlin taxi — BER to Mitte / Prenzlauer Berg
// Type: DIRECTION + TRANSACTION — Sie-form commands
// Pattern coverage:
//   PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
//   PAT_01(R3-DRILL), PAT_15(R2), PAT_12(R2), PAT_16(R4)
// Key forms: fahren Sie zu, geradeaus, links/rechts abbiegen,
//   nehmen Sie Karten, was kostet, zu teuer, eine Quittung,
//   haben Sie verstanden, halten Sie hier, danke schön

import '../../../models/models.dart';

const List<Scenario> germanM03Scenarios = [

  // ── S1: PAT_14 Rep 1 — Direction: tell driver destination
  Scenario(
    scenarioId: "DE_M03_S01",
    missionId: 3,
    environmentContext:
        "A Berlin taxi — cream coloured, spacious. "
        "The driver has a Berlin accent and already "
        "looks slightly impatient. Destination?",
    introFlag: true,
    environmentalTextPrompt: "🚕 TAXI — WOHIN?",
    sophieClueEnglishIntent: "Tell the driver where you want to go",
    sophiePhoneticHint: "fah-ren Sie bit-te zu [X]",
    targetLanguageAnchor: "Fahren Sie bitte zu [X]",
    slotOptions: ["dem Hotel am Alexanderplatz", "dem Brandenburger Tor", "dem Hauptbahnhof", "Prenzlauer Berg"],
    npcAudioResponseTranscript: "Wird gemacht. Mit Autobahn oder lieber durch die Stadt?",
    graffitiStyleTag: "Yellow 'TAXI' bold Berlin cab tag",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S2: PAT_14 Rep 2 — Direction: go straight ───────────
  Scenario(
    scenarioId: "DE_M03_S02",
    missionId: 3,
    environmentContext:
        "The driver is about to turn. Your map says "
        "straight ahead is faster — and cheaper. "
        "Speak up politely.",
    introFlag: true,
    environmentalTextPrompt: "📍 GERADEAUS BITTE",
    sophieClueEnglishIntent: "Tell the driver to go straight",
    sophiePhoneticHint: "fah-ren Sie ge-ra-de-aus",
    targetLanguageAnchor: "Fahren Sie geradeaus, bitte",
    slotOptions: ["Geradeaus bitte", "Diese Straße entlang", "Nicht abbiegen"],
    npcAudioResponseTranscript: "Okay, wie Sie möchten.",
    graffitiStyleTag: "Blue '→ GERADEAUS' road marking tag",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S3: PAT_14 Rep 3 — Direction: turn right ────────────
  Scenario(
    scenarioId: "DE_M03_S03",
    missionId: 3,
    environmentContext:
        "Almost there. Your hotel is down a side street "
        "to the right — easy to miss in Berlin's grid.",
    introFlag: false,
    environmentalTextPrompt: "↗️ RECHTS ABBIEGEN",
    sophieClueEnglishIntent: "Tell the driver to turn right",
    sophiePhoneticHint: "bie-gen Sie rechts ab",
    targetLanguageAnchor: "Biegen Sie rechts ab, bitte",
    slotOptions: ["rechts abbiegen", "links abbiegen", "an der nächsten Kreuzung"],
    npcAudioResponseTranscript: "Ja, da vorne. Sind wir gleich da.",
    graffitiStyleTag: "White '↗ RECHTS' chalk arrow — pavement",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S4: PAT_06 Rep 2 — Ask if card payment accepted ─────
  Scenario(
    scenarioId: "DE_M03_S04",
    missionId: 3,
    environmentContext:
        "Arrived. The meter reads €28.40. "
        "Cash culture in Germany is real — "
        "some taxis still don't take cards. Ask first.",
    introFlag: true,
    environmentalTextPrompt: "💳 NEHMEN SIE KARTEN?",
    sophieClueEnglishIntent: "Ask if they accept card payment",
    sophiePhoneticHint: "neh-men Sie kar-ten",
    targetLanguageAnchor: "Nehmen Sie Karten?",
    slotOptions: ["Karten", "EC-Karte", "Kreditkarte", "kontaktlos"],
    npcAudioResponseTranscript: "Ja, EC-Karte geht. Visa auch.",
    graffitiStyleTag: "Green 'EC-KARTE ✓' payment tag",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S5: PAT_04 Rep 1 — Price: how much ──────────────────
  Scenario(
    scenarioId: "DE_M03_S05",
    missionId: 3,
    environmentContext:
        "A pedicab near Museum Island. Charming. "
        "You want a short tour but before you get in, "
        "you need the price.",
    introFlag: true,
    environmentalTextPrompt: "🚲 FAHRRADTAXI — MUSEUMSINSEL",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "was kos-tet das",
    targetLanguageAnchor: "Was kostet das?",
    slotOptions: ["Was kostet das?", "Wie viel kostet es?", "Was ist der Preis?"],
    npcAudioResponseTranscript: "Eine Stunde Berlin-Tour — 25 Euro pro Person.",
    graffitiStyleTag: "Orange 'PREIS?' question tag — market style",
    npcName: "Fahrradtaxi-Fahrer",
    npcAvatarEmoji: "🚴",
  ),

  // ── S6: PAT_11 Rep 1 — Too expensive ────────────────────
  Scenario(
    scenarioId: "DE_M03_S06",
    missionId: 3,
    environmentContext:
        "25 euros per person. Two of you. That's 50. "
        "Worth trying for a small reduction.",
    introFlag: false,
    environmentalTextPrompt: "💸 ZU TEUER — RABATT?",
    sophieClueEnglishIntent: "Say it's too expensive and ask for a discount",
    sophiePhoneticHint: "das ist zu teu-er, gibt es ra-batt",
    targetLanguageAnchor: "Das ist zu teuer. Gibt es einen Rabatt?",
    slotOptions: ["Gibt es einen Rabatt?", "Etwas günstiger?", "Für zwei Personen?"],
    npcAudioResponseTranscript: "Na gut — für euch beide 40 Euro. Letztes Angebot.",
    graffitiStyleTag: "Red 'ZU TEUER!' price splatter tag",
    npcName: "Fahrradtaxi-Fahrer",
    npcAvatarEmoji: "🚴",
  ),

  // ── S7: PAT_01 Rep 3 — DRILL: ask for receipt ───────────
  Scenario(
    scenarioId: "DE_M03_S07",
    missionId: 3,
    environmentContext:
        "Tour done. Berlin looked magnificent from the saddle. "
        "You need a receipt for your records.",
    introFlag: false,
    environmentalTextPrompt: "🧾 EINE QUITTUNG BITTE",
    sophieClueEnglishIntent: "Ask for a receipt please",
    sophiePhoneticHint: "ei-ne quit-tung bit-te",
    targetLanguageAnchor: "Eine Quittung, bitte",
    slotOptions: ["Eine Quittung", "Eine Rechnung", "Den Beleg"],
    npcAudioResponseTranscript: "Klar, einen Moment. Hier ist Ihre Quittung.",
    graffitiStyleTag: "Grey 'QUITTUNG' receipt tear-off tag",
    npcName: "Fahrradtaxi-Fahrer",
    npcAvatarEmoji: "🚴",
  ),

  // ── S8: PAT_15 Rep 2 — Repair: confirm address ──────────
  Scenario(
    scenarioId: "DE_M03_S08",
    missionId: 3,
    environmentContext:
        "Back in a regular taxi. You gave the hotel name "
        "but the driver confirmed something slightly different. "
        "You need to check.",
    introFlag: true,
    environmentalTextPrompt: "😕 HABEN SIE MICH RICHTIG VERSTANDEN?",
    sophieClueEnglishIntent: "Ask if they understood you correctly",
    sophiePhoneticHint: "ha-ben Sie mich rich-tig ver-stan-den",
    targetLanguageAnchor: "Haben Sie mich richtig verstanden?",
    slotOptions: ["Richtig verstanden?", "Ist das korrekt?", "Stimmt das?"],
    npcAudioResponseTranscript: "Hotel Mitte, Friedrichstraße 42. Stimmt das?",
    graffitiStyleTag: "White 'VERSTANDEN?' confirmation bubble",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S9: PAT_12 Rep 2 — Stop here ────────────────────────
  Scenario(
    scenarioId: "DE_M03_S09",
    missionId: 3,
    environmentContext:
        "You can see the hotel entrance. "
        "The driver is about to go past it. "
        "Say it now.",
    introFlag: false,
    environmentalTextPrompt: "🛑 HALTEN SIE HIER!",
    sophieClueEnglishIntent: "Tell the driver to stop here",
    sophiePhoneticHint: "hal-ten Sie hier bit-te",
    targetLanguageAnchor: "Halten Sie hier, bitte",
    slotOptions: ["Halten Sie hier", "Hier aussteigen", "Stopp, bitte"],
    npcAudioResponseTranscript: "Jawohl! Hier rechts?",
    graffitiStyleTag: "Red 'STOP ✋' road marking tag",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),

  // ── S10: PAT_16 Rep 4 — Farewell: thank the driver ──────
  Scenario(
    scenarioId: "DE_M03_S10",
    missionId: 3,
    environmentContext:
        "Out on the pavement. Berlin evening. "
        "The TV Tower visible in the distance. "
        "The driver gives a brief nod.",
    introFlag: false,
    environmentalTextPrompt: "🌆 BERLIN — HOTEL ANGEKOMMEN",
    sophieClueEnglishIntent: "Thank the driver warmly",
    sophiePhoneticHint: "dan-ke schön, schö-nen a-bend",
    targetLanguageAnchor: "Danke schön, schönen Abend!",
    slotOptions: ["Danke schön", "Vielen Dank", "Auf Wiedersehen"],
    npcAudioResponseTranscript: "Bitte sehr! Viel Spaß in Berlin!",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berliner Taxi stamp",
    npcName: "Taxifahrer",
    npcAvatarEmoji: "🚖",
  ),
];
