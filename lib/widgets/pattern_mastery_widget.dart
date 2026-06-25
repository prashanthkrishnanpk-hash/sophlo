// lib/widgets/pattern_mastery_widget.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/user_progress_provider.dart';
import '../engine/drill_engine.dart';
import '../engine/pattern_registry_router.dart';
import '../data/core/universal_patterns.dart';
import '../theme/sophlo_theme.dart';

class PatternMasteryWidget extends StatelessWidget {
  const PatternMasteryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProgressProvider>(
      builder: (context, provider, _) {
        final language = provider.progress.selectedLanguage;
        // Show for languages with full corpus mapping
        final mappedLanguages = ['Hindi', 'English'];
        if (!mappedLanguages.contains(language)) {
          return const SizedBox.shrink();
        }

        final engine = provider.drillEngine;
        final records = engine.allMasteryRecords;
        final accentColor = SophloTheme.languageColors['Hindi']!;
        final overallScore = engine.overallMasteryScore;
        final mastered = engine.masteredPatternCount;
        final weak = engine.weakPatternCount;
        final drillSession = engine.buildDrillSession(maxItems: 3);

        return Container(
          margin: const EdgeInsets.fromLTRB(24, 16, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'PATTERN MASTERY',
                    style: GoogleFonts.barlow(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: Colors.white38,
                      letterSpacing: 4,
                    ),
                  ),
                  Text(
                    '$mastered/16 MASTERED',
                    style: GoogleFonts.barlow(
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      color: accentColor,
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // Overall score bar
              Stack(children: [
                Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: SophloTheme.concreteGray,
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: overallScore,
                  child: Container(
                    height: 6,
                    decoration: BoxDecoration(
                      color: accentColor,
                      borderRadius: BorderRadius.circular(3),
                      boxShadow: [
                        BoxShadow(
                          color: accentColor.withOpacity(0.5),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              const SizedBox(height: 12),

              // Pattern grid — 16 dots, one per pattern
              _buildPatternGrid(records, accentColor),

              // Drill session card (if patterns need work)
              if (drillSession != null) ...[
                const SizedBox(height: 12),
                _buildDrillSessionCard(context, drillSession, accentColor, weak),
              ],
            ],
          ),
        );
      },
    );
  }

  Widget _buildPatternGrid(
      List<PatternMastery> records, Color accentColor) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: List.generate(universalPatterns.length, (index) {
        final pattern = universalPatterns[index];
        final mastery = records[index];
        final color = _masteryColor(mastery.masteryLabel, accentColor);

        return Tooltip(
          message:
              '${pattern.templateDescription}\n${mastery.masteryLabel} '
              '(${(mastery.masteryScore * 100).toInt()}%)',
          child: Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color.withOpacity(0.15),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: color.withOpacity(0.6), width: 1.5),
            ),
            child: Center(
              child: Text(
                '${index + 1}',
                style: GoogleFonts.barlow(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: color,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildDrillSessionCard(BuildContext context, DrillSession session,
      Color accentColor, int weakCount) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: SophloTheme.rustRed.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
        border:
            Border.all(color: SophloTheme.rustRed.withOpacity(0.4), width: 1.5),
      ),
      child: Row(
        children: [
          const Text('🦊', style: TextStyle(fontSize: 24)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'SOPHIE SAYS: DRILL TIME',
                  style: GoogleFonts.barlow(
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    color: SophloTheme.rustRed,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  '$weakCount pattern(s) need reinforcement • ${session.count} phrases',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 11,
                    color: Colors.white54,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: SophloTheme.rustRed,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              'DRILL',
              style: GoogleFonts.barlow(
                fontSize: 12,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _masteryColor(String label, Color accentColor) {
    switch (label) {
      case 'MASTERED':
        return SophloTheme.neonGreen;
      case 'SOLID':
        return accentColor;
      case 'LEARNING':
        return SophloTheme.neonYellow;
      case 'WEAK':
        return SophloTheme.rustRed;
      default:
        return Colors.white24; // UNSEEN
    }
  }
}

// ── Compact pattern status bar for mid-mission display ───────
class PatternStatusBar extends StatelessWidget {
  final String scenarioId;
  const PatternStatusBar({super.key, required this.scenarioId});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProgressProvider>(context, listen: false);
    final language = provider.progress.selectedLanguage;
    final mappedLanguages = ['Hindi', 'English'];
    if (!mappedLanguages.contains(language)) {
      return const SizedBox.shrink();
    }

    final patternId = PatternRegistryRouter.getPatternForScenario(
        language, scenarioId);
    if (patternId == null) return const SizedBox.shrink();

    final pattern = UniversalPatternRegistry.getById(patternId);
    if (pattern == null) return const SizedBox.shrink();

    final mastery = provider.drillEngine.allMasteryRecords
        .firstWhere((m) => m.patternId == pattern.patternId,
            orElse: () =>
                PatternMastery(patternId: pattern.patternId));

    final accentColor = SophloTheme.languageColors['Hindi']!;

    return Container(
      margin: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: SophloTheme.asphaltGray,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Text(
            'PATTERN:',
            style: GoogleFonts.barlow(
              fontSize: 9,
              fontWeight: FontWeight.w700,
              color: Colors.white30,
              letterSpacing: 3,
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              pattern.templateDescription,
              style: GoogleFonts.spaceGrotesk(
                fontSize: 12,
                color: accentColor,
                fontWeight: FontWeight.w600,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8),
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: _statusColor(mastery.masteryLabel).withOpacity(0.15),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              mastery.masteryLabel,
              style: GoogleFonts.barlow(
                fontSize: 9,
                fontWeight: FontWeight.w800,
                color: _statusColor(mastery.masteryLabel),
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _statusColor(String label) {
    switch (label) {
      case 'MASTERED':
        return SophloTheme.neonGreen;
      case 'SOLID':
        return SophloTheme.neonBlue;
      case 'LEARNING':
        return SophloTheme.neonYellow;
      case 'WEAK':
        return SophloTheme.rustRed;
      default:
        return Colors.white38;
    }
  }
}
