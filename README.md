# Sophlo — Linguistic Survival Simulation

**Survive anywhere. Sophie will get you through it.**

A Flutter app (iOS + Android) that teaches 7 languages through immersive, pressure-based travel scenarios.

---

## Languages Included

| Language | City Arc | Missions | Scenarios |
|----------|----------|----------|-----------|
| 🇮🇳 Hindi | Delhi / Mumbai | 10/10 ✅ | 96 |
| 🇬🇧 English | London | 10/10 ✅ | 96 |
| 🇪🇸 Spanish | Barcelona | 10/10 ✅ | 96 |
| 🇯🇵 Japanese | Tokyo | 10/10 ✅ | 98 |
| 🇩🇪 German | Berlin | 10/10 ✅ | 98 |
| 🇰🇷 Korean | Seoul | 10/10 ✅ | 98 |
| 🇫🇷 French | Paris | 10/10 ✅ | 98 |

**Total: 680 scenarios across all 7 complete languages — PROJECT COMPLETE**

---

## Architecture

```
lib/
├── main.dart                     # App entry, router
├── models/models.dart            # Language, Mission, Scenario, UserProgress
├── theme/sophlo_theme.dart       # Design system — dark, neon, graffiti
├── providers/
│   └── user_progress_provider.dart   # State management (Provider)
├── engine/
│   ├── drill_engine.dart         # Spaced repetition + pattern mastery
│   └── pattern_registry_router.dart  # Language → scenario → pattern lookup
├── screens/
│   ├── onboarding_screen.dart    # Language selection
│   ├── departure_date_screen.dart # Mission clock setup
│   ├── home_screen.dart          # Mission board + progress
│   ├── mission_screen.dart       # Core gameplay loop
│   └── celebration_screen.dart   # Mission complete
├── widgets/
│   └── pattern_mastery_widget.dart # PAT_01–PAT_16 progress display
└── data/
    ├── missions_data.dart
    ├── scenario_repository.dart      # Central data access layer
    ├── core/
    │   ├── universal_patterns.dart   # 16 universal grammar patterns
    │   └── rep_distribution_map.dart
    ├── languages/
    │   ├── hindi/hindi_pattern_map.dart
    │   ├── english/english_pattern_registry.dart
    │   ├── spanish/spanish_pattern_map.dart
    │   ├── japanese/japanese_pattern_map.dart
    │   ├── german/german_pattern_map.dart
    │   └── korean/korean_pattern_map.dart
    └── scenarios/
        ├── hindi/      (M01–M10, all_scenarios aggregator)
        ├── english/    (M01–M10, all_scenarios aggregator)
        ├── spanish/    (M01–M10, all_scenarios aggregator)
        ├── japanese/   (M02–M10 + M01 stub, all_scenarios aggregator)
        ├── german/     (M02–M10 + M01 stub, all_scenarios aggregator)
        └── korean/     (M02–M10 + M01 stub, all_scenarios aggregator)
```

---

## Getting Started

### Prerequisites
- Flutter SDK 3.19+ ([install](https://flutter.dev/docs/get-started/install))
- Xcode 15+ (for iOS)
- Android Studio / SDK (for Android)

### Setup

```bash
cd sophlo
flutter pub get
flutter run
```

### Platform-specific

**Android:**
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

**iOS:**
```bash
flutter build ios --release
# then open ios/Runner.xcworkspace in Xcode and archive
```

---

## The 16 Universal Patterns

Every scenario drills one of 16 patterns (PAT_01–PAT_16):

| ID | Template | English Meaning |
|----|----------|----------------|
| PAT_01 | Give me [NOUN] | Polite request — core of all transactions |
| PAT_02 | I have / I'd like [NOUN] | Claim & desire declaration |
| PAT_03 | Where is [NOUN]? | Location question |
| PAT_04 | How much is [NOUN]? | Price question |
| PAT_05 | My name is [X] | Identity declaration |
| PAT_06 | Is there [NOUN]? | Availability question |
| PAT_07 | I'm here for / from [X] | Purpose & origin |
| PAT_08 | Here is [NOUN] | Document/object handover |
| PAT_09 | [NOUN] for [X] | Purpose postposition |
| PAT_10 | What time is [X]? | Schedule question |
| PAT_11 | Too expensive / allergic / without | Constraint & refusal |
| PAT_12 | I feel / hurt | Physical state |
| PAT_13 | Can you bring [NOUN]? | Service request |
| PAT_14 | Take me to / go [direction] | Directional command |
| PAT_15 | Can you repeat? / Did you understand? | Communication repair |
| PAT_16 | Hello / Thank you / Goodbye | Social fixed phrases |

---

## All 7 Languages Complete

Hindi, English, Spanish, Japanese, German, Korean, and French all have full 10-mission arcs (96-98 scenarios each), complete pattern maps, and are wired into the scenario repository and pattern registry router.


---

## Assets Required

Create these directories and add:
```
assets/images/   — sophie_mascot.png, language flag images
assets/audio/    — (optional) NPC response audio clips
assets/lottie/   — (optional) celebration animations
```

The app runs without assets — they enhance but aren't required.
