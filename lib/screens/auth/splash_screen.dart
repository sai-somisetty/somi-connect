import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme.dart';
import '../../services/api_service.dart';
import '../../services/storage_service.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _fade;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();
    _fade = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _opacity = CurvedAnimation(parent: _fade, curve: Curves.easeIn);
    _fade.forward();
    WidgetsBinding.instance.addPostFrameCallback((_) { if (mounted) context.go("/dashboard/today"); });
  }

  @override
  void dispose() {
    _fade.dispose();
    super.dispose();
  }

  static const _hardTimeout = Duration(seconds: 5);
  static const _tokenTimeout = Duration(seconds: 3);
  static const _validateTimeout = Duration(seconds: 4);

  Future<void> _boot() async {
    var navigated = false;
    void go(String path) {
      if (!mounted || navigated) return;
      navigated = true;
      context.go(path);
    }

    final timer = Timer(_hardTimeout, () {
      if (!mounted || navigated) return;
      debugPrint('[SOMI] SplashScreen: ${_hardTimeout.inSeconds}s timeout → /auth');
      navigated = true;
      context.go('/auth');
    });

    try {
      debugPrint('[SOMI] SplashScreen: boot start');
      final storage = ref.read(storageServiceProvider);
      final token = await storage.readToken().timeout(
        _tokenTimeout,
        onTimeout: () {
          debugPrint('[SOMI] SplashScreen: readToken timed out');
          return null;
        },
      );
      if (!mounted) return;

      if (token == null || token.isEmpty) {
        debugPrint('[SOMI] SplashScreen: no token → /auth');
        timer.cancel();
        go('/auth');
        return;
      }

      debugPrint('[SOMI] SplashScreen: validating token…');
      final ok = await ref.read(apiServiceProvider).validateToken().timeout(
            _validateTimeout,
            onTimeout: () {
              debugPrint('[SOMI] SplashScreen: validateToken timed out');
              return false;
            },
          );
      if (!mounted) return;
      timer.cancel();
      if (ok) {
        debugPrint('[SOMI] SplashScreen: token OK → dashboard');
        go('/dashboard/today');
      } else {
        debugPrint('[SOMI] SplashScreen: token invalid → /auth');
        await storage.clearToken();
        if (!mounted) return;
        go('/auth');
      }
    } catch (e, st) {
      debugPrint('[SOMI] SplashScreen: boot error → /auth: $e\n$st');
      if (!mounted) return;
      timer.cancel();
      go('/auth');
    } finally {
      timer.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.navy,
      body: Center(
        child: FadeTransition(
          opacity: _opacity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 96,
                height: 96,
                decoration: const BoxDecoration(
                  color: AppTheme.orange,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4DED8936),
                      blurRadius: 24,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                alignment: Alignment.center,
                child: Text(
                  'S',
                  style: GoogleFonts.poppins(
                    fontSize: 52,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                    height: 1,
                  ),
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'SOMI Connect',
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Mee pillala progress — okkasari',
                style: AppTheme.teluguStyle(
                  fontSize: 16,
                  color: Colors.white.withValues(alpha: 0.9),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              const SizedBox(
                width: 32,
                height: 32,
                child: CircularProgressIndicator(
                  strokeWidth: 3,
                  color: AppTheme.orange,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
