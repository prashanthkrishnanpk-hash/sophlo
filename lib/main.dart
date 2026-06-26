// lib/main.dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'providers/user_progress_provider.dart';
import 'theme/sophlo_theme.dart';
import 'screens/onboarding_screen.dart';
import 'screens/home_screen.dart';

void main() async {
  // Catch ANY error anywhere in the app and show it on screen
  // instead of silently crashing. This is temporary — for debugging
  // the first real build. Remove once the app is stable.
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '🐛 SOPHLO CRASHED — ERROR DETAILS:',
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                Text(
                  details.exceptionAsString(),
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(height: 16),
                Text(
                  details.stack?.toString() ?? 'No stack trace available',
                  style: const TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  };

  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );
    runApp(const SophloApp());
  }, (error, stackTrace) {
    // Catches errors that happen outside the widget tree
    // (e.g. during startup, before any screen is shown)
    runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Material(
          color: Colors.black,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '🐛 SOPHLO CRASHED ON STARTUP:',
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      error.toString(),
                      style: const TextStyle(
                          color: Colors.white, fontSize: 14),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      stackTrace.toString(),
                      style:
                          const TextStyle(color: Colors.grey, fontSize: 11),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  });
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
