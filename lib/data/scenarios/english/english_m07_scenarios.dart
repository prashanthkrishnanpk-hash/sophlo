// lib/data/scenarios/english/english_m07_scenarios.dart
//
// MISSION 7: THE CHEMIST — 10 SCENARIOS
// =========================================
// Type: SYMPTOMS + DOSAGE + MEDICAL VOCAB
// Location: Boots the Chemist, London
// Pattern coverage:
//   PAT_12(R4,R5,R6), PAT_02(R5), PAT_04(R4), PAT_10(R3),
//   PAT_11(R4), PAT_06(R6), PAT_08(R4), PAT_15(R5)
// Cultural note: In UK say 'chemist' not 'pharmacy'
//               Say 'tablets' not 'pills', 'ill' not 'sick'

import '../../../models/models.dart';

const List<Scenario> englishM07Scenarios = [

  // ── S1: PAT_12 Rep 4 — Medical state: headache ──────────
  Scenario(
    scenarioId: "EN_M07_S01",
    missionId: 7,
    environmentContext:
        "Boots the Chemist. Blue and white. A pharmacist "
        "in a white coat behind the counter. "
        "The headache started three hours ago.",
    introFlag: false,
    environmentalTextPrompt: "💊 BOOTS CHEMIST — NEED HELP",
    sophieClueEnglishIntent: "Tell the pharmacist you have a headache",
    sophiePhoneticHint: "aym af-rayd eye hav uh ter-ib-ul hed-ayk",
    targetLanguageAnchor: "I'm afraid I have a terrible headache",
    slotOptions: ["headache", "stomachache", "sore throat", "fever"],
    npcAudioResponseTranscript:
        "Oh dear. How long have you had it? Any fever?",
    graffitiStyleTag: "Red '🤕 ILL' medical cross tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S2: PAT_12 Rep 5 — Medical: duration ────────────────
  Scenario(
    scenarioId: "EN_M07_S02",
    missionId: 7,
    environmentContext:
        "She needs to know how long. This determines "
        "whether it's paracetamol or a doctor.",
    introFlag: false,
    environmentalTextPrompt: "⏰ SINCE WHEN — DURATION",
    sophieClueEnglishIntent: "Say you've had it since this morning",
    sophiePhoneticHint: "aiv had it since this mor-ning",
    targetLanguageAnchor: "I've had it since this morning",
    slotOptions: ["this morning", "last night", "two days", "yesterday"],
    npcAudioResponseTranscript:
        "Right. Any other symptoms — nausea, sensitivity to light?",
    graffitiStyleTag: "Orange '⏰ SINCE WHEN' time tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S3: PAT_12 Rep 6 — Medical: allergy to medicine ─────
  Scenario(
    scenarioId: "EN_M07_S03",
    missionId: 7,
    environmentContext:
        "She reaches for ibuprofen. You need to stop her. "
        "It causes problems with your stomach.",
    introFlag: false,
    environmentalTextPrompt: "⚠️ MEDICINE ALLERGY — STOP HER",
    sophieClueEnglishIntent: "Tell her you're allergic to ibuprofen",
    sophiePhoneticHint: "aym ak-choo-uh-lee al-er-jik to eye-byoo-proh-fun",
    targetLanguageAnchor: "I'm actually allergic to ibuprofen",
    slotOptions: ["ibuprofen", "penicillin", "aspirin", "codeine"],
    npcAudioResponseTranscript:
        "Good job you mentioned that! Paracetamol is perfectly safe — "
        "and actually better for headaches.",
    graffitiStyleTag: "Red '⚠️ ALLERGIC' medicine tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S4: PAT_02 Rep 5 — Want/need: specific medicine ─────
  Scenario(
    scenarioId: "EN_M07_S04",
    missionId: 7,
    environmentContext:
        "Good. Paracetamol it is. While you're here, "
        "you also need something for a dodgy stomach.",
    introFlag: false,
    environmentalTextPrompt: "🛒 ALSO NEED: [X]",
    sophieClueEnglishIntent: "Say you'd also like some antacid",
    sophiePhoneticHint: "ayd also like sum [X] pleez",
    targetLanguageAnchor: "I'd also like some [X], please",
    slotOptions: ["antacid", "vitamin C", "antihistamine", "plasters"],
    npcAudioResponseTranscript:
        "Of course — Rennie or Gaviscon? Both are good.",
    graffitiStyleTag: "Green '+ ALSO NEED' add-on tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S5: PAT_04 Rep 4 — Price: total cost ────────────────
  Scenario(
    scenarioId: "EN_M07_S05",
    missionId: 7,
    environmentContext:
        "She assembles it all on the counter. "
        "Three items. You want to know the total "
        "before committing to the whole lot.",
    introFlag: false,
    environmentalTextPrompt: "💰 TOTAL — HOW MUCH?",
    sophieClueEnglishIntent: "Ask how much everything comes to",
    sophiePhoneticHint: "how much iz that all to-geth-er",
    targetLanguageAnchor: "How much is that all together?",
    slotOptions: ["all together", "in total", "the lot"],
    npcAudioResponseTranscript:
        "That'll be nine pounds forty. Card fine — we're contactless.",
    graffitiStyleTag: "Yellow '£ TOTAL' cost tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S6: PAT_10 Rep 3 — Time: dosage frequency ───────────
  Scenario(
    scenarioId: "EN_M07_S06",
    missionId: 7,
    environmentContext:
        "Paid. Medicine in bag. The packaging is in very "
        "small print. You need human clarification.",
    introFlag: false,
    environmentalTextPrompt: "💊 DOSAGE — HOW OFTEN?",
    sophieClueEnglishIntent: "Ask how often to take the tablets",
    sophiePhoneticHint: "how of-en shood eye tayk the tab-lits",
    targetLanguageAnchor: "How often should I take the tablets?",
    slotOptions: ["the tablets", "the paracetamol", "these"],
    npcAudioResponseTranscript:
        "Two tablets every four to six hours — no more than eight "
        "in twenty-four hours. Always with food or milk.",
    graffitiStyleTag: "Blue '💊 DOSAGE' tablet chart tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S7: PAT_11 Rep 4 — Negation: no prescription ────────
  Scenario(
    scenarioId: "EN_M07_S07",
    missionId: 7,
    environmentContext:
        "She points to a stronger painkiller behind the counter. "
        "Prescription only. You haven't got one.",
    introFlag: false,
    environmentalTextPrompt: "📋 PRESCRIPTION — DON'T HAVE ONE",
    sophieClueEnglishIntent: "Say you don't have a prescription",
    sophiePhoneticHint: "aym af-rayd eye dont hav uh pre-skrip-shun",
    targetLanguageAnchor: "I'm afraid I don't have a prescription",
    slotOptions: ["a prescription", "any documentation", "a doctor's note"],
    npcAudioResponseTranscript:
        "Not to worry — the paracetamol will do the job for now. "
        "If it persists, the walk-in centre is just down the road.",
    graffitiStyleTag: "Red '❌ NO PRESCRIPTION' tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S8: PAT_06 Rep 6 — Yes/no: sunscreen ───────────────
  Scenario(
    scenarioId: "EN_M07_S08",
    missionId: 7,
    environmentContext:
        "Before you go — you're heading to a park this afternoon. "
        "British sun is deceptive. You scan the shelf.",
    introFlag: false,
    environmentalTextPrompt: "☀️ SUNSCREEN — CHECK STOCK",
    sophieClueEnglishIntent: "Ask if they have sunscreen",
    sophiePhoneticHint: "doo yoo hav sun-skreen",
    targetLanguageAnchor: "Do you have sunscreen?",
    slotOptions: ["sunscreen", "factor fifty", "sun cream", "SPF"],
    npcAudioResponseTranscript:
        "Yes — aisle four, bottom shelf. Factor thirty or fifty?",
    graffitiStyleTag: "Cyan '☀️ SUN CREAM' sun tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S9: PAT_08 Rep 4 — Handover: insurance card ─────────
  Scenario(
    scenarioId: "EN_M07_S09",
    missionId: 7,
    environmentContext:
        "You remember your travel insurance. "
        "Some chemists process claims directly. Worth asking.",
    introFlag: false,
    environmentalTextPrompt: "🪪 INSURANCE — SHOW CARD",
    sophieClueEnglishIntent: "Show your insurance card and ask if it helps",
    sophiePhoneticHint: "heer is my in-shoor-uns card — duz this help",
    targetLanguageAnchor: "Here is my insurance card — does this help?",
    slotOptions: ["insurance card", "travel insurance", "EHIC card"],
    npcAudioResponseTranscript:
        "We don't process claims directly I'm afraid — "
        "but keep your receipt and you can claim it back.",
    graffitiStyleTag: "Green '🪪 INSURANCE' card tag",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),

  // ── S10: PAT_15 Rep 5 — Repair: before or after food ────
  Scenario(
    scenarioId: "EN_M07_S10",
    missionId: 7,
    environmentContext:
        "She said something about food and tablets. "
        "Before or after? You need to be sure.",
    introFlag: false,
    environmentalTextPrompt: "😕 BEFORE OR AFTER FOOD?",
    sophieClueEnglishIntent: "Ask if to take them before or after food",
    sophiePhoneticHint: "sor-ee — shood eye tayk thees bee-for or af-ter food",
    targetLanguageAnchor: "Sorry — should I take these before or after food?",
    slotOptions: ["before food", "after food", "with food"],
    npcAudioResponseTranscript:
        "After, ideally — or with a glass of milk. "
        "Empty stomach can cause a bit of nausea.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — chemist cross seal, Boots blue",
    npcName: "Pharmacist Helen",
    npcAvatarEmoji: "👩‍⚕️",
  ),
];
