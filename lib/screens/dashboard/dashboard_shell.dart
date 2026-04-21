import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../config/theme.dart';
import '../../l10n/app_strings.dart';
import '../../providers/storage_provider.dart';
import '../../providers/language_provider.dart';
import '../../providers/selected_student_provider.dart';
import '../../providers/ui_tick_provider.dart';
import '../../services/realtime_service.dart';
import '../../services/sync_service.dart';
import 'bridge_tab.dart';
import 'tabs/exam_tab.dart';
import 'tabs/health_tab.dart';
import 'tabs/progress_tab.dart';
import 'tabs/today_tab.dart';

Future<void> _ensureLinkedStudent(WidgetRef ref) async {
  if (ref.read(selectedStudentIdProvider) != null) return;
  final storage = ref.read(storageProvider);
  final links = await storage.allParentStudentLinks();
  if (links.isNotEmpty) {
    ref.read(selectedStudentIdProvider.notifier).state =
        links.first.studentId;
  }
}

class DashboardShell extends ConsumerStatefulWidget {
  const DashboardShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  ConsumerState<DashboardShell> createState() => _DashboardShellState();
}

class _DashboardShellState extends ConsumerState<DashboardShell> {
  RealtimeService? _realtime;
  SyncService? _sync;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _ensureLinkedStudent(ref);
      _realtime = ref.read(realtimeServiceProvider);
      _sync = ref.read(syncServiceProvider);
      final sid = ref.read(selectedStudentIdProvider);
      if (sid != null && _realtime != null) {
        _realtime!.subscribeForStudent(sid);
      }
      _sync?.startPeriodicSync();
    });
  }

  @override
  void dispose() {
    _realtime?.unsubscribe();
    _sync?.stopPeriodicSync();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch(languageProvider);
    final shell = widget.navigationShell;

    return Scaffold(
      // Today tab (index 0) has its own top bar — suppress the shell AppBar.
      appBar: shell.currentIndex == 0
          ? null
          : AppBar(
              title: const _DashboardTitle(),
              actions: [
                const _NudgeBellAction(),
                IconButton(
                  icon: const Icon(Icons.settings_outlined),
                  onPressed: () => context.push('/settings'),
                ),
              ],
            ),
      body: shell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: shell.currentIndex,
        onDestinationSelected: shell.goBranch,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home),
            label: AppStrings.today(lang),
          ),
          NavigationDestination(
            icon: const Icon(Icons.insights_outlined),
            selectedIcon: const Icon(Icons.insights),
            label: AppStrings.progress(lang),
          ),
        ],
      ),
    );
  }
}

// ── App-bar title ─────────────────────────────────────────────────────────────

class _DashboardTitle extends ConsumerWidget {
  const _DashboardTitle();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(languageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    final storage = ref.watch(storageProvider);
    ref.watch(realtimeTickProvider);

    String name = '—';
    if (sid != null) {
      final s = storage.studentByApiIdSync(sid);
      if (s != null) name = s.name;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          name,
          style: GoogleFonts.dmSerifDisplay(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            color: AppTheme.gold,
          ),
        ),
        Text(
          AppStrings.meePillalaDashboard(lang),
          style: lang == AppLanguage.telugu
              ? GoogleFonts.notoSansTelugu(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: AppTheme.gold.withValues(alpha: 0.8),
                  height: 1.3,
                )
              : GoogleFonts.dmSans(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: AppTheme.gold.withValues(alpha: 0.8),
                ),
        ),
      ],
    );
  }
}

// ── Nudge bell ────────────────────────────────────────────────────────────────

class _NudgeBellAction extends ConsumerWidget {
  const _NudgeBellAction();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    ref.watch(realtimeTickProvider);
    final unread = storage.unreadNudgesCountSync();

    return IconButton(
      onPressed: () => context.push('/nudges'),
      icon: Badge(
        isLabelVisible: unread > 0,
        label: Text('$unread'),
        child: const Icon(Icons.notifications_outlined),
      ),
    );
  }
}

// ── Tab hosts ─────────────────────────────────────────────────────────────────
// TodayTabHost and ProgressTabHost are used as shell branch content
// (no own Scaffold needed — shell provides it).
// BridgeTabHost, ExamTabHost, HealthTabHost are used as full-screen push routes
// (Scaffold + AppBar included).

class TodayTabHost extends ConsumerWidget {
  const TodayTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => const TodayTab();
}

/// Progress tab shows a hub menu linking to all deep features.
class ProgressTabHost extends ConsumerWidget {
  const ProgressTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => const _ProgressHub();
}

/// Wraps ProgressTab for full-screen push navigation.
class ProgressTabDetailHost extends StatelessWidget {
  const ProgressTabDetailHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subject Progress'),
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: const ProgressTab(),
    );
  }
}

class BridgeTabHost extends StatelessWidget {
  const BridgeTabHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classroom Sync'),
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: const BridgeTab(),
    );
  }
}

class ExamTabHost extends StatelessWidget {
  const ExamTabHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exams'),
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: const ExamTab(),
    );
  }
}

class HealthTabHost extends StatelessWidget {
  const HealthTabHost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Health & Wellness'),
        leading: BackButton(onPressed: () => context.pop()),
      ),
      body: const HealthTab(),
    );
  }
}

// ── Progress hub ──────────────────────────────────────────────────────────────

class _ProgressHub extends StatelessWidget {
  const _ProgressHub();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 28, 20, 28),
      children: [
        Text(
          'Your Dashboard',
          style: AppTheme.serifDisplay(fontSize: 28),
        ),
        const SizedBox(height: 4),
        Text(
          'Everything about your child in one place.',
          style: GoogleFonts.dmSans(
            fontSize: 13,
            color: AppTheme.steel,
          ),
        ),
        const SizedBox(height: 28),
        _HubTile(
          icon: Icons.insights_outlined,
          label: 'Subject Progress',
          sub: 'Chapters, concepts & weak areas',
          onTap: () => context.push('/dashboard/progress/subjects'),
        ),
        _HubTile(
          icon: Icons.quiz_outlined,
          label: 'Exams',
          sub: 'Live kiosk sessions & results',
          onTap: () => context.push('/dashboard/exam'),
        ),
        _HubTile(
          icon: Icons.sync_alt_outlined,
          label: 'Classroom Sync',
          sub: 'Bridge college logs with app',
          onTap: () => context.push('/dashboard/bridge'),
        ),
        _HubTile(
          icon: Icons.favorite_outline,
          label: 'Health & Wellness',
          sub: 'Blood reports, BMI & vitals',
          onTap: () => context.push('/dashboard/health'),
        ),
        _HubTile(
          icon: Icons.psychology_outlined,
          label: 'Mirror Tests',
          sub: 'Self-assessment & weak spots',
          onTap: () => context.push('/dashboard/progress/subjects'),
        ),
        _HubTile(
          icon: Icons.emoji_events_outlined,
          label: 'Rewards',
          sub: 'Streaks, badges & nudges',
          onTap: () => context.push('/nudges'),
        ),
        _HubTile(
          icon: Icons.settings_outlined,
          label: 'Settings',
          sub: 'Language, exam PIN & account',
          onTap: () => context.push('/settings'),
          last: true,
        ),
      ],
    );
  }
}

class _HubTile extends StatelessWidget {
  const _HubTile({
    required this.icon,
    required this.label,
    required this.sub,
    this.onTap,
    this.last = false,
  });

  final IconData icon;
  final String label;
  final String sub;
  final VoidCallback? onTap;
  final bool last;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 14),
            child: Row(
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: AppTheme.bgWarm,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(icon, color: AppTheme.sand, size: 22),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.navy,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        sub,
                        style: GoogleFonts.dmSans(
                          fontSize: 12,
                          color: AppTheme.steel,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right_rounded,
                    color: AppTheme.silver, size: 20),
              ],
            ),
          ),
        ),
        if (!last)
          Divider(
            height: 1,
            color: AppTheme.steel.withValues(alpha: 0.1),
          ),
      ],
    );
  }
}
