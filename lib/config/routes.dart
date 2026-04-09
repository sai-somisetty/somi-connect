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
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return DashboardShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/today',
                pageBuilder: (context, state) => const NoTransitionPage<void>(
                  child: TodayTabHost(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/progress',
                pageBuilder: (context, state) => const NoTransitionPage<void>(
                  child: ProgressTabHost(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/exam',
                pageBuilder: (context, state) => const NoTransitionPage<void>(
                  child: ExamTabHost(),
                ),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/dashboard/health',
                pageBuilder: (context, state) => const NoTransitionPage<void>(
                  child: HealthTabHost(),
                ),
              ),
            ],
          ),
        ],
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
    ],
  );
});
