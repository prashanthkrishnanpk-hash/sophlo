// lib/data/languages/french/french_pattern_map.dart
//
// FRENCH SCENARIO → PATTERN FLAT MAP
// =====================================
// Maps all 98 French scenario IDs to their primary pattern ID.

const Map<String, String> frenchScenarioPatternMap = {

  // ── MISSION 1: THE FLIGHT (stub IDs) ────────────────────
  "FR_001": "PAT_16", // Bonjour — social R1
  "FR_002": "PAT_05", // Je m'appelle — identity R1
  "FR_003": "PAT_01", // ~s'il vous plaît — request R1
  "FR_004": "PAT_12", // Je ne me sens pas bien — medical R1
  "FR_005": "PAT_02", // Je voudrais — want R1
  "FR_006": "PAT_08", // Voici — handover R1
  "FR_007": "PAT_15", // Pouvez-vous répéter — repair R1
  "FR_008": "PAT_16", // Merci beaucoup — social R2

  // ── MISSION 2: CDG TERMINAL ───────────────────────────────
  "FR_M02_S01": "PAT_16", // Bonjour — social R3
  "FR_M02_S02": "PAT_07", // Je suis ici en touriste — purpose R1
  "FR_M02_S03": "PAT_05", // Je m'appelle [X] — identity R2
  "FR_M02_S04": "PAT_08", // Voici mon passeport — handover R2
  "FR_M02_S05": "PAT_09", // Mon bagage était sur le vol [X] — purpose/destination R1
  "FR_M02_S06": "PAT_03", // Où est la sortie ? — location R1
  "FR_M02_S07": "PAT_06", // Est-ce qu'il y a un RER ? — availability R1
  "FR_M02_S08": "PAT_10", // À quelle heure est le prochain train ? — time R1
  "FR_M02_S09": "PAT_15", // Pouvez-vous répéter ? — repair R2
  "FR_M02_S10": "PAT_01", // Un billet pour [X] — request R2 (DRILL)

  // ── MISSION 3: THE TAXI ──────────────────────────────────
  "FR_M03_S01": "PAT_14", // Conduisez-moi à [X] — direction R1
  "FR_M03_S02": "PAT_14", // Tout droit — direction R2
  "FR_M03_S03": "PAT_14", // Tournez à gauche — direction R3
  "FR_M03_S04": "PAT_06", // Acceptez-vous les cartes ? — availability R2
  "FR_M03_S05": "PAT_04", // Combien ça coûte ? — price R1
  "FR_M03_S06": "PAT_11", // C'est trop cher — constraint R1
  "FR_M03_S07": "PAT_01", // Un reçu, s'il vous plaît — request R3 (DRILL)
  "FR_M03_S08": "PAT_15", // Vous avez bien compris ? — repair R3
  "FR_M03_S09": "PAT_12", // Arrêtez-vous ici — urgency R2
  "FR_M03_S10": "PAT_16", // Merci beaucoup, bonsoir — social R4

  // ── MISSION 4: THE HOTEL ─────────────────────────────────
  "FR_M04_S01": "PAT_02", // J'ai une réservation — claim R2
  "FR_M04_S02": "PAT_05", // Je m'appelle [X] — identity R3
  "FR_M04_S03": "PAT_08", // Voici mon passeport — handover R3
  "FR_M04_S04": "PAT_03", // Où est ma chambre ? — location R2
  "FR_M04_S05": "PAT_06", // Est-ce qu'il y a du WiFi ? — availability R3
  "FR_M04_S06": "PAT_10", // À quelle heure est le petit-déjeuner ? — time R2
  "FR_M04_S07": "PAT_07", // Je viens de [X] — origin R2
  "FR_M04_S08": "PAT_13", // Pourriez-vous m'apporter un oreiller — service R1
  "FR_M04_S09": "PAT_15", // Le check-out est à midi, c'est bien ça ? — repair R4
  "FR_M04_S10": "PAT_01", // Un plan du quartier — request R4 (DRILL)

  // ── MISSION 5: CAFÉ & BOULANGERIE ────────────────────────
  "FR_M05_S01": "PAT_06", // Cette place est libre ? — availability R4
  "FR_M05_S02": "PAT_02", // Je voudrais un café — want R3
  "FR_M05_S03": "PAT_01", // Un [X], s'il vous plaît — request R5 (DRILL)
  "FR_M05_S04": "PAT_12", // L'addition, s'il vous plaît — urgency R3
  "FR_M05_S05": "PAT_04", // Combien coûte la baguette ? — price R2
  "FR_M05_S06": "PAT_13", // Encore du pain — service R2
  "FR_M05_S07": "PAT_11", // Je suis végétarien/ne — constraint R2
  "FR_M05_S08": "PAT_09", // À emporter — purpose R2
  "FR_M05_S09": "PAT_07", // Vous venez d'où ? — origin question R3 (DRILL)
  "FR_M05_S10": "PAT_16", // Bonne journée — social R5

  // ── MISSION 6: MARCHÉ ─────────────────────────────────────
  "FR_M06_S01": "PAT_04", // Combien coûte le fromage ? — price R3
  "FR_M06_S02": "PAT_02", // 200 grammes, s'il vous plaît — want R4
  "FR_M06_S03": "PAT_13", // Pourriez-vous l'emballer ? — service R3
  "FR_M06_S04": "PAT_11", // C'est trop cher — constraint R3
  "FR_M06_S05": "PAT_14", // C'est par ici ? — direction R4 (DRILL)
  "FR_M06_S06": "PAT_08", // Voici — handover R4 (DRILL)
  "FR_M06_S07": "PAT_15", // Combien avez-vous dit ? — repair R5
  "FR_M06_S08": "PAT_09", // Je cherche un cadeau — purpose R3
  "FR_M06_S09": "PAT_06", // Une plus petite taille ? — availability R5
  "FR_M06_S10": "PAT_01", // Un sac, s'il vous plaît — request R6 (DRILL)

  // ── MISSION 7: PHARMACIE ─────────────────────────────────
  "FR_M07_S01": "PAT_12", // J'ai mal à la tête — medical R4
  "FR_M07_S02": "PAT_12", // J'ai de la fièvre — medical R5
  "FR_M07_S03": "PAT_02", // Je voudrais [X] — want R5
  "FR_M07_S04": "PAT_04", // Combien ça coûte ? — price R4
  "FR_M07_S05": "PAT_10", // Combien de fois par jour ? — time R3
  "FR_M07_S06": "PAT_11", // Je suis allergique à [X] — constraint R4
  "FR_M07_S07": "PAT_06", // Est-ce qu'il y a de la crème solaire ? — availability R6
  "FR_M07_S08": "PAT_08", // Voici mon ordonnance — handover R5 (DRILL)
  "FR_M07_S09": "PAT_15", // Avant ou après les repas ? — repair R6
  "FR_M07_S10": "PAT_12", // Je me sens mieux — positive state R6

  // ── MISSION 8: RESTAURANT ────────────────────────────────
  "FR_M08_S01": "PAT_02", // J'ai réservé pour deux — claim R6
  "FR_M08_S02": "PAT_06", // Une table en terrasse ? — availability R7
  "FR_M08_S03": "PAT_13", // La carte des vins — service R4
  "FR_M08_S04": "PAT_04", // Combien coûte le plat du jour ? — price R5
  "FR_M08_S05": "PAT_11", // Sans ail — constraint R5
  "FR_M08_S06": "PAT_16", // Santé ! — social R6
  "FR_M08_S07": "PAT_10", // Jusqu'à quelle heure est la cuisine ? — time R4
  "FR_M08_S08": "PAT_01", // La tarte tatin — request R7 (DRILL)
  "FR_M08_S09": "PAT_09", // Séparément — purpose/separation R4
  "FR_M08_S10": "PAT_12", // C'était délicieux — positive state R7

  // ── MISSION 9: SE DÉPLACER ───────────────────────────────
  "FR_M09_S01": "PAT_03", // Où est le métro ? — location R3
  "FR_M09_S02": "PAT_14", // Je voudrais aller à [X] — direction R5
  "FR_M09_S03": "PAT_10", // À quelle heure est le dernier métro ? — time R5
  "FR_M09_S04": "PAT_13", // Pourriez-vous valider mon billet ? — service R5
  "FR_M09_S05": "PAT_03", // Où est l'arrêt de bus ? — location R4
  "FR_M09_S06": "PAT_09", // Un aller-retour pour Versailles — purpose R4
  "FR_M09_S07": "PAT_14", // Je suis perdu(e) — direction emergency R6
  "FR_M09_S08": "PAT_02", // Je voudrais un pass journée — want R7
  "FR_M09_S09": "PAT_15", // C'est le bon quai ? — repair R7
  "FR_M09_S10": "PAT_01", // Un plan du métro — request R8 (DRILL)

  // ── MISSION 10: LE DÉPART ────────────────────────────────
  "FR_M10_S01": "PAT_16", // Bonjour — social R7
  "FR_M10_S02": "PAT_05", // Je m'appelle [X] — identity R4
  "FR_M10_S03": "PAT_02", // Je voudrais enregistrer ma valise — want R8
  "FR_M10_S04": "PAT_04", // Combien coûte l'excédent de bagages ? — price R6
  "FR_M10_S05": "PAT_11", // Vous pouvez faire une exception ? — constraint R6
  "FR_M10_S06": "PAT_08", // Voici ma carte d'embarquement — handover R6
  "FR_M10_S07": "PAT_03", // Où est la porte E72 ? — location R5
  "FR_M10_S08": "PAT_10", // L'embarquement commence à quelle heure ? — time R5
  "FR_M10_S09": "PAT_09", // Un siège côté hublot ? — purpose/seat R5
  "FR_M10_S10": "PAT_15", // Je viens de [X] + au revoir Paris — repair R8 + PAT_07 R5
};
