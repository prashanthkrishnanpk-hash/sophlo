// lib/screens/onboarding_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/user_progress_provider.dart';
import '../theme/sophlo_theme.dart';
import 'departure_date_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with TickerProviderStateMixin {
  String? _selectedLanguage;
  late AnimationController _pulseController;
  late Animation<double> _pulseAnimation;

  final List<Map<String, String>> languages = [
    {'name': 'Korean', 'flag': '🇰🇷', 'city': 'SEOUL'},
    {'name': 'Japanese', 'flag': '🇯🇵', 'city': 'TOKYO'},
    {'name': 'Hindi', 'flag': '🇮🇳', 'city': 'MUMBAI'},
    {'name': 'Spanish', 'flag': '🇪🇸', 'city': 'BARCELONA'},
    {'name': 'French', 'flag': '🇫🇷', 'city': 'PARIS'},
    {'name': 'German', 'flag': '🇩🇪', 'city': 'BERLIN'},
    {'name': 'English', 'flag': '🇬🇧', 'city': 'LONDON'},
  ];

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat(reverse: true);
    _pulseAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _pulseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SophloTheme.deepBlack,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 8),
            _buildSubtitle(),
            const SizedBox(height: 32),
            Expanded(child: _buildLanguageGrid()),
            _buildContinueButton(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SOPHLO',
            style: GoogleFonts.barlow(
              fontSize: 52,
              fontWeight: FontWeight.w900,
              color: SophloTheme.neonGreen,
              letterSpacing: -2,
              height: 1,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'SURVIVE ANYWHERE.',
            style: GoogleFonts.barlow(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: SophloTheme.graffWhite.withOpacity(0.5),
              letterSpacing: 4,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubtitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Pick your destination.\nSophie will get you through it.',
        style: GoogleFonts.spaceGrotesk(
          fontSize: 16,
          color: SophloTheme.graffWhite.withOpacity(0.7),
          height: 1.5,
        ),
      ),
    );
  }

  Widget _buildLanguageGrid() {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.4,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
      ),
      itemCount: languages.length,
      itemBuilder: (context, index) {
        final lang = languages[index];
        final isSelected = _selectedLanguage == lang['name'];
        final accentColor =
            SophloTheme.languageColors[lang['name']] ?? SophloTheme.neonGreen;

        return GestureDetector(
          onTap: () => setState(() => _selectedLanguage = lang['name']),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            decoration: BoxDecoration(
              color: isSelected
                  ? accentColor.withOpacity(0.15)
                  : SophloTheme.concreteGray,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: isSelected ? accentColor : Colors.transparent,
                width: 2,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  lang['flag']!,
                  style: const TextStyle(fontSize: 36),
                ),
                const SizedBox(height: 8),
                Text(
                  lang['city']!,
                  style: GoogleFonts.barlow(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: isSelected ? accentColor : SophloTheme.graffWhite,
                    letterSpacing: 2,
                  ),
                ),
                Text(
                  lang['name']!,
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 11,
                    color: isSelected
                        ? accentColor.withOpacity(0.8)
                        : Colors.white38,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildContinueButton() {
    final isEnabled = _selectedLanguage != null;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      child: AnimatedBuilder(
        animation: _pulseAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: isEnabled ? _pulseAnimation.value : 1.0,
            child: GestureDetector(
              onTap: isEnabled ? _onContinue : null,
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: isEnabled
                      ? SophloTheme.neonGreen
                      : SophloTheme.concreteGray,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text(
                    isEnabled
                        ? 'DEPLOY TO ${_selectedLanguage!.toUpperCase()} →'
                        : 'SELECT A DESTINATION',
                    style: GoogleFonts.barlow(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: isEnabled
                          ? SophloTheme.black
                          : Colors.white30,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _onContinue() async {
    if (_selectedLanguage == null) return;
    final provider =
        Provider.of<UserProgressProvider>(context, listen: false);
    await provider.setLanguage(_selectedLanguage!);
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (_) => const DepartureDateScreen()),
      );
    }
  }
}
