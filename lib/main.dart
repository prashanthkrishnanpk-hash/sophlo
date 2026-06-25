// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'providers/user_progress_provider.dart';
import 'theme/sophlo_theme.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(const SophloApp());
}

class SophloApp extends StatelessWidget {
  const SophloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => UserProgressProvider()..loadProgress(),
      child: MaterialApp(
        title: 'Sophlo',
        theme: SophloTheme.darkTheme,
        debugShowCheckedModeBanner: false,
        home: const _AppRouter(),
      ),
    );
  }
}

class _AppRouter extends StatelessWidget {
  const _AppRouter();

  @override
  Widget build(BuildContext context) {
    return Consumer<UserProgressProvider>(
      builder: (context, provider, _) {
        if (!provider.isLoaded) {
          return const _SplashScreen();
        }
        if (!provider.hasSelectedLanguage) {
          return const OnboardingScreen();
        }
        return const HomeScreen();
      },
    );
  }
}

class _SplashScreen extends StatelessWidget {
  const _SplashScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SophloTheme.deepBlack,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SOPHLO',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 52,
                fontWeight: FontWeight.w900,
                color: SophloTheme.neonGreen,
                letterSpacing: -2,
              ),
            ),
            const SizedBox(height: 8),
            const CircularProgressIndicator(
              valueColor:
                  AlwaysStoppedAnimation<Color>(SophloTheme.neonGreen),
              strokeWidth: 2,
            ),
          ],
        ),
      ),
    );
  }
}
