// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/user_progress_provider.dart';
import '../theme/sophlo_theme.dart';
import '../data/missions_data.dart';
import '../data/scenario_repository.dart';
import '../widgets/pattern_mastery_widget.dart';
import '../models/models.dart';
import 'mission_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProgressProvider>(
      builder: (context, provider, _) {
        final progress = provider.progress;
        final language = progress.selectedLanguage;
        final accentColor =
            SophloTheme.languageColors[language] ?? SophloTheme.neonGreen;
        final flag = SophloTheme.languageFlags[language] ?? '🌍';
        final destination =
            SophloTheme.languageDestinations[language] ?? 'Destination';

        return Scaffold(
          backgroundColor: SophloTheme.deepBlack,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                    child: _buildTopBar(context, flag, language, accentColor)),
                SliverToBoxAdapter(
                    child: _buildDepartureCountdown(
                        context, progress, accentColor, destination)),
                SliverToBoxAdapter(child: _buildReadinessBar(progress, accentColor)),
                const SliverToBoxAdapter(child: PatternMasteryWidget()),
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
                    child: Text(
                      'MISSION BOARD',
                      style: GoogleFonts.barlow(
                        fontSize: 13,
                        fontWeight: FontWeight.w800,
                        color: Colors.white38,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => _buildMissionCard(
                        context, allMissions[index], progress, accentColor),
                    childCount: allMissions.length,
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 32)),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildTopBar(
      BuildContext context, String flag, String language, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 20, 24, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SOPHLO',
                style: GoogleFonts.barlow(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  color: SophloTheme.neonGreen,
                  letterSpacing: -1,
                ),
              ),
              Text(
                'MISSION CONTROL',
                style: GoogleFonts.barlow(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Colors.white30,
                  letterSpacing: 4,
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: accentColor.withOpacity(0.4)),
            ),
            child: Row(
              children: [
                Text(flag, style: const TextStyle(fontSize: 18)),
                const SizedBox(width: 8),
                Text(
                  language.toUpperCase(),
                  style: GoogleFonts.barlow(
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                    color: accentColor,
                    letterSpacing: 2,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepartureCountdown(BuildContext context, UserProgress progress,
      Color accentColor, String destination) {
    final days = progress.daysUntilDeparture;
    final hasDate = days >= 0;

    return Container(
      margin: const EdgeInsets.fromLTRB(24, 24, 24, 0),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: SophloTheme.concreteGray,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: hasDate && days <= 7
              ? SophloTheme.rustRed.withOpacity(0.6)
              : accentColor.withOpacity(0.3),
          width: 1.5,
        ),
      ),
      child: hasDate
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'DEPARTURE',
                      style: GoogleFonts.barlow(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: Colors.white38,
                        letterSpacing: 4,
                      ),
                    ),
                    Text(
                      destination.toUpperCase(),
                      style: GoogleFonts.barlow(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: accentColor,
                        letterSpacing: 4,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '$days',
                      style: GoogleFonts.barlow(
                        fontSize: 72,
                        fontWeight: FontWeight.w900,
                        color: days <= 7
                            ? SophloTheme.rustRed
                            : SophloTheme.graffWhite,
                        height: 1,
                        letterSpacing: -4,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12, left: 8),
                      child: Text(
                        'DAYS',
                        style: GoogleFonts.barlow(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white38,
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  decoration: BoxDecoration(
                    color: (days <= 7 ? SophloTheme.rustRed : accentColor)
                        .withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    _getUrgencyMessage(days, progress.readinessLabel),
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 13,
                      color: days <= 7 ? SophloTheme.rustRed : accentColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            )
          : GestureDetector(
              onTap: () => _setDepartureDate(context),
              child: Row(
                children: [
                  const Icon(Icons.add_circle_outline,
                      color: Colors.white38, size: 28),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'SET DEPARTURE DATE',
                        style: GoogleFonts.barlow(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white60,
                          letterSpacing: 1,
                        ),
                      ),
                      Text(
                        'Sophie needs to know your deadline',
                        style: GoogleFonts.spaceGrotesk(
                          fontSize: 12,
                          color: Colors.white30,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }

  Widget _buildReadinessBar(UserProgress progress, Color accentColor) {
    final readiness = progress.readinessPercent;
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'READINESS',
                style: GoogleFonts.barlow(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                  color: Colors.white38,
                  letterSpacing: 4,
                ),
              ),
              Text(
                progress.readinessLabel,
                style: GoogleFonts.barlow(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                  color: accentColor,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Stack(
            children: [
              Container(
                height: 6,
                decoration: BoxDecoration(
                  color: SophloTheme.concreteGray,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              FractionallySizedBox(
                widthFactor: readiness,
                child: Container(
                  height: 6,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(
                        color: accentColor.withOpacity(0.5),
                        blurRadius: 8,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          Text(
            '${progress.totalXP} XP TOTAL  •  STREAK: ${progress.streak} DAYS',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 11,
              color: Colors.white30,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMissionCard(BuildContext context, Mission mission,
      UserProgress progress, Color accentColor) {
    final missionKey = 'mission_${mission.missionId}';
    final isCompleted = progress.completedMissions.contains(missionKey);
    final isCurrent = progress.currentMission == mission.missionId;
    final hasContent = ScenarioRepository.missionHasContent(
        progress.selectedLanguage, mission.missionId);
    final isLocked = !isCompleted &&
        !isCurrent &&
        (mission.missionId > progress.currentMission || !hasContent);

    return GestureDetector(
      onTap: isLocked ? null : () => _openMission(context, mission),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        margin: const EdgeInsets.fromLTRB(24, 0, 24, 10),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isLocked
              ? SophloTheme.asphaltGray
              : isCurrent
                  ? accentColor.withOpacity(0.1)
                  : SophloTheme.concreteGray,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isCurrent
                ? accentColor
                : isCompleted
                    ? accentColor.withOpacity(0.3)
                    : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: isLocked
                    ? Colors.white.withOpacity(0.05)
                    : accentColor.withOpacity(0.15),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  isLocked ? '🔒' : mission.emoji,
                  style: const TextStyle(fontSize: 24),
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MISSION ${mission.missionId}',
                    style: GoogleFonts.barlow(
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: isCurrent ? accentColor : Colors.white30,
                      letterSpacing: 3,
                    ),
                  ),
                  Text(
                    mission.title,
                    style: GoogleFonts.barlow(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                      color: isLocked ? Colors.white30 : SophloTheme.graffWhite,
                      letterSpacing: -0.5,
                    ),
                  ),
                  Text(
                    mission.subtitle,
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 12,
                      color: Colors.white38,
                    ),
                  ),
                ],
              ),
            ),
            if (isCompleted)
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: accentColor, size: 16),
              )
            else if (isCurrent)
              Icon(Icons.arrow_forward_ios, color: accentColor, size: 16)
            else
              const Icon(Icons.lock_outline, color: Colors.white20, size: 16),
          ],
        ),
      ),
    );
  }

  String _getUrgencyMessage(int days, String readinessLabel) {
    if (days == 0) return "🚨 TODAY. Final briefing activated.";
    if (days <= 3) return "⚠️ $days days left. Drill everything NOW.";
    if (days <= 7) return "🔥 $days days. Sophie is stressed.";
    if (days <= 14) return "📅 $days days. You're ${readinessLabel.toLowerCase()}.";
    if (days <= 30) return "🎯 $days days. Stay on mission.";
    return "🌍 $days days until departure. Build the habit.";
  }

  void _openMission(BuildContext context, Mission mission) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => MissionScreen(mission: mission),
      ),
    );
  }

  void _setDepartureDate(BuildContext context) {
    // navigate to date screen inline
    showDatePicker(
      context: context,
      initialDate: DateTime.now().add(const Duration(days: 30)),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 730)),
      builder: (ctx, child) => Theme(
        data: ThemeData.dark().copyWith(
          colorScheme: const ColorScheme.dark(primary: SophloTheme.neonGreen),
        ),
        child: child!,
      ),
    ).then((date) async {
      if (date != null) {
        await Provider.of<UserProgressProvider>(context, listen: false)
            .setDepartureDate(date);
      }
    });
  }
}
