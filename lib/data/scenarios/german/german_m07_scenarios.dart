// lib/data/scenarios/german/german_m07_scenarios.dart
//
// MISSION 7: APOTHEKE — PHARMACY — 10 SCENARIOS
// ================================================
// Location: Apotheke, Berlin Mitte (open late)
// Type: HEALTH + URGENCY — survival-critical vocabulary
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Key forms: ich habe Kopfschmerzen, ich habe Fieber,
//   ich bin allergisch gegen, haben Sie, was kostet,
//   wie oft, ich hätte gerne, hier bitte, vor oder nach dem Essen

import '../../../models/models.dart';

const List<Scenario> germanM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Symptom: headache ────────────────
  Scenario(
    scenarioId: "DE_M07_S01",
    missionId: 7,
    environmentContext:
        "A Berlin Apotheke — green cross glowing. "
        "The pharmacist in a white coat "
        "looks up from behind the counter.",
    introFlag: true,
    environmentalTextPrompt: "💊 APOTHEKE — ABENDS",
    sophieClueEnglishIntent: "Say you have a headache",
    sophiePhoneticHint: "ich ha-be kopf-schmer-zen",
    targetLanguageAnchor: "Ich habe Kopfschmerzen",
    slotOptions: ["Kopfschmerzen", "Bauchschmerzen", "Halsschmerzen", "Rückenschmerzen"],
    npcAudioResponseTranscript: "Seit wann? Haben Sie auch Fieber?",
    graffitiStyleTag: "White 'APOTHEKE' green cross tag",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Symptom: fever ───────────────────
  Scenario(
    scenarioId: "DE_M07_S02",
    missionId: 7,
    environmentContext:
        "She asked about fever. Yes — 38.3°. "
        "Hot and cold since this afternoon.",
    introFlag: false,
    environmentalTextPrompt: "🌡️ ICH HABE FIEBER",
    sophieClueEnglishIntent: "Say you have a fever",
    sophiePhoneticHint: "ich ha-be fie-ber",
    targetLanguageAnchor: "Ich habe Fieber",
    slotOptions: ["Fieber", "Schüttelfrost", "Übelkeit", "Schwindel"],
    npcAudioResponseTranscript: "38,3 — nicht kritisch. Ich empfehle ein Fiebermittel.",
    graffitiStyleTag: "Red '38.3°C' thermometer tag — clinical",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_02 Rep 5 — Request specific medicine ─────────
  Scenario(
    scenarioId: "DE_M07_S03",
    missionId: 7,
    environmentContext:
        "You know what works for you at home. "
        "You ask for the German equivalent by active ingredient.",
    introFlag: false,
    environmentalTextPrompt: "💊 ICH HÄTTE GERNE [X]",
    sophieClueEnglishIntent: "Ask for [X] please",
    sophiePhoneticHint: "ich hät-te ger-ne [X]",
    targetLanguageAnchor: "Ich hätte gerne [X]",
    slotOptions: ["Ibuprofen", "Paracetamol", "ein Antihistaminikum", "Hustensaft"],
    npcAudioResponseTranscript: "Natürlich. Welche Stärke — 400 oder 600 mg?",
    graffitiStyleTag: "Blue 'IBUPROFEN' pill tag — blister pack",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_04 Rep 4 — Ask how much it costs ─────────────
  Scenario(
    scenarioId: "DE_M07_S04",
    missionId: 7,
    environmentContext:
        "She places two boxes on the counter. "
        "No health insurance cover here for tourists. "
        "You need the cost before nodding.",
    introFlag: false,
    environmentalTextPrompt: "💶 WAS KOSTET DAS?",
    sophieClueEnglishIntent: "Ask how much it costs",
    sophiePhoneticHint: "was kos-tet das",
    targetLanguageAnchor: "Was kostet das?",
    slotOptions: ["Was kostet das?", "Wie viel macht das?", "Haben Sie etwas Günstigeres?"],
    npcAudioResponseTranscript: "Das Ibuprofen 4,95 Euro, der Hustensaft 6,20 Euro.",
    graffitiStyleTag: "Orange 'PREIS' cost tag — Apotheke receipt",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_10 Rep 3 — Ask how often to take it ──────────
  Scenario(
    scenarioId: "DE_M07_S05",
    missionId: 7,
    environmentContext:
        "She's putting it in a paper bag. "
        "You need the dosage before she closes it.",
    introFlag: false,
    environmentalTextPrompt: "🕐 WIE OFT SOLL ICH ES NEHMEN?",
    sophieClueEnglishIntent: "Ask how often to take it",
    sophiePhoneticHint: "wie oft soll ich es neh-men",
    targetLanguageAnchor: "Wie oft soll ich es nehmen?",
    slotOptions: ["Wie oft?", "Wie viele am Tag?", "Alle wie viele Stunden?"],
    npcAudioResponseTranscript: "Dreimal täglich, maximal. Immer nach dem Essen.",
    graffitiStyleTag: "Purple '3× TÄGLICH' dosage tag — prescription",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_11 Rep 4 — Allergy declaration ───────────────
  Scenario(
    scenarioId: "DE_M07_S06",
    missionId: 7,
    environmentContext:
        "She mentioned aspirin. "
        "You're allergic. Flag it now.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ ICH BIN ALLERGISCH GEGEN ASPIRIN",
    sophieClueEnglishIntent: "Say you are allergic to aspirin",
    sophiePhoneticHint: "ich bin al-ler-gisch ge-gen as-pi-rin",
    targetLanguageAnchor: "Ich bin allergisch gegen Aspirin",
    slotOptions: ["Aspirin", "Penicillin", "Latex", "Codein"],
    npcAudioResponseTranscript: "Gut, dass Sie das sagen. Das hier enthält kein Aspirin.",
    graffitiStyleTag: "Red '⚠ ALLERGISCH' warning tag",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_06 Rep 6 — Ask if they have sunscreen ────────
  Scenario(
    scenarioId: "DE_M07_S07",
    missionId: 7,
    environmentContext:
        "While here — the Berlin summer sun "
        "caught you off guard at the Spreeufer. "
        "German pharmacy sunscreens are excellent.",
    introFlag: true,
    environmentalTextPrompt: "☀️ HABEN SIE SONNENCREME?",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "ha-ben Sie son-nen-creme",
    targetLanguageAnchor: "Haben Sie Sonnencreme?",
    slotOptions: ["Sonnencreme", "Sonnenschutz LSF 50", "After-Sun"],
    npcAudioResponseTranscript: "Ja, hier drüben. Eucerin LSF 50+ ist sehr beliebt.",
    graffitiStyleTag: "Yellow 'LSF 50+ ☀' sun tag",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_08 Rep 4 — DRILL: hand over prescription ─────
  Scenario(
    scenarioId: "DE_M07_S08",
    missionId: 7,
    environmentContext:
        "A different visit. Your doctor emailed "
        "a prescription before you left. "
        "You show it at the counter.",
    introFlag: true,
    environmentalTextPrompt: "📋 ICH HABE EIN REZEPT",
    sophieClueEnglishIntent: "Hand over your prescription",
    sophiePhoneticHint: "hier bit-te, mein re-zept",
    targetLanguageAnchor: "Hier, bitte — mein Rezept",
    slotOptions: ["mein Rezept", "das Rezept von meinem Arzt", "hier das Dokument"],
    npcAudioResponseTranscript: "Danke. Das suche ich kurz raus — einen Moment.",
    graffitiStyleTag: "Green 'REZEPT ✓' medical stamp",
    npcName: "Apotheker",
    npcAvatarEmoji: "👨‍⚕️",
  ),

  // ── S9: PAT_15 Rep 5 — Repair: before or after meals? ────
  Scenario(
    scenarioId: "DE_M07_S09",
    missionId: 7,
    environmentContext:
        "She said something about Essen quickly. "
        "Before or after meals? You need to be certain.",
    introFlag: false,
    environmentalTextPrompt: "🍽️ VOR ODER NACH DEM ESSEN?",
    sophieClueEnglishIntent: "Ask if it's before or after meals",
    sophiePhoneticHint: "vor o-der nach dem es-sen",
    targetLanguageAnchor: "Vor oder nach dem Essen?",
    slotOptions: ["Vor dem Essen?", "Nach dem Essen?", "Mit dem Essen?"],
    npcAudioResponseTranscript: "Nach dem Essen — damit der Magen nicht leidet.",
    graffitiStyleTag: "White 'VOR/NACH?' clarification bubble",
    npcName: "Apothekerin",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_12 Rep 6 — Next day: feeling better ─────────
  Scenario(
    scenarioId: "DE_M07_S10",
    missionId: 7,
    environmentContext:
        "Next morning. Same Apotheke — different pharmacist. "
        "He recognises you and asks how you're doing.",
    introFlag: false,
    environmentalTextPrompt: "😊 ES GEHT MIR BESSER",
    sophieClueEnglishIntent: "Say you feel better now thank you",
    sophiePhoneticHint: "es geht mir be-sser, dan-ke",
    targetLanguageAnchor: "Es geht mir besser, danke!",
    slotOptions: ["Es geht mir besser", "Ich fühle mich besser", "Viel besser, danke"],
    npcAudioResponseTranscript: "Freut mich! Genießen Sie Berlin!",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Berliner Apotheke stamp",
    npcName: "Apotheker",
    npcAvatarEmoji: "👨‍⚕️",
  ),
];
