// lib/data/scenarios/german/german_m02_scenarios.dart
//
// MISSION 2: ANKUNFT — ARRIVAL (BER TERMINAL) — 10 SCENARIOS
// =============================================================
// Location: Berlin Brandenburg Airport BER — Immigration & Exit
// Type: FIRST REAL PRESSURE — Sie-form (formal) essential
// Pattern coverage:
//   PAT_16(R3), PAT_07(R1), PAT_05(R2), PAT_08(R1), PAT_09(R1),
//   PAT_03(R1), PAT_06(R1), PAT_10(R1), PAT_15(R1), PAT_01(R2-DRILL)
// Key forms: Guten Morgen, ich bin hier als Tourist, mein Name ist,
//   hier bitte, mein Gepäck war auf, wo ist, gibt es, wann,
//   könnten Sie das wiederholen, einen Fahrschein nach

import '../../../models/models.dart';

const List<Scenario> germanM02Scenarios = [

  // ── S1: PAT_16 Rep 3 — Formal greeting: passport control
  Scenario(
    scenarioId: "DE_M02_S01",
    missionId: 2,
    environmentContext:
        "BER Terminal 1. Passport control. Long queues. "
        "The officer stamps without looking up, "
        "then does. You meet his eyes first.",
    introFlag: true,
    environmentalTextPrompt: "🛂 PASSKONTROLLE — BER",
    sophieClueEnglishIntent: "Greet the passport officer politely",
    sophiePhoneticHint: "gu-ten mor-gen",
    targetLanguageAnchor: "Guten Morgen",
    slotOptions: ["Guten Morgen", "Guten Tag", "Hallo"],
    npcAudioResponseTranscript: "Guten Morgen. Ihren Reisepass, bitte.",
    graffitiStyleTag: "Black-red 'GUTEN MORGEN' Bauhaus stencil",
    npcName: "Bundespolizist",
    npcAvatarEmoji: "👮",
  ),

  // ── S2: PAT_07 Rep 1 — Purpose: tourism ─────────────────
  Scenario(
    scenarioId: "DE_M02_S02",
    missionId: 2,
    environmentContext:
        "He types. Pauses. Asks the key question: "
        "Reisezweck? Purpose of travel. "
        "One clear answer.",
    introFlag: true,
    environmentalTextPrompt: "📋 REISEZWECK?",
    sophieClueEnglishIntent: "Say you are here as a tourist",
    sophiePhoneticHint: "ich bin hier als tou-rist",
    targetLanguageAnchor: "Ich bin hier als Tourist",
    slotOptions: ["als Tourist", "auf Urlaub", "zur Besichtigung"],
    npcAudioResponseTranscript: "Wie lange bleiben Sie in Deutschland?",
    graffitiStyleTag: "Blue 'TOURIST' travel purpose tag",
    npcName: "Bundespolizist",
    npcAvatarEmoji: "👮",
  ),

  // ── S3: PAT_05 Rep 2 — Identity: name declaration ───────
  Scenario(
    scenarioId: "DE_M02_S03",
    missionId: 2,
    environmentContext:
        "She checks the photo. Types your name. "
        "Looks up. Asks for verbal confirmation.",
    introFlag: false,
    environmentalTextPrompt: "📋 IHR NAME, BITTE",
    sophieClueEnglishIntent: "Give your full name",
    sophiePhoneticHint: "mein na-me ist [X]",
    targetLanguageAnchor: "Mein Name ist [X]",
    slotOptions: ["Thomas Müller", "Emma Weber", "Amir Hassan", "Yuki Sato"],
    npcAudioResponseTranscript: "Danke. Alles in Ordnung — bitte weiter.",
    graffitiStyleTag: "White 'NAME' document tag — worn ink",
    npcName: "Bundespolizistin",
    npcAvatarEmoji: "👮",
  ),

  // ── S4: PAT_08 Rep 1 — Handover: passport ───────────────
  Scenario(
    scenarioId: "DE_M02_S04",
    missionId: 2,
    environmentContext:
        "Secondary check. A second booth. "
        "The officer holds out her hand. "
        "You hand over your passport.",
    introFlag: true,
    environmentalTextPrompt: "🪪 ZUSÄTZLICHE KONTROLLE",
    sophieClueEnglishIntent: "Hand over your passport and say here please",
    sophiePhoneticHint: "hier bit-te",
    targetLanguageAnchor: "Hier, bitte",
    slotOptions: ["Hier, bitte", "Bitte sehr", "Hier ist mein Pass"],
    npcAudioResponseTranscript: "Danke. Einen Moment bitte.",
    graffitiStyleTag: "Orange 'REISEPASS' document stamp",
    npcName: "Beamtin",
    npcAvatarEmoji: "💂",
  ),

  // ── S5: PAT_09 Rep 1 — Baggage: missing bag ─────────────
  Scenario(
    scenarioId: "DE_M02_S05",
    missionId: 2,
    environmentContext:
        "Baggage claim. The belt stops. "
        "Your bag isn't here. A Lufthansa ground "
        "staff member approaches with a tablet.",
    introFlag: true,
    environmentalTextPrompt: "🧳 GEPÄCKAUSGABE — KOFFER FEHLT",
    sophieClueEnglishIntent: "Say your bag was on flight [X]",
    sophiePhoneticHint: "mein ge-päck war auf flug [X]",
    targetLanguageAnchor: "Mein Gepäck war auf Flug [X]",
    slotOptions: ["LH2020", "EW9453", "FR1234", "LH1802"],
    npcAudioResponseTranscript: "Wir prüfen das sofort. Ihre Flugnummer nochmal?",
    graffitiStyleTag: "Green 'GEPÄCK' belt tag — industrial",
    npcName: "Bodenpersonal",
    npcAvatarEmoji: "🛄",
  ),

  // ── S6: PAT_03 Rep 1 — Location: where is the exit ──────
  Scenario(
    scenarioId: "DE_M02_S06",
    missionId: 2,
    environmentContext:
        "Bag in hand. BER is new but still confusing. "
        "You need the exit to reach ground transport.",
    introFlag: true,
    environmentalTextPrompt: "🚪 WO IST DER AUSGANG?",
    sophieClueEnglishIntent: "Ask where the exit is",
    sophiePhoneticHint: "wo ist der aus-gang",
    targetLanguageAnchor: "Wo ist der Ausgang?",
    slotOptions: ["der Ausgang", "die S-Bahn", "der Taxistand", "der Bus"],
    npcAudioResponseTranscript: "Geradeaus und dann links — Sie sehen es gleich.",
    graffitiStyleTag: "Cyan '→ AUSGANG' exit arrow neon",
    npcName: "Flughafenmitarbeiter",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S7: PAT_06 Rep 1 — Availability: is there an S-Bahn ─
  Scenario(
    scenarioId: "DE_M02_S07",
    missionId: 2,
    environmentContext:
        "Outside the terminal. You've heard "
        "the S-Bahn connects BER to Berlin city centre. "
        "You want to confirm it exists here.",
    introFlag: true,
    environmentalTextPrompt: "🚆 GIBT ES EINE S-BAHN?",
    sophieClueEnglishIntent: "Ask if there is an S-Bahn here",
    sophiePhoneticHint: "gibt es ei-ne S-Bahn hier",
    targetLanguageAnchor: "Gibt es eine S-Bahn hier?",
    slotOptions: ["eine S-Bahn", "einen Bus", "einen Taxistand", "einen Zug"],
    npcAudioResponseTranscript: "Ja, die S9 fährt direkt in die Innenstadt. Gleis 1.",
    graffitiStyleTag: "Yellow 'S-BAHN ✓' transit tag",
    npcName: "Auskunft",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S8: PAT_10 Rep 1 — Time: next S-Bahn ────────────────
  Scenario(
    scenarioId: "DE_M02_S08",
    missionId: 2,
    environmentContext:
        "You found the S-Bahn platform. "
        "A departure board but it's hard to read. "
        "You ask a station employee.",
    introFlag: true,
    environmentalTextPrompt: "🚆 WANN FÄHRT DIE NÄCHSTE S-BAHN?",
    sophieClueEnglishIntent: "Ask when the next S-Bahn departs",
    sophiePhoneticHint: "wann fährt die näch-ste S-Bahn",
    targetLanguageAnchor: "Wann fährt die nächste S-Bahn?",
    slotOptions: ["die nächste S-Bahn", "der nächste Zug", "der letzte Bus"],
    npcAudioResponseTranscript: "In drei Minuten, Gleis eins. Richtung Ostbahnhof.",
    graffitiStyleTag: "Purple 'S-BAHN 🕐' schedule tag",
    npcName: "Bahnmitarbeiter",
    npcAvatarEmoji: "🚆",
  ),

  // ── S9: PAT_15 Rep 1 — Repair: didn't catch platform ────
  Scenario(
    scenarioId: "DE_M02_S09",
    missionId: 2,
    environmentContext:
        "She said the platform number quickly. "
        "Was it Gleis eins or zehn? "
        "You need her to repeat.",
    introFlag: false,
    environmentalTextPrompt: "😕 KÖNNTEN SIE DAS WIEDERHOLEN?",
    sophieClueEnglishIntent: "Ask her to repeat that please",
    sophiePhoneticHint: "könn-ten Sie das wie-der-ho-len bit-te",
    targetLanguageAnchor: "Könnten Sie das wiederholen, bitte?",
    slotOptions: ["Könnten Sie das wiederholen?", "Langsamer bitte", "Ich habe das nicht verstanden"],
    npcAudioResponseTranscript: "Gleis eins. G-L-E-I-S — E-I-N-S.",
    graffitiStyleTag: "White 'NOCHMAL BITTE' repeat bubble",
    npcName: "Bahnmitarbeiter",
    npcAvatarEmoji: "🚆",
  ),

  // ── S10: PAT_01 Rep 2 — DRILL: buy ticket to Mitte ──────
  Scenario(
    scenarioId: "DE_M02_S10",
    missionId: 2,
    environmentContext:
        "At the ticket machine — it's in German. "
        "You find a staff member at the counter instead "
        "and ask for your ticket.",
    introFlag: false,
    environmentalTextPrompt: "🎫 EINEN FAHRSCHEIN NACH [X]",
    sophieClueEnglishIntent: "Ask for one ticket to [X] please",
    sophiePhoneticHint: "ei-nen fahr-schein nach [X] bit-te",
    targetLanguageAnchor: "Einen Fahrschein nach [X], bitte",
    slotOptions: ["Mitte", "Alexanderplatz", "Hauptbahnhof", "Prenzlauer Berg"],
    npcAudioResponseTranscript: "3,80 Euro bitte. Einfach oder Hin- und Rückfahrt?",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — BER Terminal cleared stamp",
    npcName: "Bahnmitarbeiter",
    npcAvatarEmoji: "🚆",
  ),
];
