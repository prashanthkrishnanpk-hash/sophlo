// lib/screens/mission_screen.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import '../providers/user_progress_provider.dart';
import '../data/scenario_repository.dart';
import '../theme/sophlo_theme.dart';
import '../widgets/pattern_mastery_widget.dart';
import 'celebration_screen.dart';

class MissionScreen extends StatefulWidget {
  final Mission mission;
  const MissionScreen({super.key, required this.mission});

  @override
  State<MissionScreen> createState() => _MissionScreenState();
}

class _MissionScreenState extends State<MissionScreen>
    with TickerProviderStateMixin {
  int _currentScenarioIndex = 0;
  double _missionXP = 0;
  bool _sophieVisible = false;
  bool _showGraffitiStamp = false;
  bool _isIntroPhase = false;
  bool _usedSophieThisScenario = false;
  String _inputText = '';
  bool _showResult = false;
  bool _resultCorrect = false;
  String _xpSplashText = '';
  bool _showXPSplash = false;

  late TextEditingController _textController;
  late AnimationController _graffitiController;
  late AnimationController _xpBarController;
  late AnimationController _sophieController;
  late AnimationController _shakeController;
  late AnimationController _xpSplashController;

  late Animation<double> _graffitiScale;
  late Animation<double> _graffitiRotation;
  late Animation<double> _sophieSlide;
  late Animation<double> _shakeAnim;
  late Animation<double> _xpSplashAnim;

  Timer? _sophieTimer;
  List<Scenario> _scenarios = [];

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
    _initAnimations();
    _loadScenarios();
  }

  void _initAnimations() {
    _graffitiController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _graffitiScale = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _graffitiController, curve: Curves.elasticOut),
    );
    _graffitiRotation = Tween<double>(begin: -0.3, end: -0.05).animate(
      CurvedAnimation(parent: _graffitiController, curve: Curves.easeOut),
    );

    _xpBarController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );

    _sophieController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _sophieSlide = Tween<double>(begin: 200, end: 0).animate(
      CurvedAnimation(parent: _sophieController, curve: Curves.easeOut),
    );

    _shakeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    _shakeAnim = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0, end: 8), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 8, end: -8), weight: 1),
      TweenSequenceItem(tween: Tween(begin: -8, end: 8), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 8, end: 0), weight: 1),
    ]).animate(_shakeController);

    _xpSplashController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    );
    _xpSplashAnim = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _xpSplashController, curve: Curves.easeOut),
    );
  }

  void _loadScenarios() {
    final provider =
        Provider.of<UserProgressProvider>(context, listen: false);
    _scenarios = ScenarioRepository.getScenariosForLanguageAndMission(
      provider.progress.selectedLanguage,
      widget.mission.missionId,
    );
    if (_scenarios.isNotEmpty && _scenarios[0].introFlag) {
      setState(() => _isIntroPhase = true);
    }
    _startSophieTimer();
  }

  void _startSophieTimer() {
    _sophieTimer?.cancel();
    if (!_isIntroPhase) {
      _sophieTimer = Timer(const Duration(seconds: 7), () {
        if (mounted && !_sophieVisible) {
          _showSophie();
        }
      });
    }
  }

  void _showSophie() {
    setState(() => _sophieVisible = true);
    _sophieController.forward();
  }

  Scenario? get _currentScenario =>
      _currentScenarioIndex < _scenarios.length
          ? _scenarios[_currentScenarioIndex]
          : null;

  double get _xpPercent => (_missionXP / 200).clamp(0.0, 1.0);

  @override
  void dispose() {
    _sophieTimer?.cancel();
    _textController.dispose();
    _graffitiController.dispose();
    _xpBarController.dispose();
    _sophieController.dispose();
    _shakeController.dispose();
    _xpSplashController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProgressProvider>(context);
    final language = provider.progress.selectedLanguage;
    final accentColor =
        SophloTheme.languageColors[language] ?? SophloTheme.neonGreen;

    if (_scenarios.isEmpty) {
      return Scaffold(
        backgroundColor: SophloTheme.deepBlack,
        body: Center(
          child: Text('Loading...', style: TextStyle(color: accentColor)),
        ),
      );
    }

    final scenario = _currentScenario;
    if (scenario == null) return const SizedBox();

    return Scaffold(
      backgroundColor: SophloTheme.deepBlack,
      body: SafeArea(
        child: AnimatedBuilder(
          animation: _shakeAnim,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(_shakeAnim.value, 0),
              child: child,
            );
          },
          child: Column(
            children: [
              _buildXPBar(accentColor),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildScenarioHeader(scenario, accentColor),
                      _buildEnvironmentCard(scenario, accentColor),
                      PatternStatusBar(scenarioId: scenario.scenarioId),
                      _buildNPCSection(scenario, accentColor),
                      if (_isIntroPhase)
                        _buildIntroPhase(scenario, accentColor)
                      else
                        _buildChallengePhase(scenario, accentColor),
                      if (_sophieVisible) _buildSophiePanel(scenario, accentColor),
                    ],
                  ),
                ),
              ),
              _buildInputSection(scenario, accentColor),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildXPBar(Color accentColor) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(Icons.close, color: Colors.white38, size: 20),
              ),
              Text(
                '${widget.mission.emoji}  ${widget.mission.title}',
                style: GoogleFonts.barlow(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.white60,
                  letterSpacing: 2,
                ),
              ),
              Text(
                '${_currentScenarioIndex + 1}/8',
                style: GoogleFonts.barlow(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: accentColor,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            children: [
              Container(
                height: 8,
                decoration: BoxDecoration(
                  color: SophloTheme.concreteGray,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              AnimatedFractionallySizedBox(
                duration: const Duration(milliseconds: 600),
                curve: Curves.easeOut,
                widthFactor: _xpPercent,
                child: Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.circular(4),
                    boxShadow: [
                      BoxShadow(
                        color: accentColor.withOpacity(0.6),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
              ),
              if (_showXPSplash)
                AnimatedBuilder(
                  animation: _xpSplashAnim,
                  builder: (context, child) {
                    return Positioned(
                      right: 8,
                      top: -20,
                      child: Opacity(
                        opacity: (1 - _xpSplashAnim.value).clamp(0, 1),
                        child: Transform.translate(
                          offset: Offset(0, -20 * _xpSplashAnim.value),
                          child: Text(
                            _xpSplashText,
                            style: GoogleFonts.barlow(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              color: _usedSophieThisScenario
                                  ? SophloTheme.neonYellow
                                  : SophloTheme.neonGreen,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            '${_missionXP.toInt()} XP',
            style: GoogleFonts.barlow(
              fontSize: 11,
              fontWeight: FontWeight.w700,
              color: Colors.white30,
              letterSpacing: 2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildScenarioHeader(Scenario scenario, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 20, 0),
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: SophloTheme.asphaltGray,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          scenario.environmentContext,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 14,
            color: Colors.white70,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildEnvironmentCard(Scenario scenario, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: accentColor.withOpacity(0.08),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: accentColor.withOpacity(0.3)),
        ),
        child: Row(
          children: [
            Icon(Icons.location_on, color: accentColor, size: 16),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                scenario.environmentalTextPrompt,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 13,
                  color: accentColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNPCSection(Scenario scenario, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: accentColor.withOpacity(0.15),
                  shape: BoxShape.circle,
                  border: Border.all(color: accentColor.withOpacity(0.4)),
                ),
                child: Center(
                  child: Text(
                    scenario.npcAvatarEmoji,
                    style: const TextStyle(fontSize: 26),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Text(
                scenario.npcName,
                style: GoogleFonts.barlow(
                  fontSize: 10,
                  color: Colors.white38,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: SophloTheme.concreteGray,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
              child: Text(
                scenario.npcAudioResponseTranscript,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 15,
                  color: SophloTheme.graffWhite,
                  height: 1.4,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIntroPhase(Scenario scenario, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: accentColor.withOpacity(0.08),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: accentColor.withOpacity(0.4), width: 1.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('📖', style: TextStyle(fontSize: 16)),
                const SizedBox(width: 8),
                Text(
                  'FIRST ENCOUNTER — FULL ASSIST',
                  style: GoogleFonts.barlow(
                    fontSize: 11,
                    fontWeight: FontWeight.w700,
                    color: accentColor,
                    letterSpacing: 3,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              '💭  ${scenario.sophieClueEnglishIntent}',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 13,
                color: Colors.white60,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              scenario.targetLanguageAnchor,
              style: GoogleFonts.barlow(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: SophloTheme.graffWhite,
                letterSpacing: -0.5,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '🔊  ${scenario.sophiePhoneticHint}',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 14,
                color: accentColor.withOpacity(0.8),
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: _onIntroComplete,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 14),
                decoration: BoxDecoration(
                  color: accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'GOT IT — CONTINUE →',
                    style: GoogleFonts.barlow(
                      fontSize: 16,
                      fontWeight: FontWeight.w900,
                      color: SophloTheme.black,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChallengePhase(Scenario scenario, Color accentColor) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '💭  ${scenario.sophieClueEnglishIntent}',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 14,
              color: Colors.white60,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Type the phrase in ${Provider.of<UserProgressProvider>(context, listen: false).progress.selectedLanguage}:',
            style: GoogleFonts.spaceGrotesk(
              fontSize: 12,
              color: Colors.white38,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSophiePanel(Scenario scenario, Color accentColor) {
    return AnimatedBuilder(
      animation: _sophieSlide,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _sophieSlide.value),
          child: child,
        );
      },
      child: Container(
        margin: const EdgeInsets.fromLTRB(20, 16, 20, 0),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: SophloTheme.neonYellow.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border:
              Border.all(color: SophloTheme.neonYellow.withOpacity(0.5), width: 1.5),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('🦊', style: TextStyle(fontSize: 24)),
                const SizedBox(width: 12),
                Text(
                  'SOPHIE\'S HINT',
                  style: GoogleFonts.barlow(
                    fontSize: 12,
                    fontWeight: FontWeight.w800,
                    color: SophloTheme.neonYellow,
                    letterSpacing: 3,
                  ),
                ),
                const Spacer(),
                Text(
                  '+10 XP',
                  style: GoogleFonts.barlow(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: SophloTheme.neonYellow.withOpacity(0.6),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              scenario.targetLanguageAnchor,
              style: GoogleFonts.barlow(
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: SophloTheme.graffWhite,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '🔊  ${scenario.sophiePhoneticHint}',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 13,
                color: SophloTheme.neonYellow.withOpacity(0.8),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputSection(Scenario scenario, Color accentColor) {
    if (_isIntroPhase) return const SizedBox();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: SophloTheme.asphaltGray,
        border: Border(
          top: BorderSide(color: Colors.white12),
        ),
      ),
      child: Column(
        children: [
          if (_showResult)
            Container(
              margin: const EdgeInsets.only(bottom: 12),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: (_resultCorrect ? SophloTheme.neonGreen : SophloTheme.rustRed)
                    .withOpacity(0.15),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: _resultCorrect
                      ? SophloTheme.neonGreen
                      : SophloTheme.rustRed,
                ),
              ),
              child: Row(
                children: [
                  Text(
                    _resultCorrect ? '✅ CLEARED' : '❌ TRY AGAIN',
                    style: GoogleFonts.barlow(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                      color: _resultCorrect
                          ? SophloTheme.neonGreen
                          : SophloTheme.rustRed,
                      letterSpacing: 2,
                    ),
                  ),
                  if (!_resultCorrect) ...[
                    const Spacer(),
                    Text(
                      'Expected: ${scenario.targetLanguageAnchor}',
                      style: GoogleFonts.spaceGrotesk(
                        fontSize: 11,
                        color: Colors.white38,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _textController,
                  onChanged: (val) {
                    setState(() => _inputText = val);
                    _sophieTimer?.cancel();
                    _startSophieTimer();
                  },
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 16,
                    color: SophloTheme.graffWhite,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Type in ${Provider.of<UserProgressProvider>(context, listen: false).progress.selectedLanguage}...',
                    hintStyle: GoogleFonts.spaceGrotesk(
                      color: Colors.white24,
                      fontSize: 14,
                    ),
                    filled: true,
                    fillColor: SophloTheme.concreteGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: accentColor, width: 1.5),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                  ),
                ),
              ),
              const SizedBox(width: 12),
              GestureDetector(
                onTap: _onSubmit,
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: accentColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.send_rounded,
                    color: SophloTheme.black,
                    size: 22,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() => _usedSophieThisScenario = true);
                  _showSophie();
                },
                child: Text(
                  '🦊 Ask Sophie for help',
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 12,
                    color: Colors.white30,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.white30,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onIntroComplete() {
    setState(() {
      _isIntroPhase = false;
      _sophieVisible = false;
    });
    _startSophieTimer();
  }

  void _onSubmit() {
    if (_inputText.trim().isEmpty) return;

    final scenario = _currentScenario;
    if (scenario == null) return;

    // Flexible matching — check against anchor and slot options
    final input = _inputText.trim().toLowerCase();
    final anchor = scenario.targetLanguageAnchor.toLowerCase();
    final isCorrect = input == anchor ||
        scenario.slotOptions
            .any((opt) => input.contains(opt.toLowerCase())) ||
        anchor.contains(input) ||
        _fuzzyMatch(input, anchor);

    HapticFeedback.mediumImpact();

    setState(() {
      _showResult = true;
      _resultCorrect = isCorrect;
    });

    if (isCorrect) {
      _onCorrectAnswer();
    } else {
      _shakeController.forward(from: 0);
      // Record the failed attempt in the drill engine
      Provider.of<UserProgressProvider>(context, listen: false)
          .recordFailedAttempt(_currentScenario!.scenarioId);
      Future.delayed(const Duration(seconds: 2), () {
        if (mounted) setState(() => _showResult = false);
      });
    }
  }

  bool _fuzzyMatch(String input, String target) {
    // Simple fuzzy: 80% character overlap
    if (input.isEmpty || target.isEmpty) return false;
    int matches = 0;
    for (int i = 0; i < input.length && i < target.length; i++) {
      if (input[i] == target[i]) matches++;
    }
    return matches / target.length >= 0.7;
  }

  Future<void> _onCorrectAnswer() async {
    final xpGain = _usedSophieThisScenario ? 10 : 25;

    setState(() {
      _missionXP += xpGain;
      _showGraffitiStamp = true;
      _xpSplashText = '+$xpGain XP';
      _showXPSplash = true;
    });

    _graffitiController.forward(from: 0);
    _xpSplashController.forward(from: 0);

    final provider =
        Provider.of<UserProgressProvider>(context, listen: false);
    await provider.completeScenario(
      _currentScenario!.scenarioId,
      usedSophie: _usedSophieThisScenario,
    );

    await Future.delayed(const Duration(milliseconds: 900));

    if (_currentScenarioIndex >= 7) {
      // Mission complete!
      await provider.completeMission(widget.mission.missionId);
      if (mounted) {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => CelebrationScreen(mission: widget.mission),
          ),
        );
      }
    } else {
      setState(() {
        _currentScenarioIndex++;
        _showGraffitiStamp = false;
        _sophieVisible = false;
        _usedSophieThisScenario = false;
        _showResult = false;
        _inputText = '';
        _textController.clear();
        _isIntroPhase = _scenarios[_currentScenarioIndex].introFlag;
      });
      _graffitiController.reset();
      _startSophieTimer();
    }
  }
}
