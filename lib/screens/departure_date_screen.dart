// lib/screens/departure_date_screen.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../providers/user_progress_provider.dart';
import '../theme/sophlo_theme.dart';
import 'home_screen.dart';

class DepartureDateScreen extends StatefulWidget {
  const DepartureDateScreen({super.key});

  @override
  State<DepartureDateScreen> createState() => _DepartureDateScreenState();
}

class _DepartureDateScreenState extends State<DepartureDateScreen> {
  DateTime? _selectedDate;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UserProgressProvider>(context);
    final language = provider.progress.selectedLanguage;
    final accentColor =
        SophloTheme.languageColors[language] ?? SophloTheme.neonGreen;
    final flag = SophloTheme.languageFlags[language] ?? '🌍';
    final destination =
        SophloTheme.languageDestinations[language] ?? 'your destination';

    return Scaffold(
      backgroundColor: SophloTheme.deepBlack,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                '$flag  ${destination.toUpperCase()}',
                style: GoogleFonts.barlow(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: accentColor,
                  letterSpacing: 4,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'WHEN\nARE YOU\nLEAVING?',
                style: GoogleFonts.barlow(
                  fontSize: 48,
                  fontWeight: FontWeight.w900,
                  color: SophloTheme.graffWhite,
                  letterSpacing: -2,
                  height: 1,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Sophie needs your departure date.\nThis becomes your mission clock.',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 15,
                  color: Colors.white54,
                  height: 1.6,
                ),
              ),
              const SizedBox(height: 48),
              _buildDatePicker(accentColor),
              if (_selectedDate != null) ...[
                const SizedBox(height: 24),
                _buildCountdownPreview(accentColor),
              ],
              const Spacer(),
              _buildButtons(accentColor),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDatePicker(Color accentColor) {
    return GestureDetector(
      onTap: () async {
        final picked = await showDatePicker(
          context: context,
          initialDate:
              DateTime.now().add(const Duration(days: 30)),
          firstDate: DateTime.now(),
          lastDate:
              DateTime.now().add(const Duration(days: 365 * 2)),
          builder: (context, child) {
            return Theme(
              data: ThemeData.dark().copyWith(
                colorScheme: ColorScheme.dark(
                  primary: accentColor,
                  surface: SophloTheme.concreteGray,
                ),
              ),
              child: child!,
            );
          },
        );
        if (picked != null) {
          setState(() => _selectedDate = picked);
        }
      },
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: SophloTheme.concreteGray,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: _selectedDate != null
                ? accentColor
                : Colors.transparent,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: _selectedDate != null ? accentColor : Colors.white38,
              size: 28,
            ),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _selectedDate != null
                      ? _formatDate(_selectedDate!)
                      : 'TAP TO SET DATE',
                  style: GoogleFonts.barlow(
                    fontSize: 22,
                    fontWeight: FontWeight.w800,
                    color: _selectedDate != null
                        ? SophloTheme.graffWhite
                        : Colors.white38,
                    letterSpacing: 1,
                  ),
                ),
                if (_selectedDate != null)
                  Text(
                    '${_selectedDate!.difference(DateTime.now()).inDays} DAYS FROM NOW',
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 12,
                      color: accentColor,
                      letterSpacing: 2,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCountdownPreview(Color accentColor) {
    final days = _selectedDate!.difference(DateTime.now()).inDays;
    String message;
    if (days <= 7) {
      message = "⚡ Sophie is sweating. Start NOW.";
    } else if (days <= 14) {
      message = "🔥 Tight timeline. No days off.";
    } else if (days <= 30) {
      message = "💪 Doable. Stay consistent.";
    } else {
      message = "🌍 Plenty of time. Build the habit.";
    }

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: accentColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: accentColor.withOpacity(0.3)),
      ),
      child: Text(
        message,
        style: GoogleFonts.spaceGrotesk(
          fontSize: 14,
          color: accentColor,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildButtons(Color accentColor) {
    return Column(
      children: [
        GestureDetector(
          onTap: _selectedDate != null ? _onConfirm : null,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: _selectedDate != null
                  ? accentColor
                  : SophloTheme.concreteGray,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'LOCK IN DATE →',
                style: GoogleFonts.barlow(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: _selectedDate != null
                      ? SophloTheme.black
                      : Colors.white30,
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        GestureDetector(
          onTap: _onSkip,
          child: Center(
            child: Text(
              'Skip for now',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 14,
                color: Colors.white38,
                decoration: TextDecoration.underline,
                decorationColor: Colors.white38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  String _formatDate(DateTime date) {
    const months = [
      'JAN', 'FEB', 'MAR', 'APR', 'MAY', 'JUN',
      'JUL', 'AUG', 'SEP', 'OCT', 'NOV', 'DEC'
    ];
    return '${date.day} ${months[date.month - 1]} ${date.year}';
  }

  Future<void> _onConfirm() async {
    if (_selectedDate == null) return;
    final provider =
        Provider.of<UserProgressProvider>(context, listen: false);
    await provider.setDepartureDate(_selectedDate!);
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  Future<void> _onSkip() async {
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }
}
