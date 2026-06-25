// lib/data/languages/hindi/hindi_pattern_map.dart
//
// HINDI SCENARIO → PATTERN MAP
// ==============================
// Maps all 96 Hindi scenario IDs to their primary pattern.
// Used by PatternRegistryRouter for drill engine lookup.

const Map<String, String> hindiScenarioPatternMap = {

  // ── MISSION 1 ────────────────────────────────────────────
  "M01_S01": "PAT_16", // नमस्ते — social cluster R1
  "M01_S02": "PAT_05", // मेरी सीट X है — identity R1
  "M01_S03": "PAT_01", // [X] दीजिए — request R1
  "M01_S04": "PAT_12", // मुझे तकलीफ हो रही है — medical R1
  "M01_S05": "PAT_02", // मुझे [X] चाहिए — want/need R1
  "M01_S06": "PAT_16", // शुक्रिया, अलविदा — social R2

  // ── MISSION 2 ────────────────────────────────────────────
  "M02_S01": "PAT_16", // नमस्ते — social R3
  "M02_S02": "PAT_07", // मैं पर्यटन के लिए — self declaration R1
  "M02_S03": "PAT_05", // मेरा नाम [X] है — identity R2
  "M02_S04": "PAT_08", // यह रहा मेरा पासपोर्ट — handover R1
  "M02_S05": "PAT_09", // [X] फ्लाइट से आना था — purpose R1
  "M02_S06": "PAT_03", // बाहर जाने का रास्ता कहाँ — location R1
  "M02_S07": "PAT_06", // क्या यहाँ प्रीपेड टैक्सी है — yes/no R1
  "M02_S08": "PAT_10", // आखिरी मेट्रो कितने बजे — time R1
  "M02_S09": "PAT_15", // माफ़ कीजिए धीरे दोबारा — repair R1
  "M02_S10": "PAT_01", // [X] का एक टिकट दीजिए — request R2 DRILL

  // ── MISSION 3 ────────────────────────────────────────────
  "M03_S01": "PAT_14", // [X] चलिए — spatial R1
  "M03_S02": "PAT_14", // पहले [X] रोकना — spatial R2
  "M03_S03": "PAT_14", // बाईं तरफ मुड़िए — spatial R3
  "M03_S04": "PAT_06", // क्या यह सही रास्ता है — yes/no R2
  "M03_S05": "PAT_04", // मीटर में कितना है — price R1
  "M03_S06": "PAT_11", // यह मीटर सही नहीं चल रहा — negation R1
  "M03_S07": "PAT_01", // छुट्टे दीजिए — request R3 DRILL
  "M03_S08": "PAT_15", // समझ नहीं आया दोबारा — repair R2
  "M03_S09": "PAT_12", // मुझे चक्कर आ रहा है — medical R2 DRILL
  "M03_S10": "PAT_16", // शुक्रिया भाई अलविदा — social R4

  // ── MISSION 4 ────────────────────────────────────────────
  "M04_S01": "PAT_02", // मेरी बुकिंग है — want/need R2
  "M04_S02": "PAT_05", // मेरा नाम [X] है — identity R3
  "M04_S03": "PAT_08", // यह रहा मेरा पासपोर्ट — handover R2
  "M04_S04": "PAT_03", // लिफ्ट कहाँ है — location R2
  "M04_S05": "PAT_06", // क्या यहाँ वाईफाई है — yes/no R3
  "M04_S06": "PAT_10", // नाश्ता कितने बजे मिलता है — time R2
  "M04_S07": "PAT_07", // मैं [X] हूँ — self declaration R2
  "M04_S08": "PAT_13", // एक और तौलिया दीजिए — quantity R1
  "M04_S09": "PAT_15", // क्या आप यह लिख सकती हैं — repair R3
  "M04_S10": "PAT_01", // एक और कम्बल दीजिए — request R4 DRILL

  // ── MISSION 5 ────────────────────────────────────────────
  "M05_S01": "PAT_06", // क्या कोई मेज़ खाली है — yes/no R4
  "M05_S02": "PAT_02", // मुझे [X] चाहिए — want/need R3
  "M05_S03": "PAT_01", // [X] दीजिए — request R5
  "M05_S04": "PAT_12", // मुझे मेवों से एलर्जी है — medical R3
  "M05_S05": "PAT_04", // यह कितने का है — price R2
  "M05_S06": "PAT_13", // थोड़ा कम मसाला करना — quantity R2
  "M05_S07": "PAT_11", // यह मेरा ऑर्डर नहीं है — negation R2
  "M05_S08": "PAT_09", // बाहर ले जाना है — purpose R2
  "M05_S09": "PAT_07", // मैं शाकाहारी हूँ — self declaration R3 DRILL
  "M05_S10": "PAT_16", // शुक्रिया खाना स्वादिष्ट था — social R5

  // ── MISSION 6 ────────────────────────────────────────────
  "M06_S01": "PAT_04", // इसका क्या दाम है — price R3
  "M06_S02": "PAT_02", // छूट चाहिए — want/need R4
  "M06_S03": "PAT_13", // ढाई सौ रुपये में दीजिए — quantity R3
  "M06_S04": "PAT_11", // ज़िप सही नहीं चल रही — negation R3
  "M06_S05": "PAT_14", // मैं कहीं और देखता हूँ — spatial R4 DRILL
  "M06_S06": "PAT_08", // यह रहे तीन सौ पचास — handover R3 DRILL
  "M06_S07": "PAT_15", // सुनिए जी — repair R4
  "M06_S08": "PAT_09", // दोस्त के लिए तोहफ़ा — purpose R3
  "M06_S09": "PAT_06", // क्या नीले रंग में है — yes/no R5
  "M06_S10": "PAT_01", // एक पर्ची दीजिए — request R6

  // ── MISSION 7 ────────────────────────────────────────────
  "M07_S01": "PAT_12", // सिर में दर्द है — medical R4
  "M07_S02": "PAT_12", // सुबह से है — medical R5
  "M07_S03": "PAT_12", // मुझे ibuprofen से एलर्जी — medical R6
  "M07_S04": "PAT_02", // [X] भी चाहिए — want/need R5
  "M07_S05": "PAT_04", // सब मिलाकर कितना हुआ — price R4
  "M07_S06": "PAT_10", // रोज़ कितनी गोलियाँ लेनी हैं — time R3
  "M07_S07": "PAT_11", // मेरे पास पर्ची नहीं है — negation R4
  "M07_S08": "PAT_06", // सनस्क्रीन मिलती है क्या — yes/no R6
  "M07_S09": "PAT_08", // यह रहा मेरा इंश्योरेंस — handover R4
  "M07_S10": "PAT_15", // खाने से पहले या बाद में — repair R5

  // ── MISSION 8 ────────────────────────────────────────────
  "M08_S01": "PAT_09", // [X] के लिए एक टिकट — purpose R4
  "M08_S02": "PAT_02", // स्लीपर क्लास चाहिए — want/need R6
  "M08_S03": "PAT_05", // मेरी सीट बाईस है — identity R4
  "M08_S04": "PAT_03", // प्लेटफ़ॉर्म पाँच कहाँ है — location R3
  "M08_S05": "PAT_10", // पुणे की गाड़ी कितने बजे — time R4
  "M08_S06": "PAT_06", // क्या यह पुणे की गाड़ी है — yes/no R7 FINAL
  "M08_S07": "PAT_04", // AC अपग्रेड कितने का होगा — price R5
  "M08_S08": "PAT_14", // Coach B4 किस तरफ है — spatial R5
  "M08_S09": "PAT_11", // मेरा टिकट स्कैन नहीं हो रहा — negation R5
  "M08_S10": "PAT_08", // यह रहा मेरा टिकट — handover R5

  // ── MISSION 9 ────────────────────────────────────────────
  "M09_S01": "PAT_16", // नमस्ते कैसा है — social R6
  "M09_S02": "PAT_17", // आप कैसी हैं — register shift R1
  "M09_S03": "PAT_18", // हाँ ज़रूर बहुत शुक्रिया — cultural ritual R1
  "M09_S04": "PAT_07", // मैं [X] हूँ — self declaration R4
  "M09_S05": "PAT_03", // वॉशरूम कहाँ है — location R4
  "M09_S06": "PAT_13", // थोड़ी और दाल दीजिए — quantity R4
  "M09_S07": "PAT_18", // बस बस बहुत हो गया — cultural ritual R2
  "M09_S08": "PAT_17", // तुम कैसी हो — register shift R2
  "M09_S09": "PAT_12", // थोड़ा थका हुआ हूँ — medical R7 FINAL
  "M09_S10": "PAT_14", // मुख्य सड़क तक छोड़ दो — spatial R6
  "M09_S11": "PAT_17", // तुम्हें Mumbai में क्या पसंद — register R3
  "M09_S12": "PAT_18", // मिलकर बहुत अच्छा लगा — cultural ritual R3

  // ── MISSION 10 ───────────────────────────────────────────
  "M10_S01": "PAT_07", // आप कहाँ से हैं — self declaration R5
  "M10_S02": "PAT_07", // मैं [X] से हूँ — self declaration R6
  "M10_S03": "PAT_09", // अब मैं [X] जा रहा हूँ — purpose R5
  "M10_S04": "PAT_17", // तुम कितने दिन से travel — register R4
  "M10_S05": "PAT_13", // एक और चाय लेगी — quantity R5
  "M10_S06": "PAT_15", // नाम समझ नहीं आया — repair R6
  "M10_S07": "PAT_18", // बस बस का मतलब — cultural ritual R4
  "M10_S08": "PAT_16", // मिलकर अच्छा लगा अलविदा — social R7 FINAL
};
