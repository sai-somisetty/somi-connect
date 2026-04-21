import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../config/theme.dart';
import '../../providers/bridge_provider.dart';
import '../../providers/selected_student_provider.dart';
import '../../providers/ui_tick_provider.dart';
import '../../widgets/widgets.dart';

class BridgeTab extends ConsumerWidget {
  const BridgeTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sid = ref.watch(selectedStudentIdProvider);
    ref.watch(realtimeTickProvider);

    if (sid == null) {
      return ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: const [
          _BridgeUnlinkedPlaceholder(),
        ],
      );
    }

    final async = ref.watch(bridgeDataProvider(sid));

    return RefreshIndicator(
      onRefresh: () async {
        ref.invalidate(bridgeDataProvider(sid));
      },
      child: async.when(
        loading: () => const Center(child: Padding(padding: EdgeInsets.all(32), child: CircularProgressIndicator())),
        error: (e, _) => ListView(
          padding: const EdgeInsets.all(24),
          children: [
            TenglishText(
              'Bridge data load avvale. Refresh try cheyandi.',
              style: AppTheme.teluguStyle(color: AppTheme.textSecondary),
            ),
          ],
        ),
        data: (data) => ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          children: [
            _TodaysCollegeLogSection(data: data),
            const SizedBox(height: AppTheme.sectionGap),
            _CoverageTrackerSection(data: data),
            const SizedBox(height: AppTheme.sectionGap),
            _WeeklyCoverageSection(data: data),
            const SizedBox(height: AppTheme.sectionGap),
            _GapAnalysisCard(data: data),
            const SizedBox(height: AppTheme.sectionGap),
            _HomeworkTrackerSection(data: data),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _BridgeUnlinkedPlaceholder extends StatelessWidget {
  const _BridgeUnlinkedPlaceholder();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _sectionCard(
          context,
          title: 'Iroju college lo 🏫',
          titleTelugu: true,
          child: TenglishText(
            'Student inkaa update cheyyaledu',
            style: AppTheme.teluguStyle(
              fontSize: 15,
              color: AppTheme.textSecondary.withValues(alpha: 0.88),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: AppTheme.sectionGap),
        _sectionCard(
          context,
          title: 'College vs App Coverage 📊',
          child: TenglishText(
            'Student link ayyaka college ↔ app bridge ikkada untundi',
            style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
          ),
        ),
        const SizedBox(height: AppTheme.sectionGap),
        _sectionCard(
          context,
          title: 'This week summary',
          child: TenglishText(
            'College log inkaa levu',
            style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
          ),
        ),
      ],
    );
  }

  Widget _sectionCard(
    BuildContext context, {
    required String title,
    required Widget child,
    bool titleTelugu = false,
  }) {
    return SomiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SomiHeader(title: title, titleTelugu: titleTelugu),
          child,
        ],
      ),
    );
  }
}

class _TodaysCollegeLogSection extends StatelessWidget {
  const _TodaysCollegeLogSection({required this.data});

  final BridgePayload data;

  @override
  Widget build(BuildContext context) {
    return SomiCard(
      leftBorderColor: AppTheme.collegePurple,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SomiHeader(
            title: 'Iroju college lo 🏫',
            titleTelugu: true,
          ),
          if (data.todaySubjects.isEmpty)
            TenglishText(
              'Student inkaa update cheyyaledu',
              style: AppTheme.teluguStyle(
                fontSize: 15,
                color: AppTheme.textSecondary.withValues(alpha: 0.88),
                fontWeight: FontWeight.w500,
              ),
            )
          else
            ...data.todaySubjects.map((s) => _SubjectLogBlock(subject: s)),
        ],
      ),
    );
  }
}

class _SubjectLogBlock extends StatelessWidget {
  const _SubjectLogBlock({required this.subject});

  final BridgeTodaySubject subject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            subject.subjectName,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
          ),
          if (subject.topics.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: subject.topics.map((t) {
                return Chip(
                  label: Text(t),
                  visualDensity: VisualDensity.compact,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                );
              }).toList(),
            ),
          ],
          if (subject.homework != null && subject.homework!.trim().isNotEmpty) ...[
            const SizedBox(height: 8),
            Text(
              '📝 ${subject.homework}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
          if (subject.teacherName != null && subject.teacherName!.trim().isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(
              subject.teacherName!,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
            ),
          ],
        ],
      ),
    );
  }
}

class _CoverageTrackerSection extends StatelessWidget {
  const _CoverageTrackerSection({required this.data});

  final BridgePayload data;

  @override
  Widget build(BuildContext context) {
    final n = data.todayTotalTopics;
    final cov = data.todayCoveredInApp;

    return SomiCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SomiHeader(
            title: 'College vs App Coverage 📊',
            titleTelugu: false,
          ),
          if (n == 0)
            TenglishText(
              'Iroju college topics inkaa levu — coverage sync avuthundi',
              style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
            )
          else ...[
            Row(
              children: [
                ProgressRing(
                  percent: data.todayPercentage.toDouble(),
                  size: 88,
                  strokeWidth: 8,
                  progressColor: AppTheme.navy,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '$cov / $n topics covered in app',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'College lo nerchukunnavi app lo kuda practice chesara ani chudandi.',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 8),
            ...data.todayTopics.map((t) => _CoverageCheckRow(topic: t)),
          ],
        ],
      ),
    );
  }
}

class _CoverageCheckRow extends StatelessWidget {
  const _CoverageCheckRow({required this.topic});

  final BridgeTodayTopic topic;

  @override
  Widget build(BuildContext context) {
    final st = topic.status;
    late final IconData icon;
    late final Color color;
    late final String line;

    if (st == 'covered') {
      icon = Icons.check_circle_rounded;
      color = AppTheme.success;
      line = 'App lo covered (${topic.appProgress.toStringAsFixed(0)}% progress)';
    } else if (st == 'started') {
      icon = Icons.radio_button_checked_rounded;
      color = AppTheme.warning;
      line = 'App lo started (${topic.appProgress.toStringAsFixed(0)}% progress)';
    } else {
      icon = Icons.cancel_rounded;
      color = AppTheme.danger;
      line = 'App lo inkaa cover cheyyaledu';
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: color, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  topic.topic,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                ),
                Text(
                  topic.subject,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                ),
                const SizedBox(height: 4),
                Text(line, style: Theme.of(context).textTheme.bodyMedium),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _WeeklyCoverageSection extends StatelessWidget {
  const _WeeklyCoverageSection({required this.data});

  final BridgePayload data;

  String _fmtDate(String iso) {
    if (iso.length >= 10) {
      final d = DateTime.tryParse(iso.substring(0, 10));
      if (d != null) return DateFormat.yMMMEd().format(d);
    }
    return iso;
  }

  @override
  Widget build(BuildContext context) {
    final w = data.weeklyTotalTopics;
    final c = data.weeklyCoveredInApp;
    final p = data.weeklyPercentage;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SomiHeader(
          title: 'Weekly coverage (7 days)',
          titleTelugu: false,
        ),
        SomiCard(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                w == 0
                    ? 'Ee week college topics inkaa levu'
                    : 'This week: $c / $w college topics covered in app ($p%)',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
              if (data.dailyBreakdown.isEmpty) ...[
                const SizedBox(height: 12),
                TenglishText(
                  'College log inkaa levu',
                  style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
                ),
              ] else
                ...data.dailyBreakdown.asMap().entries.map((e) {
                  final day = e.value;
                  final expanded = e.key == 0 && day.topics.isNotEmpty;
                  return Theme(
                    data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      initiallyExpanded: expanded,
                      title: Text(
                        _fmtDate(day.logDate),
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        '${day.topics.length} topic${day.topics.length == 1 ? '' : 's'}',
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                          child: Column(
                            children: day.topics
                                .map((t) => Padding(
                                      padding: const EdgeInsets.only(bottom: 10),
                                      child: _CoverageCheckRow(topic: t),
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
            ],
          ),
        ),
      ],
    );
  }
}

class _GapAnalysisCard extends StatelessWidget {
  const _GapAnalysisCard({required this.data});

  final BridgePayload data;

  @override
  Widget build(BuildContext context) {
    final hasGaps = data.gaps.isNotEmpty;
    return SomiCard(
      leftBorderColor: hasGaps ? AppTheme.danger : AppTheme.success,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SomiHeader(
            title: 'Gaps — College lo chesaru, App lo ledu ⚠️',
            titleTelugu: true,
          ),
          if (!hasGaps)
            TenglishText(
              '✅ All college topics covered in app!',
              style: AppTheme.teluguStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppTheme.success,
              ),
            )
          else
            ...data.gaps.map((g) => Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_right_alt_rounded, color: AppTheme.danger, size: 22),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              g.topic,
                              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                            ),
                            Text(
                              g.subject,
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                            ),
                            Text(
                              'Recommend: Start this in app',
                              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.orange),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
        ],
      ),
    );
  }
}

class _HomeworkTrackerSection extends StatelessWidget {
  const _HomeworkTrackerSection({required this.data});

  final BridgePayload data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SomiHeader(
          title: 'Homework 📝',
          titleTelugu: false,
        ),
        SomiCard(
          child: data.homework.isEmpty
              ? TenglishText(
                  'Pending homework inkaa levu',
                  style: AppTheme.teluguStyle(fontSize: 15, color: AppTheme.textSecondary),
                )
              : Column(
                  children: data.homework.map((h) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(Icons.check_box_outline_blank_rounded, color: AppTheme.textSecondary, size: 24),
                          const SizedBox(width: 12),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  h.subject,
                                  style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
                                ),
                                Text(h.homework, style: Theme.of(context).textTheme.bodyMedium),
                                Text(
                                  h.date,
                                  style: Theme.of(context).textTheme.bodySmall?.copyWith(color: AppTheme.textSecondary),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
        ),
      ],
    );
  }
}
