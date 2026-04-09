import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../l10n/app_strings.dart';
import '../../providers/storage_provider.dart';
import '../../providers/language_provider.dart';
import '../../providers/selected_student_provider.dart';
import '../../providers/ui_tick_provider.dart';
import '../../services/realtime_service.dart';
import '../../services/sync_service.dart';
import 'tabs/exam_tab.dart';
import 'tabs/health_tab.dart';
import 'tabs/progress_tab.dart';
import 'tabs/today_tab.dart';

Future<void> _ensureLinkedStudent(WidgetRef ref) async {
  if (ref.read(selectedStudentIdProvider) != null) return;
  final storage = ref.read(storageProvider);
  final links = await storage.allParentStudentLinks();
  if (links.isNotEmpty) {
    ref.read(selectedStudentIdProvider.notifier).state = links.first.studentId;
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
      appBar: AppBar(
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
            icon: const Icon(Icons.today_outlined),
            selectedIcon: const Icon(Icons.today),
            label: AppStrings.today(lang),
          ),
          NavigationDestination(
            icon: const Icon(Icons.timeline_outlined),
            selectedIcon: const Icon(Icons.timeline),
            label: AppStrings.progress(lang),
          ),
          NavigationDestination(
            icon: const Icon(Icons.quiz_outlined),
            selectedIcon: const Icon(Icons.quiz),
            label: AppStrings.exam(lang),
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_outline),
            selectedIcon: const Icon(Icons.favorite),
            label: AppStrings.health(lang),
          ),
        ],
      ),
    );
  }
}

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
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        Text(
          AppStrings.meePillalaDashboard(lang),
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

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

/// Tab hosts — thin wrappers so routes stay in one place.
class TodayTabHost extends ConsumerWidget {
  const TodayTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const TodayTab();
  }
}

class ProgressTabHost extends ConsumerWidget {
  const ProgressTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ProgressTab();
  }
}

class ExamTabHost extends ConsumerWidget {
  const ExamTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ExamTab();
  }
}

class HealthTabHost extends ConsumerWidget {
  const HealthTabHost({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const HealthTab();
  }
}
