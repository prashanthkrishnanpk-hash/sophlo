// lib/data/scenarios/german/german_m06_scenarios.dart
//
// MISSION 6: MARKT & FLOHMARKT — MARKETS — 10 SCENARIOS
// ========================================================
// Location: Markthalle Neun, Kreuzberg / Flohmarkt Mauerpark
// Type: COMMERCE + NEGOTIATION — cash-heavy Berlin market culture
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Key forms: was kostet, ich nehme, könnten Sie einpacken,
//   zu teuer, in diese Richtung, hier bitte, wie bitte,
//   als Geschenk, haben Sie, bitte

import '../../../models/models.dart';

const List<Scenario> germanM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question ───────────────────
  Scenario(
    scenarioId: "DE_M06_S01",
    missionId: 6,
    environmentContext:
        "Markthalle Neun, Kreuzberg. Thursday street food market. "
        "A cheese stall with a huge wheel of Allgäuer Emmentaler. "
        "No price visible. The vendor is mid-conversation.",
    introFlag: true,
    environmentalTextPrompt: "🧀 MARKTHALLE NEUN — WAS KOSTET DER KÄSE?",
    sophieClueEnglishIntent: "Ask how much the cheese costs",
    sophiePhoneticHint: "was kos-tet der käse",
    targetLanguageAnchor: "Was kostet der Käse?",
    slotOptions: ["der Käse", "das hier", "das Stück", "100 Gramm"],
    npcAudioResponseTranscript: "3,80 Euro pro 100 Gramm. Darf ich Ihnen was geben?",
    graffitiStyleTag: "Yellow '🧀 €3.80/100g' market price tag",
    npcName: "Käsehändler",
    npcAvatarEmoji: "🧀",
  ),

  // ── S2: PAT_02 Rep 4 — Order: 200 grams ─────────────────
  Scenario(
    scenarioId: "DE_M06_S02",
    missionId: 6,
    environmentContext:
        "Good price. Good cheese. "
        "The sample was excellent. "
        "You want 200 grams.",
    introFlag: false,
    environmentalTextPrompt: "⚖️ 200 GRAMM BITTE",
    sophieClueEnglishIntent: "Ask for 200 grams please",
    sophiePhoneticHint: "zwei-hun-dert gramm bit-te",
    targetLanguageAnchor: "200 Gramm, bitte",
    slotOptions: ["200 Gramm", "100 Gramm", "ein halbes Kilo"],
    npcAudioResponseTranscript: "Gerne — 7,60 Euro. Noch etwas?",
    graffitiStyleTag: "Green '200g ✓' weight tag — market scale",
    npcName: "Käsehändler",
    npcAvatarEmoji: "🧀",
  ),

  // ── S3: PAT_13 Rep 3 — Request: wrap it ─────────────────
  Scenario(
    scenarioId: "DE_M06_S03",
    missionId: 6,
    environmentContext:
        "Flohmarkt Mauerpark. Sunday. Thousands of people. "
        "A vinyl record stall — you found a first pressing "
        "of something rare. You're worried about it bending.",
    introFlag: true,
    environmentalTextPrompt: "💿 FLOHMARKT — KÖNNTEN SIE ES EINPACKEN?",
    sophieClueEnglishIntent: "Ask if they can wrap it",
    sophiePhoneticHint: "könn-ten Sie es ein-pa-cken",
    targetLanguageAnchor: "Könnten Sie es einpacken?",
    slotOptions: ["einpacken", "in eine Tüte tun", "schützen"],
    npcAudioResponseTranscript: "Klar, ich hab Luftpolsterfolie. Ist ne gute Wahl.",
    graffitiStyleTag: "Teal 'EINPACKEN ⚠' fragile wrap tag",
    npcName: "Plattenverkäufer",
    npcAvatarEmoji: "💿",
  ),

  // ── S4: PAT_11 Rep 3 — Negotiate: too expensive ──────────
  Scenario(
    scenarioId: "DE_M06_S04",
    missionId: 6,
    environmentContext:
        "The record is €28. Rare, yes — but the sleeve "
        "has a crease. Worth trying at a flea market.",
    introFlag: false,
    environmentalTextPrompt: "💸 ZU TEUER — KÖNNEN WIR HANDELN?",
    sophieClueEnglishIntent: "Say it's too expensive and ask to negotiate",
    sophiePhoneticHint: "das ist zu teu-er, kön-nen wir han-deln",
    targetLanguageAnchor: "Das ist zu teuer. Können wir handeln?",
    slotOptions: ["Können wir handeln?", "Etwas günstiger?", "Wegen der Delle?"],
    npcAudioResponseTranscript: "Wegen der Delle — okay, 22 Euro. Mehr geht nicht.",
    graffitiStyleTag: "Red 'HANDELN!' negotiation tag — flea market",
    npcName: "Plattenverkäufer",
    npcAvatarEmoji: "💿",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: ask for directions ─────────
  Scenario(
    scenarioId: "DE_M06_S05",
    missionId: 6,
    environmentContext:
        "Lost in the Flohmarkt's outer ring. "
        "The main stage — where the karaoke is — "
        "should be nearby but everything looks the same.",
    introFlag: true,
    environmentalTextPrompt: "🧭 IN DIESE RICHTUNG?",
    sophieClueEnglishIntent: "Ask if the stage is in this direction",
    sophiePhoneticHint: "ist die büh-ne in die-se rich-tung",
    targetLanguageAnchor: "Ist die Bühne in diese Richtung?",
    slotOptions: ["in diese Richtung?", "geradeaus?", "links?", "rechts?"],
    npcAudioResponseTranscript: "Nein, die andere Richtung — da hören Sie's gleich.",
    graffitiStyleTag: "White '→ BÜHNE' direction tag — market alley",
    npcName: "Marktbesucher",
    npcAvatarEmoji: "🎸",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: hand over cash ─────────────
  Scenario(
    scenarioId: "DE_M06_S06",
    missionId: 6,
    environmentContext:
        "Deal agreed at €22. Cash only at this stall — "
        "a handwritten sign says Nur Bares ist Wahres. "
        "You hand it over.",
    introFlag: false,
    environmentalTextPrompt: "💶 BARZAHLUNG",
    sophieClueEnglishIntent: "Hand over the money",
    sophiePhoneticHint: "hier bit-te",
    targetLanguageAnchor: "Hier, bitte",
    slotOptions: ["Hier, bitte", "Bitte sehr", "Das Geld"],
    npcAudioResponseTranscript: "Danke. Drei Euro zurück. Viel Spaß damit!",
    graffitiStyleTag: "Gold 'BEZAHLT ✓' cash payment stamp",
    npcName: "Plattenverkäufer",
    npcAvatarEmoji: "💿",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: didn't catch the price ───
  Scenario(
    scenarioId: "DE_M06_S07",
    missionId: 6,
    environmentContext:
        "A spice stall near the entrance. "
        "The vendor muttered the price while weighing. "
        "Four-something or fourteen?",
    introFlag: true,
    environmentalTextPrompt: "🌶️ WIE BITTE? — PREIS NOCHMAL",
    sophieClueEnglishIntent: "Ask how much they said",
    sophiePhoneticHint: "wie bit-te wie viel ha-ben Sie ge-sagt",
    targetLanguageAnchor: "Wie bitte? Wie viel haben Sie gesagt?",
    slotOptions: ["Wie viel haben Sie gesagt?", "Nochmal bitte", "Ich habe es nicht gehört"],
    npcAudioResponseTranscript: "Vier Euro. Vi-er. Nicht vierzehn.",
    graffitiStyleTag: "White 'WIE BITTE?' repeat request bubble",
    npcName: "Gewürzhändlerin",
    npcAvatarEmoji: "🌶️",
  ),

  // ── S8: PAT_09 Rep 3 — Ask for something as a gift ───────
  Scenario(
    scenarioId: "DE_M06_S08",
    missionId: 6,
    environmentContext:
        "You want to bring something back from Berlin. "
        "Not a Fernsehturm fridge magnet. "
        "Something local and real.",
    introFlag: true,
    environmentalTextPrompt: "🎁 ICH SUCHE EIN MITBRINGSEL",
    sophieClueEnglishIntent: "Say you are looking for a gift to take home",
    sophiePhoneticHint: "ich su-che ein mit-bring-sel",
    targetLanguageAnchor: "Ich suche ein Mitbringsel",
    slotOptions: ["ein Mitbringsel", "ein Geschenk", "etwas Typisches aus Berlin"],
    npcAudioResponseTranscript: "Für Mann oder Frau? Welches Budget?",
    graffitiStyleTag: "Pink 'MITBRINGSEL 🎁' gift tag — kraft paper",
    npcName: "Markthändlerin",
    npcAvatarEmoji: "🎨",
  ),

  // ── S9: PAT_06 Rep 5 — Ask if they have smaller size ─────
  Scenario(
    scenarioId: "DE_M06_S09",
    missionId: 6,
    environmentContext:
        "A ceramics stall. A beautiful hand-thrown mug — "
        "but the only one on display is oversized. "
        "Maybe there's a smaller version.",
    introFlag: false,
    environmentalTextPrompt: "🏺 HABEN SIE EINE KLEINERE GRÖSSE?",
    sophieClueEnglishIntent: "Ask if they have a smaller size",
    sophiePhoneticHint: "ha-ben Sie ei-ne klei-ne-re grö-ße",
    targetLanguageAnchor: "Haben Sie eine kleinere Größe?",
    slotOptions: ["eine kleinere Größe", "eine andere Farbe", "ein anderes Modell"],
    npcAudioResponseTranscript: "Ja, ich hab noch eine in der Kiste — Moment.",
    graffitiStyleTag: "Clay 'KERAMIK' ceramics tag — artisan market",
    npcName: "Keramikkünstlerin",
    npcAvatarEmoji: "🏺",
  ),

  // ── S10: PAT_01 Rep 6 — DRILL: ask for a bag ─────────────
  Scenario(
    scenarioId: "DE_M06_S10",
    missionId: 6,
    environmentContext:
        "Arms full — cheese, record, spices, ceramic mug. "
        "You desperately need a bag.",
    introFlag: false,
    environmentalTextPrompt: "🛍️ EINE TÜTE BITTE",
    sophieClueEnglishIntent: "Ask for a bag please",
    sophiePhoneticHint: "ei-ne tü-te bit-te",
    targetLanguageAnchor: "Eine Tüte, bitte",
    slotOptions: ["eine Tüte", "eine große Tüte", "eine Tragetasche"],
    npcAudioResponseTranscript: "Hier! Stoff-Tüte — die ist stabiler für die Platte.",
    graffitiStyleTag: "GOLD 'MISSION ERFÜLLT' — Markthalle Neun stamp",
    npcName: "Plattenverkäufer",
    npcAvatarEmoji: "💿",
  ),
];
