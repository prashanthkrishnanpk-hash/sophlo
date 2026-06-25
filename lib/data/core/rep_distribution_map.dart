// lib/data/core/rep_distribution_map.dart
//
// THE 96-SCENARIO REP DISTRIBUTION MAP
// ======================================
// Every scenario slot has a primary pattern assignment.
// Scenario content must be written to SERVICE this assignment —
// not the other way around.
//
// Format: ScenarioSlot(missionId, slotIndex, primaryPatternId, repNumber)
// repNumber = which repetition of the pattern this is (1st, 2nd... 7th)

class ScenarioSlot {
  final int missionId;
  final int slotIndex;          // 1-based index within mission
  final String primaryPatternId;
  final int repNumber;           // Which rep of the pattern this is
  final bool isDrillInjection;   // True = cross-mission drill, not primary narrative
  final String scenarioPurpose;  // What this scenario must achieve

  const ScenarioSlot({
    required this.missionId,
    required this.slotIndex,
    required this.primaryPatternId,
    required this.repNumber,
    required this.isDrillInjection,
    required this.scenarioPurpose,
  });

  String get slotId =>
      'M${missionId.toString().padLeft(2, '0')}_S${slotIndex.toString().padLeft(2, '0')}';
}

const List<ScenarioSlot> repDistributionMap = [

  // ════════════════════════════════════════════════════════
  // MISSION 1 — THE FLIGHT (6 scenarios) — ONBOARDING
  // Goal: teach the mechanic, not the language.
  // Full assist throughout. Tier 1 intro only.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 1, slotIndex: 1,
    primaryPatternId: "PAT_16", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "First greeting. Attendant greets you. You respond. "
        "Introduces the app mechanic — intro mode, full text, phonetics visible.",
  ),
  ScenarioSlot(
    missionId: 1, slotIndex: 2,
    primaryPatternId: "PAT_05", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "My seat is [X]. Identity possession intro. "
        "Boarding pass as environmental cue. Slot = seat number.",
  ),
  ScenarioSlot(
    missionId: 1, slotIndex: 3,
    primaryPatternId: "PAT_01", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Give me [X] to drink. REQUEST_IMPERATIVE first exposure. "
        "Slot = drink item. The master pattern introduced here.",
  ),
  ScenarioSlot(
    missionId: 1, slotIndex: 4,
    primaryPatternId: "PAT_12", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "I feel unwell (turbulence). Medical state first exposure. "
        "High emotional urgency — memorable first encounter with PAT_12.",
  ),
  ScenarioSlot(
    missionId: 1, slotIndex: 5,
    primaryPatternId: "PAT_02", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "I want [X] meal. WANT_NEED first exposure. "
        "Slot = meal type. Contrasts with PAT_01 — want vs request.",
  ),
  ScenarioSlot(
    missionId: 1, slotIndex: 6,
    primaryPatternId: "PAT_16", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Thank you and goodbye. Social cluster close. "
        "Completes the mission loop. Sophie celebrates — passport stamp.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 2 — THE TERMINAL (10 scenarios) — FIRST REAL PRESSURE
  // Goal: identity declaration, navigation, document handover.
  // First challenge mode scenarios. Sophie available but XP-penalised.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 2, slotIndex: 1,
    primaryPatternId: "PAT_16", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Greet the customs officer. Social cluster in formal context. "
        "Establishes stakes — this is a real checkpoint, not a café.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 2,
    primaryPatternId: "PAT_07", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "I am here for tourism. SELF_DECLARATION first exposure. "
        "Slot = purpose. High stakes — customs officer is asking.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 3,
    primaryPatternId: "PAT_05", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "My name is [X]. Identity possession Rep 2. "
        "Same pattern as M1 seat number but now it's your NAME. "
        "First cross-context pattern recognition moment.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 4,
    primaryPatternId: "PAT_08", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Here is my passport. DOCUMENT_HANDOVER first exposure. "
        "Slot = passport. Physically handing over a document.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 5,
    primaryPatternId: "PAT_09", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Taxi for the city / I'm here for [X] days. PURPOSE_DESTINATION first. "
        "Slot = city / duration. Postposition/preposition intro.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 6,
    primaryPatternId: "PAT_03", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Where is baggage claim / the exit? LOCATION_QUESTION first exposure. "
        "Physical navigation under mild pressure.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 7,
    primaryPatternId: "PAT_06", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Is there a taxi rank? YES_NO_AVAILABILITY first exposure. "
        "Slot = taxi/bus/metro. Practical airport exit navigation.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 8,
    primaryPatternId: "PAT_10", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "What time does the last train leave? TIME_QUESTION first exposure. "
        "Slot = transport type. Stakes: missing the last train is real.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 9,
    primaryPatternId: "PAT_15", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Excuse me, can you repeat? POLITENESS_REPAIR first exposure. "
        "Triggered by officer speaking too fast. Models the repair behaviour.",
  ),
  ScenarioSlot(
    missionId: 2, slotIndex: 10,
    primaryPatternId: "PAT_01", repNumber: 2,
    isDrillInjection: true,
    scenarioPurpose:
        "Give me a receipt / trolley / luggage tag. PAT_01 Rep 2. "
        "DRILL INJECTION: same pattern, airport context, different noun. "
        "User must recall PAT_01 without intro mode for first time.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 3 — THE TAXI (10 scenarios)
  // Goal: spatial commands, directions, pricing, payment.
  // PAT_14 cluster introduced and drilled as a group.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 3, slotIndex: 1,
    primaryPatternId: "PAT_14", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Go to [X]. SPATIAL_COMMAND first exposure. "
        "Slot = destination. Driver needs a destination immediately.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 2,
    primaryPatternId: "PAT_14", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Stop here / stop at [X] first. SPATIAL_COMMAND Rep 2. "
        "Same mission, different command — stop vs go.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 3,
    primaryPatternId: "PAT_14", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Turn left / right at the signal. SPATIAL_COMMAND Rep 3. "
        "Directional commands. Three PAT_14 reps in one mission — "
        "deliberate clustering for taxi context mastery.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 4,
    primaryPatternId: "PAT_06", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Is this the right road? YES/NO AVAILABILITY Rep 2. "
        "Same pattern, new context: verification vs discovery.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 5,
    primaryPatternId: "PAT_04", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "How much is the meter / the fare? PRICE_QUESTION first exposure. "
        "Slot = meter/fare/total. Taxi pricing is a real tourist trap.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 6,
    primaryPatternId: "PAT_11", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "This is not the right road / the AC is not working. "
        "NEGATION_PROBLEM first exposure. Complaint in a moving vehicle.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 7,
    primaryPatternId: "PAT_01", repNumber: 3,
    isDrillInjection: true,
    scenarioPurpose:
        "Give me change / a receipt. PAT_01 Rep 3. DRILL INJECTION. "
        "Post-payment transaction. New noun (change/receipt) same structure.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 8,
    primaryPatternId: "PAT_15", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "I didn't understand the price / can you say it again? "
        "POLITENESS_REPAIR Rep 2. Practical miscommunication scenario.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 9,
    primaryPatternId: "PAT_12", repNumber: 2,
    isDrillInjection: true,
    scenarioPurpose:
        "I feel carsick / unwell. PAT_12 Rep 2. DRILL INJECTION. "
        "Medical state in taxi. Different symptom from M1 turbulence.",
  ),
  ScenarioSlot(
    missionId: 3, slotIndex: 10,
    primaryPatternId: "PAT_16", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Thank the driver / goodbye. Social cluster Rep 4. "
        "Mission close — informal thanks, tip optional.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 4 — THE HOSTEL (10 scenarios)
  // Goal: booking, identity, room navigation, facility questions.
  // Many patterns hitting Rep 2-3 — reinforcement phase begins.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 4, slotIndex: 1,
    primaryPatternId: "PAT_02", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "I need a room / I have a booking. WANT_NEED Rep 2. "
        "First hostel interaction. Establishes you have a reservation.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 2,
    primaryPatternId: "PAT_05", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "My name is [X] / my booking is under [X]. "
        "IDENTITY_POSSESSION Rep 3. Third context: flight seat, customs name, now reservation.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 3,
    primaryPatternId: "PAT_08", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Here is my passport / ID. DOCUMENT_HANDOVER Rep 2. "
        "Same document, different institution. Custom vs hostel context.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 4,
    primaryPatternId: "PAT_03", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Where is my room / the lift / the bathroom? "
        "LOCATION_QUESTION Rep 2. Navigation inside a building.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 5,
    primaryPatternId: "PAT_06", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Is there WiFi? What is the password? "
        "YES_NO_AVAILABILITY Rep 3. Universal backpacker need.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 6,
    primaryPatternId: "PAT_10", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "What time is breakfast / checkout? TIME_QUESTION Rep 2. "
        "Schedule questions. Two time slots in one mission.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 7,
    primaryPatternId: "PAT_07", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "I am from [X] / I am a [job]. SELF_DECLARATION Rep 2. "
        "Hostel small talk with receptionist.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 8,
    primaryPatternId: "PAT_13", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Can I have one more towel / key? QUANTITY_MODIFIER first exposure. "
        "Slot = room supplies. Simple quantity request.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 9,
    primaryPatternId: "PAT_15", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Sorry, can you write down the WiFi password? "
        "POLITENESS_REPAIR Rep 3. Practical written communication request.",
  ),
  ScenarioSlot(
    missionId: 4, slotIndex: 10,
    primaryPatternId: "PAT_01", repNumber: 4,
    isDrillInjection: true,
    scenarioPurpose:
        "Give me a locker key / extra blanket. PAT_01 Rep 4. DRILL INJECTION. "
        "Request within hostel. Pattern now appearing in 4th different context.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 5 — THE CAFÉ (10 scenarios)
  // Goal: ordering, dietary restrictions, complaints, payment.
  // PAT_12 allergy variant — critical safety pattern.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 5, slotIndex: 1,
    primaryPatternId: "PAT_06", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Is there a table for one? YES_NO Rep 4. "
        "Availability check in a social space.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 2,
    primaryPatternId: "PAT_02", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "I want [X] to eat. WANT_NEED Rep 3. "
        "Food ordering. Slot = dish name.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 3,
    primaryPatternId: "PAT_01", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Give me [X] to drink. PAT_01 Rep 5. Same as M1 but now "
        "without intro mode. Full recall under social pressure.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 4,
    primaryPatternId: "PAT_12", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "I am allergic to nuts / dairy. PAT_12 Rep 3. "
        "Allergy variant — pre-emptive health declaration before ordering.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 5,
    primaryPatternId: "PAT_04", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "How much is this dish? PRICE_QUESTION Rep 2. "
        "Menu pricing — no price tag visible, must ask.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 6,
    primaryPatternId: "PAT_13", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "A little less spice / more rice please. QUANTITY_MODIFIER Rep 2. "
        "Food customisation. More/less modifier with food nouns.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 7,
    primaryPatternId: "PAT_11", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "This is not what I ordered / cold. NEGATION_PROBLEM Rep 2. "
        "Food complaint. Polite but assertive correction.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 8,
    primaryPatternId: "PAT_09", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "The bill for the table / take away box for this. "
        "PURPOSE_DESTINATION Rep 2. Purpose marker in food context.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 9,
    primaryPatternId: "PAT_07", repNumber: 3,
    isDrillInjection: true,
    scenarioPurpose:
        "I am vegetarian / vegan. SELF_DECLARATION Rep 3. DRILL INJECTION. "
        "Dietary identity — same PAT_07 structure, food context.",
  ),
  ScenarioSlot(
    missionId: 5, slotIndex: 10,
    primaryPatternId: "PAT_16", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Thank you, it was delicious. Social cluster Rep 5. "
        "Mission close. Compliment phrase added to cluster.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 6 — STREET MARKET (10 scenarios)
  // Goal: negotiation, pricing, quantities, walking away.
  // Highest-pressure transaction mission. PAT_04 stress-tested.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 6, slotIndex: 1,
    primaryPatternId: "PAT_04", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "How much is this? PRICE_QUESTION Rep 3. "
        "Market entry. No price tag. Must ask immediately.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 2,
    primaryPatternId: "PAT_02", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "I need / want [X]. WANT_NEED Rep 4. "
        "Expressing desire in negotiation context.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 3,
    primaryPatternId: "PAT_13", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Two of these / three pieces. QUANTITY_MODIFIER Rep 3. "
        "Bulk buying for better price. Numbers as slot.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 4,
    primaryPatternId: "PAT_11", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "This is too expensive / broken / not the right size. "
        "NEGATION_PROBLEM Rep 3. Complaint drives negotiation.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 5,
    primaryPatternId: "PAT_14", repNumber: 4,
    isDrillInjection: true,
    scenarioPurpose:
        "I'll go somewhere else. SPATIAL_COMMAND Rep 4. DRILL INJECTION. "
        "Walk-away negotiation move. Spatial pattern in social/market context.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 6,
    primaryPatternId: "PAT_08", repNumber: 3,
    isDrillInjection: true,
    scenarioPurpose:
        "Here is [amount] / here is my money. DOCUMENT_HANDOVER Rep 3. "
        "DRILL INJECTION: document handover = money handover variant.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 7,
    primaryPatternId: "PAT_15", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Excuse me — getting vendor's attention in a crowd. "
        "POLITENESS_REPAIR Rep 4. Attention-getting in noisy environment.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 8,
    primaryPatternId: "PAT_09", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "This bag for [X] / this item for my friend. "
        "PURPOSE_DESTINATION Rep 3. Gift buying purpose marker.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 9,
    primaryPatternId: "PAT_06", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Do you have this in another colour / size? "
        "YES_NO AVAILABILITY Rep 5. Product variation check.",
  ),
  ScenarioSlot(
    missionId: 6, slotIndex: 10,
    primaryPatternId: "PAT_01", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "Give me a receipt / bag / discount. PAT_01 Rep 6. "
        "Post-negotiation requests. Pattern near automaticity.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 7 — THE PHARMACY (10 scenarios)
  // Goal: symptoms, dosage, allergy, essentials.
  // PAT_12 final cluster — must be automatic by end of this mission.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 7, slotIndex: 1,
    primaryPatternId: "PAT_12", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "I have a headache / fever / stomach ache. PAT_12 Rep 4. "
        "Symptom declaration. Slot = body part + condition.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 2,
    primaryPatternId: "PAT_12", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "I have had this since this morning / yesterday. PAT_12 Rep 5. "
        "Duration of symptom. Time + medical state combined.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 3,
    primaryPatternId: "PAT_12", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "I am allergic to penicillin / this ingredient. PAT_12 Rep 6. "
        "Allergy variant in medical context. Highest-stakes PAT_12 use.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 4,
    primaryPatternId: "PAT_02", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "I need this medicine / paracetamol. WANT_NEED Rep 5. "
        "Requesting specific medicine by name.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 5,
    primaryPatternId: "PAT_04", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "How much is this? PRICE_QUESTION Rep 4. "
        "Medicine pricing check before purchase.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 6,
    primaryPatternId: "PAT_10", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "How many times per day? How long to take it? "
        "TIME_QUESTION Rep 3. Dosage timing — duration + frequency.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 7,
    primaryPatternId: "PAT_11", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "I don't have a prescription / insurance. "
        "NEGATION_PROBLEM Rep 4. Stating what you lack in medical context.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 8,
    primaryPatternId: "PAT_06", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "Do you have sunscreen / bandages / this specific brand? "
        "YES_NO AVAILABILITY Rep 6. Product search at pharmacy.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 9,
    primaryPatternId: "PAT_08", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Here is my insurance card / prescription. "
        "DOCUMENT_HANDOVER Rep 4. Medical document handover.",
  ),
  ScenarioSlot(
    missionId: 7, slotIndex: 10,
    primaryPatternId: "PAT_15", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Sorry, I didn't understand the dosage instructions. "
        "POLITENESS_REPAIR Rep 5. Critical repair — medication dosage.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 8 — TRAIN STATION (10 scenarios)
  // Goal: tickets, platforms, schedules, seat finding.
  // Multiple patterns hitting Rep 5-7 — approaching automaticity.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 8, slotIndex: 1,
    primaryPatternId: "PAT_09", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "One ticket to [X]. PURPOSE_DESTINATION Rep 4. "
        "Ticket purchase. Destination + quantity combined.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 2,
    primaryPatternId: "PAT_02", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "I need a sleeper / first class ticket. WANT_NEED Rep 6. "
        "Class specification. Near-final rep.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 3,
    primaryPatternId: "PAT_05", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "My seat / berth is [X]. IDENTITY_POSSESSION Rep 4. "
        "Seat claiming on train — potential conflict with other passengers.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 4,
    primaryPatternId: "PAT_03", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Where is platform [X]? LOCATION_QUESTION Rep 3. "
        "High-stakes navigation — missing the platform = missed train.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 5,
    primaryPatternId: "PAT_10", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "What time does the train leave / arrive? TIME_QUESTION Rep 4. "
        "Departure time check. High-stakes time question.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 6,
    primaryPatternId: "PAT_06", repNumber: 7,
    isDrillInjection: false,
    scenarioPurpose:
        "Is this the train to [X]? YES_NO AVAILABILITY Rep 7. FINAL REP. "
        "Confirmation before boarding — wrong train = disaster.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 7,
    primaryPatternId: "PAT_04", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "How much is an upgrade / platform ticket? PRICE_QUESTION Rep 5.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 8,
    primaryPatternId: "PAT_14", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Which direction is carriage [X] / the exit? "
        "SPATIAL_COMMAND Rep 5. Direction-finding on a train platform.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 9,
    primaryPatternId: "PAT_11", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "My ticket is not valid / not scanning. NEGATION_PROBLEM Rep 5. "
        "Technical problem at turnstile under time pressure.",
  ),
  ScenarioSlot(
    missionId: 8, slotIndex: 10,
    primaryPatternId: "PAT_08", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Here is my ticket / reservation. DOCUMENT_HANDOVER Rep 5. "
        "Ticket inspection on train.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 9 — LOCAL FRIEND'S HOUSE (12 scenarios)
  // Goal: informal register, cultural rituals, social navigation.
  // PAT_17 and PAT_18 introduced here for first and only time.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 9, slotIndex: 1,
    primaryPatternId: "PAT_16", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "Informal greeting at the door. Social cluster Rep 6. "
        "First use of informal greeting — register shift begins.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 2,
    primaryPatternId: "PAT_17", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Register shift introduction. PAT_17 Rep 1. FULL ASSIST. "
        "Formal → informal explained. The आप→तुम moment.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 3,
    primaryPatternId: "PAT_18", repNumber: 1,
    isDrillInjection: false,
    scenarioPurpose:
        "Cultural ritual introduction. PAT_18 Rep 1. FULL ASSIST. "
        "First chai offered. Script explained. Accept gracefully.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 4,
    primaryPatternId: "PAT_07", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "What do you do? I am a [job]. SELF_DECLARATION Rep 4. "
        "Social identity in informal context.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 5,
    primaryPatternId: "PAT_03", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Where is the bathroom? LOCATION_QUESTION Rep 4. "
        "The universal guest need. Informal register used.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 6,
    primaryPatternId: "PAT_13", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "A little more dal / rice please. QUANTITY_MODIFIER Rep 4. "
        "Food acceptance during hosting. Cultural warmth.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 7,
    primaryPatternId: "PAT_18", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Cultural ritual — declining the third chai gracefully. PAT_18 Rep 2. "
        "The refusal script. Culturally specific politeness.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 8,
    primaryPatternId: "PAT_17", repNumber: 2,
    isDrillInjection: false,
    scenarioPurpose:
        "Informal question to host's child / peer. PAT_17 Rep 2. "
        "Register drill — using informal with appropriate person.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 9,
    primaryPatternId: "PAT_12", repNumber: 7,
    isDrillInjection: true,
    scenarioPurpose:
        "I'm a bit tired / have a slight headache after dinner. "
        "PAT_12 Rep 7. FINAL REP. Medical state in social context — "
        "pattern now automatic across flight, café, pharmacy, and home.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 10,
    primaryPatternId: "PAT_14", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "Can you walk me to the main road / show me the way? "
        "SPATIAL_COMMAND Rep 6. Navigation help from host.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 11,
    primaryPatternId: "PAT_17", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Informal question / casual conversation. PAT_17 Rep 3. "
        "Register solidifying — feels natural by now.",
  ),
  ScenarioSlot(
    missionId: 9, slotIndex: 12,
    primaryPatternId: "PAT_18", repNumber: 3,
    isDrillInjection: false,
    scenarioPurpose:
        "Farewell ritual — thanking the family, complimenting the food. "
        "PAT_18 Rep 3. Culturally appropriate exit script.",
  ),

  // ════════════════════════════════════════════════════════
  // MISSION 10 — HOSTEL LOUNGE (8 scenarios) — DEPARTURE
  // Goal: social closure, mixing formal/informal, final retrieval.
  // Last chance for patterns to hit final rep counts.
  // Emotional close — passport stamp is the end of the journey.
  // ════════════════════════════════════════════════════════

  ScenarioSlot(
    missionId: 10, slotIndex: 1,
    primaryPatternId: "PAT_07", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "Where are you from? SELF_DECLARATION Rep 5. "
        "Social opener with fellow traveller.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 2,
    primaryPatternId: "PAT_07", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "I am from [X] / I am a [job]. SELF_DECLARATION Rep 6. "
        "Responding to the question from S1. Full exchange.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 3,
    primaryPatternId: "PAT_09", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "I'm going to [X] next / heading home. PURPOSE_DESTINATION Rep 5. "
        "Travel plans exchange.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 4,
    primaryPatternId: "PAT_17", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Casual peer conversation — using informal with fellow traveller. "
        "PAT_17 Rep 4. Register now contextually appropriate with peers.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 5,
    primaryPatternId: "PAT_13", repNumber: 5,
    isDrillInjection: false,
    scenarioPurpose:
        "One more round / another beer / a bit more. QUANTITY_MODIFIER Rep 5. "
        "Social context — lounge bar ordering.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 6,
    primaryPatternId: "PAT_15", repNumber: 6,
    isDrillInjection: false,
    scenarioPurpose:
        "Sorry, I didn't catch your name / where did you say? "
        "POLITENESS_REPAIR Rep 6. Casual social repair.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 7,
    primaryPatternId: "PAT_18", repNumber: 4,
    isDrillInjection: false,
    scenarioPurpose:
        "Teaching your cultural ritual to the fellow traveller. PAT_18 Rep 4. "
        "Role reversal — you explain your culture's ritual. "
        "Cements cultural knowledge through teaching.",
  ),
  ScenarioSlot(
    missionId: 10, slotIndex: 8,
    primaryPatternId: "PAT_16", repNumber: 7,
    isDrillInjection: false,
    scenarioPurpose:
        "Final goodbye. Social cluster Rep 7. FINAL REP. MASTER CLOSE. "
        "The last thing the user says in the entire course. "
        "Must land with emotional weight. Passport stamp. Journey complete.",
  ),
];

// ── Utility class ─────────────────────────────────────────────
class RepDistributionRegistry {

  static List<ScenarioSlot> getSlotsForMission(int missionId) =>
      repDistributionMap.where((s) => s.missionId == missionId).toList();

  static ScenarioSlot? getSlot(int missionId, int slotIndex) {
    try {
      return repDistributionMap.firstWhere(
        (s) => s.missionId == missionId && s.slotIndex == slotIndex,
      );
    } catch (_) {
      return null;
    }
  }

  static List<ScenarioSlot> getSlotsForPattern(String patternId) =>
      repDistributionMap.where((s) => s.primaryPatternId == patternId).toList();

  static List<ScenarioSlot> getDrillInjections() =>
      repDistributionMap.where((s) => s.isDrillInjection).toList();

  // Validation: check all patterns hit their rep targets
  static Map<String, int> getRepCounts() {
    final counts = <String, int>{};
    for (final slot in repDistributionMap) {
      counts[slot.primaryPatternId] =
          (counts[slot.primaryPatternId] ?? 0) + 1;
    }
    return counts;
  }

  static int get totalScenarios => repDistributionMap.length;
  static int get totalDrillInjections =>
      repDistributionMap.where((s) => s.isDrillInjection).length;
}
