import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../config/theme.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/mirror_provider.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';
import '../../../widgets/widgets.dart';

class ProgressTab extends ConsumerWidget {
  const ProgressTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    final concepts = sid == null
        ? <ConceptProgressIsar>[]
        : storage.allConceptProgressSync().where((c) => c.studentId == sid).toList();

    final weak = concepts.where((c) => c.progressPercent < 50).toList()
      ..sort((a, b) => a.progressPercent.compareTo(b.progressPercent));

    final chapters = _demoChapters(concepts);

    final avgProgress = concepts.isEmpty
        ? 0.0
        : concepts.map((e) => e.progressPercent).reduce((a, b) => a + b) / concepts.length;

    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      children: [
        SomiCard(
          child: Column(
            children: [
              ProgressRing(percent: avgProgress, size: 132, strokeWidth: 11),
              const SizedBox(height: 12),
              Text(
                'CMA Foundation Paper 1',
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                sid == null
                    ? 'Student link ayyaka syllabus progress ikkada untundi'
                    : (concepts.isEmpty
                        ? 'Study data sync ayyaka ikkada progress kanipistundi'
                        : '${concepts.where((c) => c.progressPercent >= 80).length}/${concepts.length} concepts strong'),
                style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppTheme.sectionGap),
        SomiHeader(title: 'Chapter roadmap', titleTelugu: false),
        if (sid == null)
          const _RoadmapSkeleton()
        else
          _RoadmapTimeline(chapters: chapters),
        if (sid == null)
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 8),
            child: Center(
              child: TenglishText(
                'Chapters load avthaayi',
                style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
              ),
            ),
          ),
        const SizedBox(height: AppTheme.sectionGap),
        SomiHeader(title: 'Weak concepts', titleTelugu: false),
        if (sid == null)
          const _WeakConceptsPlaceholder()
        else if (weak.isEmpty)
          SomiCard(
            leftBorderColor: AppTheme.success,
            child: TenglishText(
              'Baaga chesaru! 🎉 All concepts above 50%',
              style: AppTheme.teluguStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          )
        else
          ...weak.map((c) => Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: _ConceptSomiCard(concept: c),
              )),
        if (sid != null) ...[
          const SizedBox(height: AppTheme.sectionGap),
          _CollegeMirrorSection(studentId: sid),
        ],
      ],
    );
  }
}

class _CollegeMirrorSection extends ConsumerWidget {
  const _CollegeMirrorSection({required this.studentId});

  final String studentId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final async = ref.watch(mirrorResultsProvider(studentId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SomiHeader(
          title: 'College vs Mirror Tests 🎓',
          titleTelugu: false,
        ),
        async.when(
          data: (rows) {
            if (rows.isEmpty) {
              return SomiCard(
                child: EmptyState(
                  icon: Icons.school_outlined,
                  message: 'Mirror tests inkaa levu',
                ),
              );
            }
            return Column(
              children: rows.map((r) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: _MirrorResultCard(row: r),
                );
              }).toList(),
            );
          },
          loading: () => const SomiCard(
            child: Center(child: Padding(padding: EdgeInsets.all(24), child: CircularProgressIndicator())),
          ),
          error: (_, _) => SomiCard(
            child: EmptyState(
              icon: Icons.cloud_off_outlined,
              message: 'Mirror data load avvale',
            ),
          ),
        ),
      ],
    );
  }
}

class _MirrorResultCard extends StatelessWidget {
  const _MirrorResultCard({required this.row});

  final Map<String, dynamic> row;

  double _d(String a, String b) {
    final x = row[a];
    final y = row[b];
    if (x is num && y is num) return (x.toDouble() - y.toDouble()).abs();
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final college = (row['college_score'] as num?)?.toDouble() ?? 0;
    final mirror = (row['mirror_score'] as num?)?.toDouble() ?? 0;
    final gap = (row['gap_percentage'] as num?)?.toDouble() ?? _d('college_score', 'mirror_score');
    final rote = row['rote_learning_flag'] == true || gap > 30;
    final title = row['paper_title']?.toString() ?? 'Mirror test';
    final collegeName = row['college_name']?.toString() ?? '';

    return InkWell(
      onTap: () => _MirrorDetailSheet.show(context, row),
      borderRadius: BorderRadius.circular(AppTheme.cardRadius),
      child: SomiCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700)),
            if (collegeName.isNotEmpty)
              Text(collegeName, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary)),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('College', style: Theme.of(context).textTheme.labelSmall),
                      const SizedBox(height: 4),
                      LinearProgressIndicator(
                        value: (college / 100).clamp(0, 1),
                        minHeight: 10,
                        color: AppTheme.navy,
                        backgroundColor: AppTheme.textSecondary.withValues(alpha: 0.12),
                      ),
                      Text('${college.toStringAsFixed(0)}%', style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Mirror', style: Theme.of(context).textTheme.labelSmall),
                      const SizedBox(height: 4),
                      LinearProgressIndicator(
                        value: (mirror / 100).clamp(0, 1),
                        minHeight: 10,
                        color: AppTheme.orange,
                        backgroundColor: AppTheme.textSecondary.withValues(alpha: 0.12),
                      ),
                      Text('${mirror.toStringAsFixed(0)}%', style: Theme.of(context).textTheme.titleSmall),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text('Gap: ${gap.toStringAsFixed(0)}%', style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            if (rote)
              Chip(
                label: const Text('⚠️ Rote learning signs'),
                backgroundColor: AppTheme.danger.withValues(alpha: 0.12),
                side: BorderSide(color: AppTheme.danger.withValues(alpha: 0.4)),
              )
            else if (gap < 10)
              Chip(
                label: const Text('✅ Strong conceptual understanding'),
                backgroundColor: AppTheme.success.withValues(alpha: 0.12),
                side: BorderSide(color: AppTheme.success.withValues(alpha: 0.4)),
              ),
          ],
        ),
      ),
    );
  }
}

class _MirrorDetailSheet {
  static void show(BuildContext context, Map<String, dynamic> row) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (ctx) => DraggableScrollableSheet(
        expand: false,
        initialChildSize: 0.55,
        maxChildSize: 0.9,
        minChildSize: 0.35,
        builder: (context, scroll) {
          final breakdown = row['question_breakdown'];
          final items = breakdown is List ? breakdown : const <dynamic>[];
          return ListView(
            controller: scroll,
            padding: const EdgeInsets.all(20),
            children: [
              Text(
                row['paper_title']?.toString() ?? 'Mirror test',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 16),
              if (items.isEmpty)
                TenglishText(
                  'Question-wise breakdown backend nunchi vastundi.',
                  style: AppTheme.teluguStyle(color: AppTheme.textSecondary),
                )
              else
                ...items.map((e) {
                  if (e is! Map) return const SizedBox.shrink();
                  final m = Map<String, dynamic>.from(e);
                  return ListTile(
                    title: Text(m['label']?.toString() ?? 'Q'),
                    subtitle: Text(m['note']?.toString() ?? ''),
                  );
                }),
            ],
          );
        },
      ),
    );
  }
}

class _RoadmapSkeleton extends StatelessWidget {
  const _RoadmapSkeleton();

  @override
  Widget build(BuildContext context) {
    final base = AppTheme.textSecondary.withValues(alpha: 0.2);
    return Column(
      children: List.generate(3, (i) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: SomiCard(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: base, width: 2),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 14,
                        decoration: BoxDecoration(
                          color: base,
                          borderRadius: BorderRadius.circular(6),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        height: 10,
                        width: 120,
                        decoration: BoxDecoration(
                          color: AppTheme.textSecondary.withValues(alpha: 0.12),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _WeakConceptsPlaceholder extends StatelessWidget {
  const _WeakConceptsPlaceholder();

  @override
  Widget build(BuildContext context) {
    final track = AppTheme.textSecondary.withValues(alpha: 0.15);
    return SomiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (var i = 0; i < 2; i++) ...[
            if (i > 0) const SizedBox(height: 16),
            Container(
              height: 12,
              width: 160,
              decoration: BoxDecoration(
                color: AppTheme.textSecondary.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: LinearProgressIndicator(
                value: null,
                minHeight: 10,
                backgroundColor: track,
              ),
            ),
          ],
          const SizedBox(height: 14),
          TenglishText(
            'Weak concepts student link tarvata kanipistayi',
            style: AppTheme.teluguStyle(fontSize: 14, color: AppTheme.textSecondary),
          ),
        ],
      ),
    );
  }
}

List<_ChapterNode> _demoChapters(List<ConceptProgressIsar> concepts) {
  if (concepts.isEmpty) {
    return [
      const _ChapterNode('Physics — Mechanics', _ChapterStatus.done),
      const _ChapterNode('Organic Chemistry', _ChapterStatus.active),
      const _ChapterNode('Calculus — Limits', _ChapterStatus.todo),
    ];
  }
  final avg = concepts.map((e) => e.progressPercent).reduce((a, b) => a + b) / concepts.length;
  return [
    _ChapterNode('Overall momentum', avg >= 70 ? _ChapterStatus.done : _ChapterStatus.active),
    _ChapterNode('Focus chapters', avg >= 40 ? _ChapterStatus.active : _ChapterStatus.todo),
    _ChapterNode('Stretch goals', _ChapterStatus.todo),
  ];
}

enum _ChapterStatus { done, active, todo }

class _ChapterNode {
  const _ChapterNode(this.title, this.status);
  final String title;
  final _ChapterStatus status;
}

class _RoadmapTimeline extends StatelessWidget {
  const _RoadmapTimeline({required this.chapters});

  final List<_ChapterNode> chapters;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (var i = 0; i < chapters.length; i++)
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _RoadmapRow(
              node: chapters[i],
              isLast: i == chapters.length - 1,
            ),
          ),
      ],
    );
  }
}

class _RoadmapRow extends StatelessWidget {
  const _RoadmapRow({required this.node, required this.isLast});

  final _ChapterNode node;
  final bool isLast;

  Color get _dotColor {
    switch (node.status) {
      case _ChapterStatus.done:
        return AppTheme.success;
      case _ChapterStatus.active:
        return AppTheme.orange;
      case _ChapterStatus.todo:
        return AppTheme.textSecondary.withValues(alpha: 0.45);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SomiCard(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: node.status == _ChapterStatus.active ? 24 : 18,
                height: node.status == _ChapterStatus.active ? 24 : 18,
                decoration: BoxDecoration(
                  color: node.status == _ChapterStatus.todo ? Colors.transparent : _dotColor,
                  shape: BoxShape.circle,
                  border: node.status == _ChapterStatus.todo
                      ? Border.all(color: _dotColor, width: 2)
                      : null,
                ),
              ),
              if (!isLast)
                Container(
                  width: 3,
                  height: 40,
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  decoration: BoxDecoration(
                    color: node.status == _ChapterStatus.todo
                        ? AppTheme.textSecondary.withValues(alpha: 0.25)
                        : _dotColor.withValues(alpha: 0.5),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              node.title,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: node.status == _ChapterStatus.active ? FontWeight.w700 : FontWeight.w600,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ConceptSomiCard extends StatelessWidget {
  const _ConceptSomiCard({required this.concept});

  final ConceptProgressIsar concept;

  @override
  Widget build(BuildContext context) {
    final p = concept.progressPercent.clamp(0, 100) / 100.0;
    final barColor = concept.progressPercent < 30
        ? AppTheme.danger
        : concept.progressPercent < 50
            ? AppTheme.orange
            : AppTheme.success;

    return SomiCard(
      leftBorderColor: barColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(concept.conceptName, style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: LinearProgressIndicator(
              value: p,
              minHeight: 10,
              color: barColor,
              backgroundColor: AppTheme.textSecondary.withValues(alpha: 0.12),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            '${concept.progressPercent.toStringAsFixed(0)}%',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: barColor),
          ),
        ],
      ),
    );
  }
}
