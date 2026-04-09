import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../config/theme.dart';
import '../../l10n/app_strings.dart';
import '../../models/isar/isar_collections.dart';
import '../../providers/storage_provider.dart';
import '../../storage/storage_interface.dart';
import '../../providers/language_provider.dart';
import '../../providers/ui_tick_provider.dart';

class NudgeCenterScreen extends ConsumerWidget {
  const NudgeCenterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lang = ref.watch(languageProvider);
    final storage = ref.watch(storageProvider);
    ref.watch(realtimeTickProvider);

    final list = storage.allNudgesSync().toList()
      ..sort((a, b) {
        if (a.isRead != b.isRead) return a.isRead ? 1 : -1;
        return (b.createdAt ?? DateTime(1970)).compareTo(a.createdAt ?? DateTime(1970));
      });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nudge Center'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: list.isEmpty
          ? Center(child: Text(AppStrings.nudgesEmpty(lang)))
          : ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: list.length,
              itemBuilder: (context, i) {
                final n = list[i];
                return Dismissible(
                  key: ValueKey(n.apiId),
                  direction: DismissDirection.startToEnd,
                  onDismissed: (_) async {
                    await storage.writeTxn(() => storage.deleteNudgeById(n.id));
                  },
                  background: Container(
                    color: Colors.green.shade100,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.only(left: 20),
                    child: const Icon(Icons.check),
                  ),
                  child: _NudgeCard(nudge: n, storage: storage),
                );
              },
            ),
    );
  }
}

class _NudgeCard extends StatelessWidget {
  const _NudgeCard({required this.nudge, required this.storage});

  final NudgeIsar nudge;
  final StorageInterface storage;

  Color get _border {
    final p = nudge.priority.toLowerCase();
    if (p.contains('urgent') || p.contains('high')) return Colors.red.shade700;
    if (p.contains('low')) return Colors.grey.shade400;
    return AppTheme.primaryDeepBlue;
  }

  IconData get _icon {
    final t = nudge.nudgeType.toLowerCase();
    if (t.contains('exam')) return Icons.quiz;
    if (t.contains('health')) return Icons.favorite;
    return Icons.notifications;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: _border, width: nudge.isRead ? 0 : 2),
      ),
      child: InkWell(
        onTap: () async {
          if (!nudge.isRead) {
            nudge.isRead = true;
            await storage.writeTxn(() => storage.putNudge(nudge));
          }
        },
        borderRadius: BorderRadius.circular(12),
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: AppTheme.accentWarmOrange.withValues(alpha: 0.2),
            child: Icon(_icon, color: AppTheme.accentWarmOrange),
          ),
          title: Text(nudge.title, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(nudge.body),
          trailing: Text(
            nudge.createdAt?.toLocal().toString().substring(0, 16) ?? '',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
