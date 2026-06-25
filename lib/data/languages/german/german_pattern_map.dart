// lib/data/languages/german/german_pattern_map.dart
//
// GERMAN SCENARIO → PATTERN FLAT MAP
// =====================================
// Maps all 98 German scenario IDs to their primary pattern ID.

const Map<String, String> germanScenarioPatternMap = {

  // ── MISSION 1: THE FLIGHT (stub IDs) ────────────────────
  "DE_001": "PAT_16", // Guten Tag — social R1
  "DE_002": "PAT_05", // Mein Name ist — identity R1
  "DE_003": "PAT_01", // Einen [X] bitte — request R1
  "DE_004": "PAT_12", // Mir ist nicht gut — medical R1
  "DE_005": "PAT_02", // Ich hätte gerne — want R1
  "DE_006": "PAT_08", // Hier, bitte — handover R1
  "DE_007": "PAT_15", // Könnten Sie wiederholen — repair R1
  "DE_008": "PAT_16", // Danke schön — social R2

  // ── MISSION 2: BER TERMINAL ──────────────────────────────
  "DE_M02_S01": "PAT_16", // Guten Morgen — social R3
  "DE_M02_S02": "PAT_07", // Ich bin hier als Tourist — purpose R1
  "DE_M02_S03": "PAT_05", // Mein Name ist [X] — identity R2
  "DE_M02_S04": "PAT_08", // Hier, bitte — handover R2
  "DE_M02_S05": "PAT_09", // Mein Gepäck war auf Flug [X] — purpose/destination R1
  "DE_M02_S06": "PAT_03", // Wo ist der Ausgang? — location R1
  "DE_M02_S07": "PAT_06", // Gibt es eine S-Bahn? — availability R1
  "DE_M02_S08": "PAT_10", // Wann fährt die nächste S-Bahn? — time R1
  "DE_M02_S09": "PAT_15", // Könnten Sie das wiederholen? — repair R2
  "DE_M02_S10": "PAT_01", // Einen Fahrschein nach [X] — request R2 (DRILL)

  // ── MISSION 3: THE TAXI ──────────────────────────────────
  "DE_M03_S01": "PAT_14", // Fahren Sie bitte zu [X] — direction R1
  "DE_M03_S02": "PAT_14", // Fahren Sie geradeaus — direction R2
  "DE_M03_S03": "PAT_14", // Biegen Sie rechts ab — direction R3
  "DE_M03_S04": "PAT_06", // Nehmen Sie Karten? — availability R2
  "DE_M03_S05": "PAT_04", // Was kostet das? — price R1
  "DE_M03_S06": "PAT_11", // Das ist zu teuer — constraint R1
  "DE_M03_S07": "PAT_01", // Eine Quittung, bitte — request R3 (DRILL)
  "DE_M03_S08": "PAT_15", // Haben Sie mich richtig verstanden? — repair R3
  "DE_M03_S09": "PAT_12", // Halten Sie hier — urgency R2
  "DE_M03_S10": "PAT_16", // Danke schön, schönen Abend — social R4

  // ── MISSION 4: THE HOTEL ─────────────────────────────────
  "DE_M04_S01": "PAT_02", // Ich habe eine Reservierung — claim R2
  "DE_M04_S02": "PAT_05", // Mein Name ist [X] — identity R3
  "DE_M04_S03": "PAT_08", // Hier, bitte — handover R3
  "DE_M04_S04": "PAT_03", // Wo ist mein Zimmer? — location R2
  "DE_M04_S05": "PAT_06", // Gibt es WLAN? — availability R3
  "DE_M04_S06": "PAT_10", // Wann gibt es Frühstück? — time R2
  "DE_M04_S07": "PAT_07", // Ich komme aus [X] — origin R2
  "DE_M04_S08": "PAT_13", // Könnten Sie ein Kissen bringen? — service R1
  "DE_M04_S09": "PAT_15", // Check-out um elf, richtig? — repair R4
  "DE_M04_S10": "PAT_01", // Einen Stadtplan, bitte — request R4 (DRILL)

  // ── MISSION 5: CAFÉ & BAKERY ─────────────────────────────
  "DE_M05_S01": "PAT_06", // Ist dieser Platz frei? — availability R4
  "DE_M05_S02": "PAT_02", // Ich hätte gerne einen Kaffee — want R3
  "DE_M05_S03": "PAT_01", // Einen [X], bitte — request R5 (DRILL)
  "DE_M05_S04": "PAT_12", // Die Rechnung, bitte — urgency R3
  "DE_M05_S05": "PAT_04", // Was kostet ein Stück Kuchen? — price R2
  "DE_M05_S06": "PAT_13", // Könnten Sie noch etwas Brot bringen? — service R2
  "DE_M05_S07": "PAT_11", // Ich bin Vegetarier/in — constraint R2
  "DE_M05_S08": "PAT_09", // Zum Mitnehmen, bitte — purpose R2
  "DE_M05_S09": "PAT_07", // Woher kommen Sie? — origin question R3 (DRILL)
  "DE_M05_S10": "PAT_16", // Tschüss! Schönen Tag! — social R5

  // ── MISSION 6: MARKETS ───────────────────────────────────
  "DE_M06_S01": "PAT_04", // Was kostet der Käse? — price R3
  "DE_M06_S02": "PAT_02", // 200 Gramm, bitte — want R4
  "DE_M06_S03": "PAT_13", // Könnten Sie es einpacken? — service R3
  "DE_M06_S04": "PAT_11", // Das ist zu teuer — constraint R3
  "DE_M06_S05": "PAT_14", // Ist die Bühne in diese Richtung? — direction R4 (DRILL)
  "DE_M06_S06": "PAT_08", // Hier, bitte — handover R4 (DRILL)
  "DE_M06_S07": "PAT_15", // Wie bitte? Wie viel haben Sie gesagt? — repair R5
  "DE_M06_S08": "PAT_09", // Ich suche ein Mitbringsel — purpose R3
  "DE_M06_S09": "PAT_06", // Haben Sie eine kleinere Größe? — availability R5
  "DE_M06_S10": "PAT_01", // Eine Tüte, bitte — request R6 (DRILL)

  // ── MISSION 7: PHARMACY ──────────────────────────────────
  "DE_M07_S01": "PAT_12", // Ich habe Kopfschmerzen — medical R4
  "DE_M07_S02": "PAT_12", // Ich habe Fieber — medical R5
  "DE_M07_S03": "PAT_02", // Ich hätte gerne [X] — want R5
  "DE_M07_S04": "PAT_04", // Was kostet das? — price R4
  "DE_M07_S05": "PAT_10", // Wie oft soll ich es nehmen? — time R3
  "DE_M07_S06": "PAT_11", // Ich bin allergisch gegen [X] — constraint R4
  "DE_M07_S07": "PAT_06", // Haben Sie Sonnencreme? — availability R6
  "DE_M07_S08": "PAT_08", // Hier, bitte — mein Rezept — handover R5 (DRILL)
  "DE_M07_S09": "PAT_15", // Vor oder nach dem Essen? — repair R6
  "DE_M07_S10": "PAT_12", // Es geht mir besser — positive state R6

  // ── MISSION 8: RESTAURANT ────────────────────────────────
  "DE_M08_S01": "PAT_02", // Ich habe für zwei Personen reserviert — claim R6
  "DE_M08_S02": "PAT_06", // Gibt es noch einen Tisch draußen? — availability R7
  "DE_M08_S03": "PAT_13", // Könnten Sie die Weinkarte bringen? — service R4
  "DE_M08_S04": "PAT_04", // Was kostet das Tagesgericht? — price R5
  "DE_M08_S05": "PAT_11", // Könnte ich das ohne Zwiebeln bekommen? — constraint R5
  "DE_M08_S06": "PAT_16", // Prost! Auf einen schönen Abend! — social R6
  "DE_M08_S07": "PAT_10", // Bis wann hat die Küche geöffnet? — time R4
  "DE_M08_S08": "PAT_01", // Ich hätte gerne einen Apfelstrudel — request R7 (DRILL)
  "DE_M08_S09": "PAT_09", // Getrennt, bitte — purpose/separation R4
  "DE_M08_S10": "PAT_12", // Es war wunderbar — positive state R7

  // ── MISSION 9: GETTING AROUND ────────────────────────────
  "DE_M09_S01": "PAT_03", // Wo ist die U-Bahn-Station? — location R3
  "DE_M09_S02": "PAT_14", // Ich möchte zur [X] — direction R5
  "DE_M09_S03": "PAT_10", // Wann fährt die letzte U-Bahn? — time R4
  "DE_M09_S04": "PAT_13", // Ich muss meinen Fahrschein entwerten — service R5
  "DE_M09_S05": "PAT_03", // Wo ist die Straßenbahn-Haltestelle? — location R4
  "DE_M09_S06": "PAT_09", // Eine Rückfahrkarte nach [X] — purpose R4
  "DE_M09_S07": "PAT_14", // Ich habe mich verirrt — direction emergency R6
  "DE_M09_S08": "PAT_02", // Ich möchte eine Tageskarte — want R7
  "DE_M09_S09": "PAT_15", // Bin ich auf dem richtigen Gleis? — repair R7
  "DE_M09_S10": "PAT_01", // Einen Netzplan, bitte — request R8 (DRILL)

  // ── MISSION 10: THE DEPARTURE ────────────────────────────
  "DE_M10_S01": "PAT_16", // Guten Morgen — social R7
  "DE_M10_S02": "PAT_05", // Mein Name ist [X] — identity R4
  "DE_M10_S03": "PAT_02", // Ich möchte meinen Koffer aufgeben — want R8
  "DE_M10_S04": "PAT_04", // Was kostet das Übergepäck? — price R6
  "DE_M10_S05": "PAT_11", // Könnten Sie ein Auge zudrücken? — constraint R6
  "DE_M10_S06": "PAT_08", // Hier, bitte — meine Bordkarte — handover R6
  "DE_M10_S07": "PAT_03", // Wo ist Gate B24? — location R5
  "DE_M10_S08": "PAT_10", // Wann beginnt das Boarding? — time R5
  "DE_M10_S09": "PAT_06", // Gibt es noch einen Fensterplatz? — availability R7 (note: M08_S02 also R7, consistent)
  "DE_M10_S10": "PAT_15", // Ich komme aus [X] + Tschüss Berlin — repair R8 + PAT_07 R5
};
