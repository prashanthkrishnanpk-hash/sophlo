// lib/data/scenarios/english/english_m06_scenarios.dart
//
// MISSION 6: STREET MARKET — 10 SCENARIOS
// ==========================================
// Type: NEGOTIATION + PRICING + QUANTITIES
// Location: Portobello Road Market, Notting Hill
// Pattern coverage:
//   PAT_04(R3), PAT_02(R4), PAT_13(R3), PAT_11(R3), PAT_14(R4-DRILL),
//   PAT_08(R3-DRILL), PAT_15(R4), PAT_09(R3), PAT_06(R5), PAT_01(R6)
// Cultural note: British markets are less aggressive than some —
//   polite persistence works better than hard bargaining

import '../../../models/models.dart';

const List<Scenario> englishM06Scenarios = [

  // ── S1: PAT_04 Rep 3 — Price question: first stall ──────
  Scenario(
    scenarioId: "EN_M06_S01",
    missionId: 6,
    environmentContext:
        "Portobello Road. Saturday morning. Antiques, "
        "vintage clothes, street food. A leather satchel "
        "on a folding table catches your eye completely.",
    introFlag: false,
    environmentalTextPrompt: "🛒 PORTOBELLO — SATCHEL STALL",
    sophieClueEnglishIntent: "Ask how much the satchel is",
    sophiePhoneticHint: "how much is this wun",
    targetLanguageAnchor: "How much is this one?",
    slotOptions: ["this one", "that satchel", "this bag"],
    npcAudioResponseTranscript:
        "That one's sixty-five — genuine leather, made in Italy.",
    graffitiStyleTag: "Saffron '£ HOW MUCH?' price tag — Portobello style",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S2: PAT_02 Rep 4 — Want/need: state interest ────────
  Scenario(
    scenarioId: "EN_M06_S02",
    missionId: 6,
    environmentContext:
        "Sixty-five. For a market. You like it, "
        "but you'd like it more at forty.",
    introFlag: false,
    environmentalTextPrompt: "💰 £65 — TOO MUCH",
    sophieClueEnglishIntent: "Say it's a bit pricey and you'd like a discount",
    sophiePhoneticHint: "its uh bit pry-see — iz thair uh dis-kownt",
    targetLanguageAnchor: "It's a bit pricey — is there a discount?",
    slotOptions: ["a discount", "any wiggle room", "a better price"],
    npcAudioResponseTranscript:
        "Ha — everyone asks that. Tell you what, "
        "what were you thinking?",
    graffitiStyleTag: "Red '💰 PRICEY' protest tag",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S3: PAT_13 Rep 3 — Quantity: counter offer ──────────
  Scenario(
    scenarioId: "EN_M06_S03",
    missionId: 6,
    environmentContext:
        "She asked what you're thinking. "
        "Confidence. Commitment. Don't look at the bag.",
    introFlag: false,
    environmentalTextPrompt: "🤝 COUNTER OFFER — YOUR PRICE",
    sophieClueEnglishIntent: "Offer forty-five pounds",
    sophiePhoneticHint: "wud yoo tayk for-tee-fyv",
    targetLanguageAnchor: "Would you take forty-five?",
    slotOptions: ["forty-five", "fifty", "forty"],
    npcAudioResponseTranscript:
        "Forty-five! I've got a family to feed. "
        "I can do fifty-five — that's my best.",
    graffitiStyleTag: "Green '🤝 DEAL?' handshake tag",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S4: PAT_11 Rep 3 — Negation: broken buckle ──────────
  Scenario(
    scenarioId: "EN_M06_S04",
    missionId: 6,
    environmentContext:
        "You pick it up. Turn it over. The back buckle "
        "is loose. One hinge is cracked. Leverage.",
    introFlag: false,
    environmentalTextPrompt: "🔍 INSPECT — BUCKLE BROKEN",
    sophieClueEnglishIntent: "Point out the buckle is broken",
    sophiePhoneticHint: "this buk-ul iznt ryt — its krak-d",
    targetLanguageAnchor: "This buckle isn't right — it's cracked",
    slotOptions: ["isn't right", "is cracked", "is broken"],
    npcAudioResponseTranscript:
        "Oh — I didn't notice that. Fair point. "
        "I can do fifty for that one.",
    graffitiStyleTag: "Orange '⚠️ CRACKED' defect tag",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S5: PAT_14 Rep 4 — DRILL: walk away move ────────────
  Scenario(
    scenarioId: "EN_M06_S05",
    missionId: 6,
    environmentContext:
        "Fifty. Still ten above target. "
        "You put the bag down. Start to turn.",
    introFlag: false,
    environmentalTextPrompt: "🚶 WALKING AWAY — THE MOVE",
    sophieClueEnglishIntent: "Say you'll have a look around",
    sophiePhoneticHint: "ayl hav uh look uh-rownd",
    targetLanguageAnchor: "I'll have a look around",
    slotOptions: ["have a look around", "check the other stalls", "think about it"],
    npcAudioResponseTranscript:
        "Hold on — forty-eight. Final offer. "
        "I like your style.",
    graffitiStyleTag: "Yellow '🚶 LOOK AROUND' walk tag",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S6: PAT_08 Rep 3 — DRILL: hand over money ───────────
  Scenario(
    scenarioId: "EN_M06_S06",
    missionId: 6,
    environmentContext:
        "Forty-eight. Done. You pull out fifty from your wallet. "
        "Clean. No room for confusion.",
    introFlag: false,
    environmentalTextPrompt: "💵 PAY £50 — HAND OVER",
    sophieClueEnglishIntent: "Hand over the money and say here you go",
    sophiePhoneticHint: "heer yoo go — fif-tee powndz",
    targetLanguageAnchor: "Here you go — fifty pounds",
    slotOptions: ["fifty pounds", "here's fifty", "here you go"],
    npcAudioResponseTranscript:
        "Lovely — two quid change. Pleasure doing business!",
    graffitiStyleTag: "Purple '£ PAID' payment tag",
    npcName: "Vendor Margaret",
    npcAvatarEmoji: "👩",
  ),

  // ── S7: PAT_15 Rep 4 — Repair: getting attention ────────
  Scenario(
    scenarioId: "EN_M06_S07",
    missionId: 6,
    environmentContext:
        "Next stall. Vintage scarves. The vendor is deep "
        "in conversation with someone else entirely.",
    introFlag: false,
    environmentalTextPrompt: "👋 NEXT STALL — GET ATTENTION",
    sophieClueEnglishIntent: "Politely get the vendor's attention",
    sophiePhoneticHint: "ex-kyooz mee, sor-ee to in-ter-upt",
    targetLanguageAnchor: "Excuse me, sorry to interrupt",
    slotOptions: ["sorry to interrupt", "when you have a moment", "excuse me"],
    npcAudioResponseTranscript:
        "Oh! Sorry love — what can I do you for?",
    graffitiStyleTag: "Cyan '👋 EXCUSE ME' attention tag",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S8: PAT_09 Rep 3 — Purpose: gift for friend ─────────
  Scenario(
    scenarioId: "EN_M06_S08",
    missionId: 6,
    environmentContext:
        "A silk scarf in exactly the right shade of blue. "
        "Your friend back home would love this.",
    introFlag: false,
    environmentalTextPrompt: "🎁 BUYING A GIFT",
    sophieClueEnglishIntent: "Say you want it as a gift for a friend",
    sophiePhoneticHint: "its for uh frend az uh gift",
    targetLanguageAnchor: "It's for a friend — as a gift",
    slotOptions: ["for a friend", "as a gift", "for someone back home"],
    npcAudioResponseTranscript:
        "How lovely! Shall I wrap it nicely for you?",
    graffitiStyleTag: "Pink '🎁 GIFT' present tag",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S9: PAT_06 Rep 5 — Yes/no: other colour ────────────
  Scenario(
    scenarioId: "EN_M06_S09",
    missionId: 6,
    environmentContext:
        "The blue is right but your friend's favourite is green. "
        "Worth a try.",
    introFlag: false,
    environmentalTextPrompt: "🎨 WANT GREEN — CHECK STOCK",
    sophieClueEnglishIntent: "Ask if they have it in green",
    sophiePhoneticHint: "doo yoo hav this in green",
    targetLanguageAnchor: "Do you have this in green?",
    slotOptions: ["green", "navy", "burgundy", "black"],
    npcAudioResponseTranscript:
        "I do — one minute, it's in the box underneath.",
    graffitiStyleTag: "Blue '🎨 COLOUR?' palette tag",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),

  // ── S10: PAT_01 Rep 6 — Request: receipt ────────────────
  Scenario(
    scenarioId: "EN_M06_S10",
    missionId: 6,
    environmentContext:
        "Green scarf. Perfect. Paid. But customs at home "
        "sometimes asks for proof of purchase.",
    introFlag: false,
    environmentalTextPrompt: "🧾 NEED RECEIPT",
    sophieClueEnglishIntent: "Ask for a receipt",
    sophiePhoneticHint: "kud eye hav uh re-seet pleez",
    targetLanguageAnchor: "Could I have a receipt, please?",
    slotOptions: ["a receipt", "proof of purchase", "something in writing"],
    npcAudioResponseTranscript:
        "Of course — I'll write one out for you now.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — market stamp, Portobello ink",
    npcName: "Scarf Vendor",
    npcAvatarEmoji: "🧕",
  ),
];
