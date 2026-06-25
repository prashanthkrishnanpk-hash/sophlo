// lib/data/scenarios/english/english_m03_scenarios.dart
// MISSION 3: THE TAXI (BLACK CAB) — 10 SCENARIOS
// PAT_14(R1,R2,R3), PAT_06(R2), PAT_04(R1), PAT_11(R1),
// PAT_01(R3), PAT_15(R2), PAT_12(R2), PAT_16(R4)

import '../../../models/models.dart';

const List<Scenario> englishM03Scenarios = [

  Scenario(
    scenarioId: "EN_M03_S01",
    missionId: 3,
    environmentContext:
        "Black cab. The iconic shape. Driver slides the partition. "
        "London at night through rain-streaked glass.",
    introFlag: true,
    environmentalTextPrompt: "🚕 BLACK CAB — WHERE TO?",
    sophieClueEnglishIntent: "Tell the driver where to go",
    sophiePhoneticHint: "kud yoo tayk mee to [X] pleez",
    targetLanguageAnchor: "Could you take me to [X], please?",
    slotOptions: ["King's Cross", "Shoreditch", "Covent Garden", "Camden", "Brixton"],
    npcAudioResponseTranscript:
        "Right you are. Bit of traffic on the Embankment — "
        "I'll go round the back.",
    graffitiStyleTag: "Yellow 'GO TO' black cab bold tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S02",
    missionId: 3,
    environmentContext:
        "You spot a cashpoint on the left. You're running low "
        "and the hostel is cash only.",
    introFlag: false,
    environmentalTextPrompt: "🏧 CASHPOINT — STOP FIRST",
    sophieClueEnglishIntent: "Ask him to stop at the cashpoint first",
    sophiePhoneticHint: "kud yoo stop at that cash-poynt ferst",
    targetLanguageAnchor: "Could you stop at that cashpoint first?",
    slotOptions: ["cashpoint", "cash machine", "ATM", "corner shop"],
    npcAudioResponseTranscript:
        "Course I can — just there on the left, two seconds.",
    graffitiStyleTag: "Cyan '📍 STOP HERE' location pin tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S03",
    missionId: 3,
    environmentContext:
        "Back in the cab. Moving again. You recognise the street "
        "from your map. He's about to miss the turning.",
    introFlag: false,
    environmentalTextPrompt: "↩️ NEXT JUNCTION — TURN!",
    sophieClueEnglishIntent: "Tell him to turn left at the next junction",
    sophiePhoneticHint: "kud yoo turn left at the nekst junk-shun",
    targetLanguageAnchor: "Could you turn left at the next junction?",
    slotOptions: ["turn left", "turn right", "go straight on"],
    npcAudioResponseTranscript:
        "Left? You sure? The satnav's saying right but — "
        "fair enough, you're the boss.",
    graffitiStyleTag: "Green 'LEFT←' direction arrow neon tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S04",
    missionId: 3,
    environmentContext:
        "Twenty minutes. This doesn't look like Shoreditch. "
        "It looks like somewhere considerably less interesting.",
    introFlag: false,
    environmentalTextPrompt: "🗺️ WRONG AREA — CHECK",
    sophieClueEnglishIntent: "Ask if this is the right road",
    sophiePhoneticHint: "iz this the ryt rohd",
    targetLanguageAnchor: "Is this the right road?",
    slotOptions: ["the right road", "the way to Shoreditch", "the correct route"],
    npcAudioResponseTranscript:
        "Ha! No — sorry mate, I took a wrong turn back there. "
        "Won't charge you for that bit.",
    graffitiStyleTag: "Red '?' question mark graffiti — wrong turn",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S05",
    missionId: 3,
    environmentContext:
        "Hostel visible. Meter visible. Forty-two pounds. "
        "That feels like a lot for what Google Maps said was "
        "six miles.",
    introFlag: true,
    environmentalTextPrompt: "💰 METER — HOW MUCH?",
    sophieClueEnglishIntent: "Ask how much the fare is",
    sophiePhoneticHint: "how much is the fair",
    targetLanguageAnchor: "How much is the fare?",
    slotOptions: ["the fare", "the total", "what I owe"],
    npcAudioResponseTranscript:
        "Forty-two fifty, love. Card's fine — contactless.",
    graffitiStyleTag: "Orange '£ FARE' price tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S06",
    missionId: 3,
    environmentContext:
        "Forty-two fifty. Google said it should be about "
        "twenty. You need to say something.",
    introFlag: true,
    environmentalTextPrompt: "⚠️ OVERCHARGED — METER WRONG",
    sophieClueEnglishIntent: "Say the meter doesn't look right",
    sophiePhoneticHint: "this doe-zunt look ryt to mee",
    targetLanguageAnchor: "This doesn't look right to me",
    slotOptions: ["doesn't look right", "seems too high", "isn't correct"],
    npcAudioResponseTranscript:
        "Night-time surcharge, mate — it's all above board. "
        "See? It's on the meter certificate.",
    graffitiStyleTag: "Red '⚠️ WRONG' complaint tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S07",
    missionId: 3,
    environmentContext:
        "You pay fifty. He fumbles for change. "
        "You wait. A car horn blares outside.",
    introFlag: false,
    environmentalTextPrompt: "💵 PAID £50 — NEED CHANGE",
    sophieClueEnglishIntent: "Ask for your change",
    sophiePhoneticHint: "kud eye hav my chaynj pleez",
    targetLanguageAnchor: "Could I have my change, please?",
    slotOptions: ["my change", "the change", "seven pounds fifty"],
    npcAudioResponseTranscript:
        "Seven fifty — there you go. Cheers.",
    graffitiStyleTag: "Purple '£ CHANGE' coins tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S08",
    missionId: 3,
    environmentContext:
        "He mentions something about a congestion charge zone. "
        "Fast. Mumbled. You have no idea what he said.",
    introFlag: false,
    environmentalTextPrompt: "😕 MUMBLED — DIDN'T CATCH",
    sophieClueEnglishIntent: "Ask him to repeat what he said",
    sophiePhoneticHint: "sor-ee kud yoo re-peet that",
    targetLanguageAnchor: "Sorry, could you repeat that?",
    slotOptions: ["repeat that", "say that again", "say it more slowly"],
    npcAudioResponseTranscript:
        "Congestion charge zone — fifteen quid a day if you're driving. "
        "Not your problem though, you're in a cab.",
    graffitiStyleTag: "White 'PARDON?' speech bubble tag",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S09",
    missionId: 3,
    environmentContext:
        "Long day. Long flight before that. The cab's warm. "
        "The roads are blurring. You need to flag your state.",
    introFlag: false,
    environmentalTextPrompt: "😴 EXHAUSTED — LONG DAY",
    sophieClueEnglishIntent: "Tell the driver you're exhausted",
    sophiePhoneticHint: "aym ab-suh-loot-lee nack-erd",
    targetLanguageAnchor: "I'm absolutely knackered",
    slotOptions: ["absolutely knackered", "exhausted", "shattered"],
    npcAudioResponseTranscript:
        "Ha! First time hearing that one from a visitor. "
        "You've learned well — nearly there.",
    graffitiStyleTag: "Blue '😴 KNACKERED' tired tag — British slang style",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),

  Scenario(
    scenarioId: "EN_M03_S10",
    missionId: 3,
    environmentContext:
        "Hostel door. You climb out. Cool London air. "
        "Dave pulls your bag from the boot.",
    introFlag: false,
    environmentalTextPrompt: "🚪 ARRIVED — THANK THE DRIVER",
    sophieClueEnglishIntent: "Thank him and say cheers",
    sophiePhoneticHint: "cheerz, hav uh good wun",
    targetLanguageAnchor: "Cheers, have a good one",
    slotOptions: ["Cheers, have a good one", "Thanks very much", "Brilliant, cheers"],
    npcAudioResponseTranscript:
        "Cheers mate! Welcome to London — "
        "and it only rains half the time, honest.",
    graffitiStyleTag: "GOLD 'MISSION COMPLETE' — cab receipt stamp, London ink",
    npcName: "Cabbie Dave",
    npcAvatarEmoji: "🧔",
  ),
];
