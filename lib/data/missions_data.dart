// lib/data/missions_data.dart
import '../models/models.dart';

final List<Mission> allMissions = [
  Mission(missionId: 1, title: "THE FLIGHT", subtitle: "In-Transit", emoji: "✈️", environment: "Somewhere above the clouds", isUnlocked: true),
  Mission(missionId: 2, title: "THE TERMINAL", subtitle: "Arrival", emoji: "🛬", environment: "Customs & Baggage Claim"),
  Mission(missionId: 3, title: "THE TAXI", subtitle: "Transit", emoji: "🚕", environment: "City streets at night"),
  Mission(missionId: 4, title: "THE HOTEL", subtitle: "Check-in", emoji: "🏨", environment: "Front desk, bags everywhere"),
  Mission(missionId: 5, title: "THE CAFÉ", subtitle: "Sustenance", emoji: "☕", environment: "Local café, morning rush"),
  Mission(missionId: 6, title: "STREET MARKET", subtitle: "Procurement", emoji: "🛒", environment: "Chaotic open-air market"),
  Mission(missionId: 7, title: "THE PHARMACY", subtitle: "Health", emoji: "💊", environment: "Small pharmacy, bright lights"),
  Mission(missionId: 8, title: "THE RESTAURANT", subtitle: "Dining", emoji: "🍽️", environment: "Evening restaurant"),
  Mission(missionId: 9, title: "GETTING AROUND", subtitle: "Navigation", emoji: "🚆", environment: "Metro, bus, streets"),
  Mission(missionId: 10, title: "THE DEPARTURE", subtitle: "Homeward", emoji: "🌍", environment: "Airport departure day"),
];

const Map<int, String> missionBadgeNames = {
  1: "The Sky Walker Badge",
  2: "The Border Crosser Badge",
  3: "The City Navigator Badge",
  4: "The Check-In Champion Badge",
  5: "The Street Food Legend Badge",
  6: "The Haggler's Crown Badge",
  7: "The Survivor's Kit Badge",
  8: "The Dining Legend Badge",
  9: "The Rail Rider Badge",
  10: "The Global Citizen Badge",
};

const Map<int, String> missionUnlockMessages = {
  1: "You survived 30,000 feet of awkward silence.",
  2: "You crossed the border. Welcome to the real world.",
  3: "You didn't end up in the wrong part of town. Barely.",
  4: "You have a bed. That's everything right now.",
  5: "You ate something. You don't know what. It was amazing.",
  6: "You paid less than the sticker price. Legend.",
  7: "You explained your pain in a foreign language. Respect.",
  8: "You dined. You toasted. You were present.",
  9: "You're going somewhere new. By yourself.",
  10: "You made it. In a language that isn't yours.",
};
