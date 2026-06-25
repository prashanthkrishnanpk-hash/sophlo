// lib/data/scenarios/german/german_m04_scenarios.dart
//
// MISSION 4: HOTEL — THE HOTEL — 10 SCENARIOS
// ==============================================
// Location: Hotel in Berlin Mitte / Prenzlauer Berg
// Type: ACCOMMODATION + SERVICE — Sie-form throughout
// Pattern coverage:
//   PAT_02(R2), PAT_05(R3), PAT_08(R2), PAT_03(R2), PAT_06(R3),
//   PAT_10(R2), PAT_07(R2), PAT_13(R1), PAT_15(R3), PAT_01(R4-DRILL)
// Key forms: ich habe eine Reservierung, mein Name ist, hier bitte,
//   wo ist, gibt es, wann, ich komme aus, könnten Sie,
//   könnten Sie das wiederholen, ein [NOUN] bitte

import '../../../models/models.dart';

const List<Scenario> germanM04Scenarios = [

  // ── S1: PAT_02 Rep 2 — Claim reservation ────────────────
  Scenario(
    scenarioId: "DE_M04_S01",
    missionId: 4,
    environmentContext:
        "Hotel reception. Understated Berlin design — "
        "concrete walls, warm lighting, a plant the size "
        "of a tree. The receptionist looks up.",
    introFlag: true,
    environmentalTextPrompt: "🏨 REZEPTION — CHECK-IN",
    sophieClueEnglishIntent: "Say you have a reservation",
    sophiePhoneticHint: "ich ha-be ei-ne re-ser-vie-rung",
    targetLanguageAnchor: "Ich habe eine Reservierung",
    slotOptions: ["eine Reservierung", "ein Zimmer gebucht", "eine Buchung"],
    npcAudioResponseTranscript: "Willkommen! Auf welchen Namen bitte?",
    graffitiStyleTag: "Gold 'RESERVIERUNG' booking tag — hotel minimal",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S2: PAT_05 Rep 3 — Give name for reservation ────────
  Scenario(
    scenarioId: "DE_M04_S02",
    missionId: 4,
    environmentContext:
        "He's scrolling through bookings on a slim tablet. "
        "Lots of names. He needs yours.",
    introFlag: false,
    environmentalTextPrompt: "📋 AUF WELCHEN NAMEN?",
    sophieClueEnglishIntent: "Give your name",
    sophiePhoneticHint: "mein na-me ist [X]",
    targetLanguageAnchor: "Mein Name ist [X]",
    slotOptions: ["Jana Fischer", "Liam Schmidt", "Maria Santos", "Kai Nakamura"],
    npcAudioResponseTranscript: "Ja, hier — Einzelzimmer, zwei Nächte. Stimmt das?",
    graffitiStyleTag: "White 'NAME' chalk tag — reception desk",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S3: PAT_08 Rep 2 — Handover: passport ───────────────
  Scenario(
    scenarioId: "DE_M04_S03",
    missionId: 4,
    environmentContext:
        "German hotels require passport registration "
        "for non-EU guests. He asks. You hand it over.",
    introFlag: false,
    environmentalTextPrompt: "🪪 REISEPASS BITTE",
    sophieClueEnglishIntent: "Hand over your passport",
    sophiePhoneticHint: "hier bit-te",
    targetLanguageAnchor: "Hier, bitte",
    slotOptions: ["Hier, bitte", "Bitte sehr", "Mein Pass"],
    npcAudioResponseTranscript: "Danke. Ich mache kurz eine Kopie.",
    graffitiStyleTag: "Orange 'PASS ✓' registration stamp",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S4: PAT_03 Rep 2 — Location: where is the room ──────
  Scenario(
    scenarioId: "DE_M04_S04",
    missionId: 4,
    environmentContext:
        "Key card in hand. The hotel has two wings "
        "and an unmarked lift. You need directions.",
    introFlag: false,
    environmentalTextPrompt: "🗝️ WO IST MEIN ZIMMER?",
    sophieClueEnglishIntent: "Ask where your room is",
    sophiePhoneticHint: "wo ist mein zim-mer",
    targetLanguageAnchor: "Wo ist mein Zimmer?",
    slotOptions: ["mein Zimmer", "der Fahrstuhl", "das Frühstück", "die Bar"],
    npcAudioResponseTranscript: "Dritter Stock, linker Gang. Zimmer 304.",
    graffitiStyleTag: "Cyan '→ ZI. 304' room direction tag",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S5: PAT_06 Rep 3 — Ask if WiFi available ────────────
  Scenario(
    scenarioId: "DE_M04_S05",
    missionId: 4,
    environmentContext:
        "You need to send emails. German hotel WiFi "
        "can be patchy — better to confirm and get "
        "the password upfront.",
    introFlag: false,
    environmentalTextPrompt: "📶 GIBT ES WLAN?",
    sophieClueEnglishIntent: "Ask if there is WiFi",
    sophiePhoneticHint: "gibt es wlan hier",
    targetLanguageAnchor: "Gibt es WLAN hier?",
    slotOptions: ["WLAN", "kostenloses WLAN", "Internet"],
    npcAudioResponseTranscript: "Ja, kostenlos. Das Passwort ist: Berlin2024.",
    graffitiStyleTag: "Blue 'WLAN ✓' network tag",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S6: PAT_10 Rep 2 — Ask what time breakfast is ───────
  Scenario(
    scenarioId: "DE_M04_S06",
    missionId: 4,
    environmentContext:
        "German hotel breakfast is an institution. "
        "Cold cuts, bread, cheese, eggs, cake. "
        "You need to know the hours.",
    introFlag: true,
    environmentalTextPrompt: "🥐 WANN GIBT ES FRÜHSTÜCK?",
    sophieClueEnglishIntent: "Ask when breakfast is",
    sophiePhoneticHint: "wann gibt es früh-stück",
    targetLanguageAnchor: "Wann gibt es Frühstück?",
    slotOptions: ["Frühstück", "Abendessen", "Check-out"],
    npcAudioResponseTranscript: "Von sieben bis zehn Uhr. Buffet im Erdgeschoss.",
    graffitiStyleTag: "Yellow 'FRÜHSTÜCK 7-10' morning tag",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S7: PAT_07 Rep 2 — Tell concierge where you're from ─
  Scenario(
    scenarioId: "DE_M04_S07",
    missionId: 4,
    environmentContext:
        "A friendly concierge asks where you're from "
        "as she helps with a city map. Genuinely curious.",
    introFlag: true,
    environmentalTextPrompt: "🌍 WOHER KOMMEN SIE?",
    sophieClueEnglishIntent: "Say where you are from",
    sophiePhoneticHint: "ich kom-me aus [X]",
    targetLanguageAnchor: "Ich komme aus [X]",
    slotOptions: ["Italien", "Frankreich", "Indien", "Brasilien", "Japan"],
    npcAudioResponseTranscript: "Oh schön! Ihr erstes Mal in Berlin?",
    graffitiStyleTag: "Green 'AUS [X]' origin tag — passport style",
    npcName: "Concierge",
    npcAvatarEmoji: "🛎️",
  ),

  // ── S8: PAT_13 Rep 1 — Request: extra pillow ────────────
  Scenario(
    scenarioId: "DE_M04_S08",
    missionId: 4,
    environmentContext:
        "Your room has one thin pillow. "
        "You call the front desk.",
    introFlag: false,
    environmentalTextPrompt: "📞 NOCH EIN KISSEN BITTE",
    sophieClueEnglishIntent: "Ask for an extra pillow please",
    sophiePhoneticHint: "könn-ten Sie mir noch ein kis-sen brin-gen",
    targetLanguageAnchor: "Könnten Sie mir noch ein Kissen bringen?",
    slotOptions: ["ein Kissen", "eine Decke", "ein Handtuch", "Toilettenpapier"],
    npcAudioResponseTranscript: "Selbstverständlich. Wir bringen es sofort hoch.",
    graffitiStyleTag: "Teal 'KISSEN +1' service request tag",
    npcName: "Rezeption",
    npcAvatarEmoji: "📞",
  ),

  // ── S9: PAT_15 Rep 3 — Repair: missed checkout time ─────
  Scenario(
    scenarioId: "DE_M04_S09",
    missionId: 4,
    environmentContext:
        "Reception is busy. Someone told you checkout "
        "but you missed the time. Was it elf or zwölf?",
    introFlag: false,
    environmentalTextPrompt: "🕙 CHECK-OUT UM ELF, RICHTIG?",
    sophieClueEnglishIntent: "Confirm checkout is at eleven",
    sophiePhoneticHint: "check-out ist um elf uhr, rich-tig",
    targetLanguageAnchor: "Check-out ist um elf Uhr, richtig?",
    slotOptions: ["um elf Uhr?", "um zwölf Uhr?", "wann genau?"],
    npcAudioResponseTranscript: "Ja, um elf Uhr. Sie können das Gepäck gern dalassen.",
    graffitiStyleTag: "White 'UM ELF ✓' checkout confirm bubble",
    npcName: "Rezeptionist",
    npcAvatarEmoji: "🧑‍💼",
  ),

  // ── S10: PAT_01 Rep 4 — DRILL: ask for city map ─────────
  Scenario(
    scenarioId: "DE_M04_S10",
    missionId: 4,
    environmentContext:
        "Ready to explore Berlin. The concierge desk "
        "has a rack of neighbourhood maps. "
        "You want the Mitte map.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ EINEN STADTPLAN BITTE",
    sophieClueEnglishIntent: "Ask for a city map please",
    sophiePhoneticHint: "ei-nen stadt-plan bit-te",
    targetLanguageAnchor: "Einen Stadtplan, bitte",
    slotOptions: ["einen Stadtplan", "eine Karte von Berlin", "einen U-Bahn-Plan"],
    npcAudioResponseTranscript: "Hier! Und ich hab schon meine Lieblingstipps markiert.",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berlin Hotel cleared stamp",
    npcName: "Concierge",
    npcAvatarEmoji: "🛎️",
  ),
];
