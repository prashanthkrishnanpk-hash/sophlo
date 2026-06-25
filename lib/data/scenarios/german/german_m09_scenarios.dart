// lib/data/scenarios/german/german_m09_scenarios.dart
//
// MISSION 9: UNTERWEGS — GETTING AROUND BERLIN — 10 SCENARIOS
// ==============================================================
// Location: U-Bahn / S-Bahn / Tram / Street, Berlin
// Type: NAVIGATION + TRANSIT — Berlin's complex network
// Pattern coverage:
//   PAT_03(R3,R4), PAT_14(R5,R6), PAT_10(R4), PAT_13(R5),
//   PAT_06(R7), PAT_09(R4), PAT_15(R7), PAT_02(R7), PAT_12(R8), PAT_01(R8)
// Key forms: wo ist, ich möchte nach, wann, könnten Sie,
//   gibt es, eine Fahrt nach, wie bitte, ich möchte,
//   ich habe mich verirrt, bitte

import '../../../models/models.dart';

const List<Scenario> germanM09Scenarios = [

  // ── S1: PAT_03 Rep 3 — Location: where is the U-Bahn ────
  Scenario(
    scenarioId: "DE_M09_S01",
    missionId: 9,
    environmentContext:
        "Out of the hotel. You need Alexanderplatz. "
        "Berlin's U-Bahn entrances can be subtle — "
        "a yellow U on a blue sign, easy to miss.",
    introFlag: true,
    environmentalTextPrompt: "🚇 WO IST DIE U-BAHN?",
    sophieClueEnglishIntent: "Ask where the U-Bahn station is",
    sophiePhoneticHint: "wo ist die U-Bahn-sta-tion",
    targetLanguageAnchor: "Wo ist die U-Bahn-Station?",
    slotOptions: ["die U-Bahn-Station", "der Bahnhof", "die S-Bahn", "die Straßenbahn"],
    npcAudioResponseTranscript: "Da drüben, die Treppe runter. Das U-Zeichen sehen Sie gleich.",
    graffitiStyleTag: "Blue 'U' Berlin U-Bahn tag — iconic style",
    npcName: "Passant",
    npcAvatarEmoji: "🚶",
  ),

  // ── S2: PAT_14 Rep 5 — Direction: I want to go to [X] ───
  Scenario(
    scenarioId: "DE_M09_S02",
    missionId: 9,
    environmentContext:
        "At the U-Bahn information booth. "
        "You need to get to Museum Island — Museumsinsel. "
        "Which line?",
    introFlag: true,
    environmentalTextPrompt: "🚆 ICH MÖCHTE ZUR MUSEUMSINSEL",
    sophieClueEnglishIntent: "Say you want to go to [X]",
    sophiePhoneticHint: "ich möch-te zur [X]",
    targetLanguageAnchor: "Ich möchte zur [X]",
    slotOptions: ["Museumsinsel", "Brandenburger Tor", "Mauerpark", "East Side Gallery"],
    npcAudioResponseTranscript: "U2 bis Stadtmitte, dann zu Fuß — zehn Minuten.",
    graffitiStyleTag: "Green 'U2 → MUSEUMSINSEL' platform tag",
    npcName: "BVG-Mitarbeiter",
    npcAvatarEmoji: "🚇",
  ),

  // ── S3: PAT_10 Rep 4 — Ask time of last U-Bahn ───────────
  Scenario(
    scenarioId: "DE_M09_S03",
    missionId: 9,
    environmentContext:
        "Midnight in Neukölln. Long night. "
        "The U-Bahn runs through the night on weekends "
        "but you need to confirm this isn't a weeknight.",
    introFlag: true,
    environmentalTextPrompt: "🌙 WANN FÄHRT DIE LETZTE U-BAHN?",
    sophieClueEnglishIntent: "Ask when the last U-Bahn is",
    sophiePhoneticHint: "wann fährt die letz-te U-Bahn",
    targetLanguageAnchor: "Wann fährt die letzte U-Bahn?",
    slotOptions: ["die letzte U-Bahn", "der letzte Zug", "der nächste Bus"],
    npcAudioResponseTranscript: "Heute ist Freitag — die fährt die ganze Nacht. Kein Problem!",
    graffitiStyleTag: "Purple '🌙 NACHTLINIE ✓' night service tag",
    npcName: "Fahrgast",
    npcAvatarEmoji: "🧑‍🦱",
  ),

  // ── S4: PAT_13 Rep 5 — Ask staff to validate ticket ──────
  Scenario(
    scenarioId: "DE_M09_S04",
    missionId: 9,
    environmentContext:
        "You bought a paper ticket but forgot to "
        "stamp it in the Entwerter. Controllers are "
        "notorious in Berlin. You find a staff member.",
    introFlag: true,
    environmentalTextPrompt: "🎫 ICH MUSS MEINEN FAHRSCHEIN ENTWERTEN",
    sophieClueEnglishIntent: "Say you need to validate your ticket",
    sophiePhoneticHint: "ich muss mei-nen fahr-schein ent-wer-ten",
    targetLanguageAnchor: "Ich muss meinen Fahrschein entwerten",
    slotOptions: ["entwerten", "stempeln", "validieren"],
    npcAudioResponseTranscript: "Der Entwerter ist gleich da drüben — das orangefarbene Gerät.",
    graffitiStyleTag: "Orange 'ENTWERTEN ✓' ticket stamp tag",
    npcName: "BVG-Mitarbeiterin",
    npcAvatarEmoji: "🎫",
  ),

  // ── S5: PAT_03 Rep 4 — Location: where is the tram stop ──
  Scenario(
    scenarioId: "DE_M09_S05",
    missionId: 9,
    environmentContext:
        "You want to take the M10 tram to Eberswalder Straße. "
        "Trams only exist in East Berlin — "
        "you need to find the stop.",
    introFlag: true,
    environmentalTextPrompt: "🚃 WO IST DIE STRASSENBAHN-HALTESTELLE?",
    sophieClueEnglishIntent: "Ask where the tram stop is",
    sophiePhoneticHint: "wo ist die Stra-ßen-bahn-hal-te-stel-le",
    targetLanguageAnchor: "Wo ist die Straßenbahn-Haltestelle?",
    slotOptions: ["die Straßenbahn-Haltestelle", "die Bushaltestelle", "der Taxistand"],
    npcAudioResponseTranscript: "Gleich an der Ecke. M10 kommt alle fünf Minuten.",
    graffitiStyleTag: "Red 'M10 🚃' tram stop tag — Berlin East",
    npcName: "Passantin",
    npcAvatarEmoji: "👩",
  ),

  // ── S6: PAT_09 Rep 4 — Ask for return ticket ─────────────
  Scenario(
    scenarioId: "DE_M09_S06",
    missionId: 9,
    environmentContext:
        "Day trip to Potsdam — Sanssouci Palace. "
        "At Berlin Hauptbahnhof, you buy your ticket. "
        "Return, obviously.",
    introFlag: true,
    environmentalTextPrompt: "🎫 NACH POTSDAM — HIN UND ZURÜCK",
    sophieClueEnglishIntent: "Ask for a return ticket to Potsdam",
    sophiePhoneticHint: "ei-ne rück-fahr-kar-te nach pots-dam bit-te",
    targetLanguageAnchor: "Eine Rückfahrkarte nach Potsdam, bitte",
    slotOptions: ["eine Rückfahrkarte", "eine einfache Fahrt", "ein Tagesticket"],
    npcAudioResponseTranscript: "8,40 Euro. Mit dem RE1 — Gleis 14, fährt in 12 Minuten.",
    graffitiStyleTag: "Green 'HIN & ZURÜCK ✓' return ticket tag",
    npcName: "Schaltermitarbeiterin",
    npcAvatarEmoji: "🎫",
  ),

  // ── S7: PAT_14 Rep 6 — Lost: emergency direction ─────────
  Scenario(
    scenarioId: "DE_M09_S07",
    missionId: 9,
    environmentContext:
        "Potsdam Park. Enormous. You've wandered off "
        "the main path and can't find the palace. "
        "A jogger passes.",
    introFlag: true,
    environmentalTextPrompt: "🆘 ICH HABE MICH VERIRRT",
    sophieClueEnglishIntent: "Say you are lost",
    sophiePhoneticHint: "ich ha-be mich ver-irrt",
    targetLanguageAnchor: "Ich habe mich verirrt",
    slotOptions: ["Ich habe mich verirrt", "Ich bin verloren", "Ich finde mich nicht zurecht"],
    npcAudioResponseTranscript: "Kein Problem! Sanssouci ist da hinten — dem Weg folgen.",
    graffitiStyleTag: "Red 'VERIRRT SOS' emergency tag",
    npcName: "Jogger",
    npcAvatarEmoji: "🏃",
  ),

  // ── S8: PAT_02 Rep 7 — Buy day ticket ────────────────────
  Scenario(
    scenarioId: "DE_M09_S08",
    missionId: 9,
    environmentContext:
        "Back in Berlin. You've been buying single tickets "
        "all day. A Tageskarte would have been cheaper. "
        "You buy one for tomorrow.",
    introFlag: true,
    environmentalTextPrompt: "🎫 ICH MÖCHTE EINE TAGESKARTE",
    sophieClueEnglishIntent: "Say you want a day ticket",
    sophiePhoneticHint: "ich möch-te ei-ne ta-ges-kar-te",
    targetLanguageAnchor: "Ich möchte eine Tageskarte",
    slotOptions: ["eine Tageskarte", "eine Wochenkarte", "ein 7-Tage-Ticket"],
    npcAudioResponseTranscript: "AB Bereich? 9,50 Euro. Gilt ab sofort bis Betriebsschluss.",
    graffitiStyleTag: "Yellow 'TAGESKARTE ✓' day pass tag",
    npcName: "Fahrkartenautomat-Assistent",
    npcAvatarEmoji: "🚇",
  ),

  // ── S9: PAT_15 Rep 7 — Repair: wrong platform? ───────────
  Scenario(
    scenarioId: "DE_M09_S09",
    missionId: 9,
    environmentContext:
        "Platform 3. You think. But the display shows "
        "Spandau not Mitte. Either wrong platform "
        "or wrong line. You ask the person next to you.",
    introFlag: false,
    environmentalTextPrompt: "😕 BIN ICH AUF DEM RICHTIGEN GLEIS?",
    sophieClueEnglishIntent: "Ask if you are on the right platform",
    sophiePhoneticHint: "bin ich auf dem rich-ti-gen gleis",
    targetLanguageAnchor: "Bin ich auf dem richtigen Gleis?",
    slotOptions: ["dem richtigen Gleis?", "dem richtigen Bahnsteig?", "hier für Mitte?"],
    npcAudioResponseTranscript: "Nein, Mitte ist Gleis 1 — gegenüber. Schnell, der fährt gleich!",
    graffitiStyleTag: "White 'RICHTIGES GLEIS?' confirm bubble",
    npcName: "Mitfahrerin",
    npcAvatarEmoji: "👩",
  ),

  // ── S10: PAT_01 Rep 8 — DRILL: ask for transit map ───────
  Scenario(
    scenarioId: "DE_M09_S10",
    missionId: 9,
    environmentContext:
        "Back at the station. The app drained your battery. "
        "You want a paper BVG network map. "
        "The service point has them.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ EINEN NETZPLAN BITTE",
    sophieClueEnglishIntent: "Ask for a transit map please",
    sophiePhoneticHint: "ei-nen netz-plan bit-te",
    targetLanguageAnchor: "Einen Netzplan, bitte",
    slotOptions: ["einen Netzplan", "einen U-Bahn-Plan", "eine Karte vom BVG-Netz"],
    npcAudioResponseTranscript: "Hier! Auf der Rückseite sind die Nachtlinien.",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berliner Verkehr stamp",
    npcName: "BVG-Mitarbeiterin",
    npcAvatarEmoji: "🚇",
  ),
];
