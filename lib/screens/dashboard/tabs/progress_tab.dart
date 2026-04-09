import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../config/theme.dart';
import '../../../models/isar/isar_collections.dart';
import '../../../providers/storage_provider.dart';
import '../../../providers/selected_student_provider.dart';
import '../../../providers/ui_tick_provider.dart';

class ProgressTab extends ConsumerWidget {
  const ProgressTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final storage = ref.watch(storageProvider);
    final sid = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    if (sid == null) {
      return const Center(child: Text('Link a student to see progress.'));
    }

    final concepts = storage
        .allConceptProgressSync()
        .where((c) => c.studentId == sid)
        .toList();

    final weak = concepts.where((c) => c.progressPercent < 50).toList()
      ..sort((a, b) => a.progressPercent.compareTo(b.progressPercent));

    final chapters = _demoChapters(concepts);

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text('Chapter roadmap', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 12),
        _RoadmapTimeline(chapters: chapters),
        const SizedBox(height: 28),
        Text('Weak concepts', style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 8),
        if (weak.isEmpty)
          const Text('Nothing below 50% right now — great job!')
        else
          ...weak.map((c) => _ConceptTile(concept: c)),
      ],
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
  final avg = concepts.isEmpty
      ? 0.0
      : concepts.map((e) => e.progressPercent).reduce((a, b) => a + b) / concepts.length;
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
          _RoadmapRow(
            node: chapters[i],
            isLast: i == chapters.length - 1,
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
        return Colors.green.shade600;
      case _ChapterStatus.active:
        return AppTheme.accentWarmOrange;
      case _ChapterStatus.todo:
        return Colors.grey.shade400;
    }
  }

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: _dotColor,
                  shape: BoxShape.circle,
                ),
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 3,
                    color: Colors.grey.shade300,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                node.title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ConceptTile extends StatelessWidget {
  const _ConceptTile({required this.concept});

  final ConceptProgressIsar concept;

  @override
  Widget build(BuildContext context) {
    final p = concept.progressPercent.clamp(0, 100) / 100.0;
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(concept.conceptName, style: Theme.of(context).textTheme.titleSmall),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: p,
              minHeight: 10,
              borderRadius: BorderRadius.circular(6),
              color: AppTheme.accentWarmOrange,
              backgroundColor: Colors.grey.shade200,
            ),
            const SizedBox(height: 4),
            Text('${concept.progressPercent.toStringAsFixed(0)}%'),
          ],
        ),
      ),
    );
  }
}
