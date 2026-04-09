import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../config/theme.dart';
import '../../services/api_service.dart';
import '../../services/storage_service.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _boot());
  }

  Future<void> _boot() async {
    final storage = ref.read(storageServiceProvider);
    final token = await storage.readToken();
    if (!mounted) return;

    if (token == null || token.isEmpty) {
      context.go('/auth');
      return;
    }

    try {
      final ok = await ref.read(apiServiceProvider).validateToken();
      if (!mounted) return;
      if (ok) {
        context.go('/dashboard/today');
      } else {
        await storage.clearToken();
        if (!mounted) return;
        context.go('/auth');
      }
    } catch (_) {
      if (!mounted) return;
      context.go('/auth');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primaryDeepBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.family_restroom, size: 88, color: Colors.white.withValues(alpha: 0.95)),
            const SizedBox(height: 24),
            Text(
              'SOMI Connect',
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 32),
            const CircularProgressIndicator(color: AppTheme.accentWarmOrange),
          ],
        ),
      ),
    );
  }
}
