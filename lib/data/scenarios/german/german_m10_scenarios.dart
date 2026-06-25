// lib/data/scenarios/german/german_m10_scenarios.dart
//
// MISSION 10: ABFLUG — THE DEPARTURE — 10 SCENARIOS
// ====================================================
// Location: BER Airport Terminal — Departure Day
// Type: GRAND FINALE — all 16 patterns at peak repetition
// Pattern coverage:
//   PAT_16(R7), PAT_05(R4), PAT_02(R8), PAT_04(R6), PAT_11(R6),
//   PAT_08(R6), PAT_03(R5), PAT_10(R5), PAT_09(R5), PAT_15(R8)+PAT_07(R5)
// Key forms: Guten Morgen, mein Name ist, ich möchte aufgeben,
//   was kostet, könnten Sie, hier bitte, wo ist, wann,
//   eine Fahrt nach, könnten Sie wiederholen + ich komme aus

import '../../../models/models.dart';

const List<Scenario> germanM10Scenarios = [

  // ── S1: PAT_16 Rep 7 — Final greeting: check-in desk ─────
  Scenario(
    scenarioId: "DE_M10_S01",
    missionId: 10,
    environmentContext:
        "BER. Last morning. 5:45 AM. The check-in hall "
        "is already humming. A Lufthansa agent "
        "in a yellow vest looks up as you approach.",
    introFlag: true,
    environmentalTextPrompt: "✈️ BER — CHECK-IN",
    sophieClueEnglishIntent: "Greet the check-in agent politely",
    sophiePhoneticHint: "gu-ten mor-gen",
    targetLanguageAnchor: "Guten Morgen",
    slotOptions: ["Guten Morgen", "Guten Tag", "Hallo"],
    npcAudioResponseTranscript: "Guten Morgen! Ihren Reisepass und die Buchungsbestätigung, bitte.",
    graffitiStyleTag: "Yellow '✈ ABFLUG' Lufthansa check-in tag",
    npcName: "Lufthansa-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S2: PAT_05 Rep 4 — Identity: confirm booking name ─────
  Scenario(
    scenarioId: "DE_M10_S02",
    missionId: 10,
    environmentContext:
        "She needs your name to pull up the booking. "
        "Clear, calm, formal — Sie-form all the way.",
    introFlag: false,
    environmentalTextPrompt: "📋 IHR NAME BITTE",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "mein na-me ist [X]",
    targetLanguageAnchor: "Mein Name ist [X]",
    slotOptions: ["Jana Fischer", "Liam Schmidt", "Maria Santos", "Kai Nakamura"],
    npcAudioResponseTranscript: "Danke. Einen Moment — ich habe Sie gefunden.",
    graffitiStyleTag: "White 'NAMENSBESTÄTIGUNG' name confirm tag",
    npcName: "Lufthansa-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S3: PAT_02 Rep 8 — Request: check in one bag ──────────
  Scenario(
    scenarioId: "DE_M10_S03",
    missionId: 10,
    environmentContext:
        "One checked suitcase, one carry-on. "
        "You want to check in just the suitcase.",
    introFlag: false,
    environmentalTextPrompt: "🧳 ICH MÖCHTE MEINEN KOFFER AUFGEBEN",
    sophieClueEnglishIntent: "Say you want to check in your suitcase",
    sophiePhoneticHint: "ich möch-te mei-nen kof-fer auf-ge-ben",
    targetLanguageAnchor: "Ich möchte meinen Koffer aufgeben",
    slotOptions: ["meinen Koffer aufgeben", "mein Gepäck aufgeben", "ein Gepäckstück aufgeben"],
    npcAudioResponseTranscript: "Bitte stellen Sie den Koffer auf das Band.",
    graffitiStyleTag: "Blue 'AUFGEBEN' baggage check tag",
    npcName: "Lufthansa-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S4: PAT_04 Rep 6 — Ask overweight fee ─────────────────
  Scenario(
    scenarioId: "DE_M10_S04",
    missionId: 10,
    environmentContext:
        "25.8 kilos. Limit is 23. Overweight. "
        "The scale blinks red. She types. "
        "How much will this cost?",
    introFlag: false,
    environmentalTextPrompt: "⚖️ WAS KOSTET DAS ÜBERGEPÄCK?",
    sophieClueEnglishIntent: "Ask how much the excess baggage fee is",
    sophiePhoneticHint: "was kos-tet das über-ge-päck",
    targetLanguageAnchor: "Was kostet das Übergepäck?",
    slotOptions: ["das Übergepäck?", "der Aufpreis?", "die Zusatzgebühr?"],
    npcAudioResponseTranscript: "2,8 Kilo Übergewicht — das macht 42 Euro Aufpreis.",
    graffitiStyleTag: "Orange 'ÜBERGEPÄCK €42' fee tag",
    npcName: "Lufthansa-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S5: PAT_11 Rep 6 — Negotiate: ask for exception ──────
  Scenario(
    scenarioId: "DE_M10_S05",
    missionId: 10,
    environmentContext:
        "42 euros for 2.8 kilos. Those Mitbringsel "
        "from the Flohmarkt. Worth a polite try.",
    introFlag: false,
    environmentalTextPrompt: "🙏 KÖNNTEN SIE EIN AUGE ZUDRÜCKEN?",
    sophieClueEnglishIntent: "Ask politely if she can make an exception",
    sophiePhoneticHint: "könn-ten Sie ein au-ge zu-drü-cken",
    targetLanguageAnchor: "Könnten Sie ein Auge zudrücken?",
    slotOptions: ["ein Auge zudrücken?", "eine Ausnahme machen?", "es so lassen?"],
    npcAudioResponseTranscript: "Na gut — diesmal. Aber beim nächsten Flug bitte aufpassen.",
    graffitiStyleTag: "Pink '🙏 AUSNAHME' exception request tag",
    npcName: "Lufthansa-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S6: PAT_08 Rep 6 — Hand over boarding pass ───────────
  Scenario(
    scenarioId: "DE_M10_S06",
    missionId: 10,
    environmentContext:
        "Security. A BFE officer in a dark uniform. "
        "Boarding pass on your phone, passport ready. "
        "You hand both over.",
    introFlag: true,
    environmentalTextPrompt: "🎫 BORDKARTE UND REISEPASS",
    sophieClueEnglishIntent: "Hand over your boarding pass",
    sophiePhoneticHint: "hier bit-te, mei-ne bord-kar-te",
    targetLanguageAnchor: "Hier, bitte — meine Bordkarte",
    slotOptions: ["meine Bordkarte", "mein Pass und die Bordkarte", "hier bitte"],
    npcAudioResponseTranscript: "Danke. Laptop aus der Tasche bitte.",
    graffitiStyleTag: "Green 'BORDKARTE ✓' boarding pass stamp",
    npcName: "Sicherheitsbeamter",
    npcAvatarEmoji: "💂",
  ),

  // ── S7: PAT_03 Rep 5 — Ask where gate is ─────────────────
  Scenario(
    scenarioId: "DE_M10_S07",
    missionId: 10,
    environmentContext:
        "Security cleared. BER's departure hall is long. "
        "Your gate is B24. You ask a ground crew member.",
    introFlag: false,
    environmentalTextPrompt: "🚶 WO IST GATE B24?",
    sophieClueEnglishIntent: "Ask where gate B24 is",
    sophiePhoneticHint: "wo ist gate B24",
    targetLanguageAnchor: "Wo ist Gate B24?",
    slotOptions: ["Gate B24", "das Gate", "der Abflugbereich", "der Duty-Free"],
    npcAudioResponseTranscript: "Geradeaus bis zum Ende, dann links. Etwa 8 Minuten.",
    graffitiStyleTag: "Cyan '→ B24' departure gate tag",
    npcName: "Bodenpersonal",
    npcAvatarEmoji: "🧑‍✈️",
  ),

  // ── S8: PAT_10 Rep 5 — Ask when boarding starts ──────────
  Scenario(
    scenarioId: "DE_M10_S08",
    missionId: 10,
    environmentContext:
        "Gate B24. Rows of seats, tarmac visible. "
        "Flight is at 07:45. When does boarding begin? "
        "You ask the gate agent.",
    introFlag: false,
    environmentalTextPrompt: "⏰ WANN BEGINNT DAS BOARDING?",
    sophieClueEnglishIntent: "Ask when boarding starts",
    sophiePhoneticHint: "wann be-ginnt das boar-ding",
    targetLanguageAnchor: "Wann beginnt das Boarding?",
    slotOptions: ["das Boarding?", "das Einsteigen?", "der Abflug?"],
    npcAudioResponseTranscript: "Um 7:10 Uhr. Bitte halten Sie Ihren Pass bereit.",
    graffitiStyleTag: "Purple '⏰ BOARDING 07:10' time tag",
    npcName: "Gate-Mitarbeiterin",
    npcAvatarEmoji: "👩‍✈️",
  ),

  // ── S9: PAT_09 Rep 5 — Ask for window seat on board ──────
  Scenario(
    scenarioId: "DE_M10_S09",
    missionId: 10,
    environmentContext:
        "Boarding. The cabin crew greets you. "
        "Your allocated seat is a middle seat. "
        "You ask about window seats.",
    introFlag: false,
    environmentalTextPrompt: "🪟 GIBT ES NOCH EINEN FENSTERPLATZ?",
    sophieClueEnglishIntent: "Ask if there is a window seat available",
    sophiePhoneticHint: "gibt es noch ei-nen fens-ter-platz",
    targetLanguageAnchor: "Gibt es noch einen Fensterplatz?",
    slotOptions: ["einen Fensterplatz", "einen Gangplatz", "einen Platz vorne"],
    npcAudioResponseTranscript: "Ja, 22A ist frei. Gute Sicht auf Berlin beim Start!",
    graffitiStyleTag: "Sky '🪟 FENSTERPLATZ 22A' window tag",
    npcName: "Flugbegleiterin",
    npcAvatarEmoji: "✈️",
  ),

  // ── S10: PAT_15 Rep 8 + PAT_07 Rep 5 — Final repair + origin farewell
  Scenario(
    scenarioId: "DE_M10_S10",
    missionId: 10,
    environmentContext:
        "Cruising altitude. The flight attendant from "
        "earlier passes with drinks. She asks if this "
        "was your first time in Germany and where you're from. "
        "Last conversation of the entire arc.",
    introFlag: false,
    environmentalTextPrompt: "🌍 LETZTE UNTERHALTUNG — TSCHÜSS, BERLIN",
    sophieClueEnglishIntent: "Say you're from [X] and Berlin was wonderful",
    sophiePhoneticHint: "ich kom-me aus [X], Ber-lin war wun-der-bar",
    targetLanguageAnchor: "Ich komme aus [X]. Berlin war wunderbar!",
    slotOptions: ["Ich möchte wiederkommen", "Es war die beste Reise", "Ich lerne weiter Deutsch"],
    npcAudioResponseTranscript: "Das freut mich sehr! Berlin freut sich auf Ihren nächsten Besuch!",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT — BERLIN-ARC KOMPLETT' Grand Finale stamp",
    npcName: "Flugbegleiterin",
    npcAvatarEmoji: "✈️",
  ),
];
