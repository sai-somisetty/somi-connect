import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../config/theme.dart';
import '../../l10n/app_strings.dart';
import '../../widgets/widgets.dart';
import '../../models/isar/isar_collections.dart';
import '../../providers/storage_provider.dart';
import '../../providers/language_provider.dart';
import '../../providers/selected_student_provider.dart';
import '../../services/api_service.dart';
import '../../services/auth_service.dart';

class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  bool _push = true;
  bool _whatsapp = false;
  String _version = '';

  Future<void> _unlink(ParentStudentLinkIsar link) async {
    try {
      await ref.read(apiServiceProvider).unlinkStudent(link.apiId);
      final storage = ref.read(storageProvider);
      await storage.writeTxn(() => storage.deleteParentStudentLinkById(link.id));
      if (ref.read(selectedStudentIdProvider) == link.studentId) {
        ref.read(selectedStudentIdProvider.notifier).state = null;
      }
      if (mounted) setState(() {});
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
      }
    }
  }

  @override
  void initState() {
    super.initState();
    PackageInfo.fromPlatform().then((p) {
      if (mounted) setState(() => _version = '${p.version}+${p.buildNumber}');
    });
  }

  Future<void> _reportProblem() async {
    final uri = Uri(
      scheme: 'mailto',
      path: 'support@somi.app',
      queryParameters: {'subject': 'SOMI Connect issue'},
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _logout() async {
    final storage = ref.read(storageProvider);
    await ref.read(authServiceProvider).logout(storage);
    if (!mounted) return;
    context.go('/auth');
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch(languageProvider);
    final storage = ref.watch(storageProvider);
    final links = storage.allParentStudentLinksSync();

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.settings(lang)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        children: [
          SomiCard(
            leftBorderColor: Theme.of(context).colorScheme.primary,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.language(lang), style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(height: 12),
                SegmentedButton<AppLanguage>(
                  segments: const [
                    ButtonSegment(value: AppLanguage.telugu, label: Text('తెలుగు')),
                    ButtonSegment(value: AppLanguage.english, label: Text('English')),
                  ],
                  selected: {lang},
                  onSelectionChanged: (s) {
                    ref.read(languageProvider.notifier).state = s.first;
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: AppTheme.sectionGap),
          SomiCard(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text('Change PIN'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => _showChangePin(context),
            ),
          ),
          const SizedBox(height: AppTheme.sectionGap),
          SomiCard(
            child: Column(
              children: [
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('Push notifications'),
                  value: _push,
                  onChanged: (v) async {
                    setState(() => _push = v);
                    try {
                      await ref.read(apiServiceProvider).updateNotificationPrefs(
                            pushEnabled: v,
                            whatsappEnabled: _whatsapp,
                          );
                    } catch (_) {}
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('WhatsApp updates'),
                  value: _whatsapp,
                  onChanged: (v) async {
                    setState(() => _whatsapp = v);
                    try {
                      await ref.read(apiServiceProvider).updateNotificationPrefs(
                            pushEnabled: _push,
                            whatsappEnabled: v,
                          );
                    } catch (_) {}
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: AppTheme.sectionGap),
          SomiHeader(title: 'Linked students'),
          SomiCard(
            child: links.isEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      'No linked students yet',
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: AppTheme.textSecondary),
                    ),
                  )
                : Column(
                    children: links.map((link) {
                      StudentIsar? st;
                      for (final s in storage.allStudentsSync()) {
                        if (s.apiId == link.studentId) {
                          st = s;
                          break;
                        }
                      }
                      final name = st?.name ?? link.studentId;
                      return ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(name),
                        subtitle: Text(link.relationship),
                        trailing: IconButton(
                          icon: const Icon(Icons.link_off),
                          onPressed: () => _unlink(link),
                        ),
                      );
                    }).toList(),
                  ),
          ),
          const SizedBox(height: 12),
          SomiButton(
            label: 'Link another child',
            variant: SomiButtonVariant.secondary,
            onPressed: () => context.push('/profile-setup'),
          ),
          const SizedBox(height: AppTheme.sectionGap),
          SomiCard(
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(AppStrings.reportProblem(lang)),
                  trailing: const Icon(Icons.mail_outline),
                  onTap: _reportProblem,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: const Text('App version'),
                  subtitle: Text(_version.isEmpty ? '…' : _version),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            height: AppTheme.minTapTarget,
            child: OutlinedButton(
              onPressed: _logout,
              style: OutlinedButton.styleFrom(
                foregroundColor: AppTheme.danger,
                side: const BorderSide(color: AppTheme.danger, width: 1.5),
              ),
              child: const Text('Logout'),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _showChangePin(BuildContext context) async {
    final pin = TextEditingController();
    final ok = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('New PIN'),
        content: TextField(
          controller: pin,
          obscureText: true,
          keyboardType: TextInputType.number,
          maxLength: 6,
          decoration: const InputDecoration(counterText: ''),
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(ctx, false), child: const Text('Cancel')),
          FilledButton(onPressed: () => Navigator.pop(ctx, true), child: const Text('Save')),
        ],
      ),
    );
    if (ok == true && pin.text.length >= 4 && context.mounted) {
      try {
        await ref.read(authServiceProvider).setPin(pin.text.trim());
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('PIN updated')));
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
        }
      }
    }
    pin.dispose();
  }
}
