// lib/screens/celebration_screen.dart
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:confetti/confetti.dart';
import '../models/models.dart';
import '../providers/user_progress_provider.dart';
import '../theme/sophlo_theme.dart';
import '../data/missions_data.dart';
import 'home_screen.dart';

class CelebrationScreen extends StatefulWidget {
  final Mission mission;
  const CelebrationScreen({super.key, required this.mission});

  @override
  State<CelebrationScreen> createState() => _CelebrationScreenState();
}

class _CelebrationScreenState extends State<CelebrationScreen>
    with TickerProviderStateMixin {
  late ConfettiController _confettiController;
  late AnimationController _stampController;
  late AnimationController _badgeController;
  late AnimationController _contentController;

  late Animation<double> _stampScale;
  late Animation<double> _stampRotation;
  late Animation<double> _badgeFloat;
  late Animation<double> _contentFade;

  @override
  void initState() {
    super.initState();

    _confettiController =
        ConfettiController(duration: const Duration(seconds: 4));

    _stampController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _stampScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _stampController, curve: Curves.elasticOut),
    );
    _stampRotation = Tween<double>(begin: -0.4, end: -0.08).animate(
      CurvedAnimation(parent: _stampController, curve: Curves.easeOut),
    );

    _badgeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat(reverse: true);
    _badgeFloat = Tween<double>(begin: -6, end: 6).animate(
      CurvedAnimation(parent: _badgeController, curve: Curves.easeInOut),
    );

    _contentController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _contentFade = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _contentController, curve: Curves.easeIn),
    );

    _startSequence();
  }

  Future<void> _startSequence() async {
    _confettiController.play();
    await Future.delayed(const Duration(milliseconds: 300));
    _stampController.forward();
    await Future.delayed(const Duration(milliseconds: 600));
    _contentController.forward();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    _stampController.dispose();
    _badgeController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProgressProvider>(context);
    final language = provider.progress.selectedLanguage;
    final accentColor =
        SophloTheme.languageColors[language] ?? SophloTheme.neonGreen;
    final missionXP =
        provider.progress.missionXP['mission_${widget.mission.missionId}'] ?? 0;
    final badgeName =
        missionBadgeNames[widget.mission.missionId] ?? 'Achievement Badge';
    final unlockMsg =
        missionUnlockMessages[widget.mission.missionId] ?? '';
    final now = DateTime.now();

    return Scaffold(
      backgroundColor: SophloTheme.deepBlack,
      body: Stack(
        children: [
          // Confetti
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              shouldLoop: false,
              colors: [
                accentColor,
                SophloTheme.neonYellow,
                SophloTheme.neonPink,
                SophloTheme.neonGreen,
                SophloTheme.graffWhite,
              ],
              numberOfParticles: 40,
              gravity: 0.3,
            ),
          ),

          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    const SizedBox(height: 32),

                    // Passport stamp
                    AnimatedBuilder(
                      animation: _stampController,
                      builder: (context, child) {
                        return Transform.scale(
                          scale: _stampScale.value,
                          child: Transform.rotate(
                            angle: _stampRotation.value,
                            child: child,
                          ),
                        );
                      },
                      child: _buildPassportStamp(accentColor, now),
                    ),

                    const SizedBox(height: 32),

                    // Floating badge
                    AnimatedBuilder(
                      animation: _badgeFloat,
                      builder: (context, child) {
                        return Transform.translate(
                          offset: Offset(0, _badgeFloat.value),
                          child: child,
                        );
                      },
                      child: _buildBadge(accentColor, badgeName),
                    ),

                    const SizedBox(height: 24),

                    // Content
                    FadeTransition(
                      opacity: _contentFade,
                      child: Column(
                        children: [
                          Text(
                            unlockMsg,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.spaceGrotesk(
                              fontSize: 16,
                              color: Colors.white60,
                              height: 1.6,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                          const SizedBox(height: 32),
                          _buildStatsCard(missionXP, accentColor),
                          const SizedBox(height: 32),
                          _buildNextButton(accentColor),
                          const SizedBox(height: 16),
                          GestureDetector(
                            onTap: () => Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(builder: (_) => const HomeScreen()),
                              (route) => false,
                            ),
                            child: Text(
                              'Return to mission board',
                              style: GoogleFonts.spaceGrotesk(
                                fontSize: 13,
                                color: Colors.white30,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.white30,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPassportStamp(Color accentColor, DateTime now) {
    const months = [
      'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN',
      'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'
    ];
    final dateStr =
        '${now.day} ${months[now.month - 1]} ${now.year}';

    return Container(
      width: 240,
      height: 240,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: accentColor, width: 6),
        color: accentColor.withOpacity(0.05),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SOPHLO',
            style: GoogleFonts.barlow(
              fontSize: 12,
              fontWeight: FontWeight.w900,
              color: accentColor,
              letterSpacing: 6,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.mission.emoji,
            style: const TextStyle(fontSize: 52),
          ),
          Text(
            widget.mission.title,
            style: GoogleFonts.barlow(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: SophloTheme.graffWhite,
              letterSpacing: 1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'CLEARED',
            style: GoogleFonts.barlow(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: accentColor,
              letterSpacing: 4,
            ),
          ),
          Text(
            dateStr,
            style: GoogleFonts.spaceGrotesk(
              fontSize: 11,
              color: Colors.white38,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBadge(Color accentColor, String badgeName) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: SophloTheme.concreteGray,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColor.withOpacity(0.5), width: 2),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 4,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'SOPHIE\'S REWARD',
                style: GoogleFonts.barlow(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white38,
                  letterSpacing: 4,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text('🏅', style: TextStyle(fontSize: 48)),
          const SizedBox(height: 8),
          Text(
            badgeName,
            textAlign: TextAlign.center,
            style: GoogleFonts.barlow(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: accentColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsCard(int missionXP, Color accentColor) {
    final provider =
        Provider.of<UserProgressProvider>(context, listen: false);

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: SophloTheme.concreteGray,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildStat('XP EARNED', '$missionXP', accentColor),
          Container(width: 1, height: 40, color: Colors.white12),
          _buildStat(
              'MISSIONS', '${provider.progress.completedMissions.length}/10', accentColor),
          Container(width: 1, height: 40, color: Colors.white12),
          _buildStat('STREAK', '${provider.progress.streak}🔥', accentColor),
        ],
      ),
    );
  }

  Widget _buildStat(String label, String value, Color accentColor) {
    return Column(
      children: [
        Text(
          value,
          style: GoogleFonts.barlow(
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: accentColor,
          ),
        ),
        Text(
          label,
          style: GoogleFonts.barlow(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            color: Colors.white30,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }

  Widget _buildNextButton(Color accentColor) {
    final nextMission = widget.mission.missionId + 1;
    final hasNext = nextMission <= 10;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (_) => const HomeScreen()),
          (route) => false,
        );
      },
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: accentColor,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: accentColor.withOpacity(0.4),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Center(
          child: Text(
            hasNext ? 'UNLOCK MISSION $nextMission →' : '🌍 YOU\'VE SURVIVED IT ALL',
            style: GoogleFonts.barlow(
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: SophloTheme.black,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
    );
  }
}
