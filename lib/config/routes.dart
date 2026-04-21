import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../screens/auth/otp_screen.dart';
import '../screens/auth/profile_setup_screen.dart';
import '../screens/auth/splash_screen.dart';
import '../screens/dashboard/dashboard_shell.dart';
import '../screens/nudges/nudge_center_screen.dart';
import '../screens/settings/settings_screen.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final goRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/splash',
    redirect: (context, state) {
      final path = state.uri.path.replaceAll(RegExp(r'/+$'), '');
      if (path == '/dashboard') return '/dashboard/today';
      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/auth',
        builder: (context, state) => const OtpScreen(),
      ),
      GoRoute(
        path: '/profile-setup',
        builder: (context, state) => const ProfileSetupScreen(),
      ),

      // ── Full-screen push routes (no bottom nav) ────────────────────────────
      // Defined before the shell so they are matched first when explicitly
      // pushed via context.push() with parentNavigatorKey = root.
      GoRoute(
        path: '/dashboard/bridge',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const BridgeTabHost(),
      ),
      GoRoute(
        path: '/dashboard/exam',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const ExamTabHost(),
      ),
      GoRoute(
        path: '/dashboard/health',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const HealthTabHost(),
      ),
      GoRoute(
        path: '/dashboard/progress/subjects',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const ProgressTabDetailHost(),
      ),
      GoRoute(
        path: '/nudges',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const NudgeCenterScreen(),
      ),
      GoRoute(
        path: '/settings',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) => const SettingsScreen(),
      ),

      // ── 2-tab shell: Home (Today) + Progress hub ───────────────────────────
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            DashboardShell(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/today',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: TodayTabHost()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/progress',
                pageBuilder: (context, state) =>
                    const NoTransitionPage<void>(child: ProgressTabHost()),
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
