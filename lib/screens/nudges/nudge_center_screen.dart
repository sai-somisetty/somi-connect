import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../config/theme.dart';
import '../../l10n/app_strings.dart';
import '../../models/isar/isar_collections.dart';
import '../../providers/storage_provider.dart';
import '../../storage/storage_interface.dart';
import '../../providers/language_provider.dart';
import '../../providers/ui_tick_provider.dart';
import '../../widgets/widgets.dart';

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
        title: lang == AppLanguage.telugu
            ? TenglishText(
                'Suggestions 💡',
                style: AppTheme.teluguStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
              )
            : Text(
                'Suggestions 💡',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: list.isEmpty
          ? Center(
              child: EmptyState(
                icon: Icons.sentiment_satisfied_alt_rounded,
                message: AppStrings.nudgesEmpty(lang),
                messageTelugu: lang == AppLanguage.telugu,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              itemCount: list.length,
              itemBuilder: (context, i) {
                final n = list[i];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Dismissible(
                    key: ValueKey(n.apiId),
                    direction: DismissDirection.startToEnd,
                    onDismissed: (_) async {
                      await storage.writeTxn(() => storage.deleteNudgeById(n.id));
                    },
                    background: Container(
                      decoration: BoxDecoration(
                        color: AppTheme.success.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(AppTheme.cardRadius),
                      ),
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 20),
                      child: const Icon(Icons.check_circle_outline, color: Color(0xFF276749)),
                    ),
                    child: _NudgeCard(nudge: n, storage: storage),
                  ),
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
    if (p.contains('urgent') || p.contains('high')) return AppTheme.danger;
    if (p.contains('low')) return AppTheme.textSecondary.withValues(alpha: 0.35);
    return AppTheme.navy.withValues(alpha: 0.35);
  }

  IconData get _icon {
    final t = nudge.nudgeType.toLowerCase();
    if (t.contains('exam')) return Icons.quiz;
    if (t.contains('health')) return Icons.favorite;
    return Icons.notifications_active_outlined;
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: nudge.isRead ? 0.78 : 1,
      child: SomiCard(
        leftBorderColor: _border,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundColor: AppTheme.orange.withValues(alpha: 0.18),
            child: Icon(_icon, color: AppTheme.orange),
          ),
          title: Text(
            nudge.title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: nudge.isRead ? AppTheme.textSecondary : AppTheme.textPrimary,
                ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Text(
              nudge.body,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: nudge.isRead ? AppTheme.textSecondary : AppTheme.textPrimary,
                  ),
            ),
          ),
          trailing: Text(
            nudge.createdAt?.toLocal().toString().substring(0, 16) ?? '',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          onTap: () async {
            if (!nudge.isRead) {
              nudge.isRead = true;
              await storage.writeTxn(() => storage.putNudge(nudge));
            }
          },
        ),
      ),
    );
  }
}
