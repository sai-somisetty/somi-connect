import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../l10n/app_strings.dart';
import '../../providers/storage_provider.dart';
import '../../storage/storage_interface.dart';
import '../../providers/language_provider.dart';
import '../../providers/selected_student_provider.dart';
import '../../services/auth_service.dart';
import '../../services/sync_service.dart';

class ProfileSetupScreen extends ConsumerStatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  ConsumerState<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends ConsumerState<ProfileSetupScreen> {
  final _nameCtrl = TextEditingController();
  final _phoneCtrl = TextEditingController();
  final _studentEmailCtrl = TextEditingController();
  final _pinCtrl = TextEditingController();
  String _relationship = 'father';
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _nameCtrl.dispose();
    _phoneCtrl.dispose();
    _studentEmailCtrl.dispose();
    _pinCtrl.dispose();
    super.dispose();
  }

  String _langCode(AppLanguage l) => l == AppLanguage.telugu ? 'te' : 'en';

  Future<void> _submit() async {
    setState(() {
      _error = null;
      _loading = true;
    });
    final lang = ref.read(languageProvider);
    try {
      await ref.read(authServiceProvider).saveProfile(
            name: _nameCtrl.text.trim(),
            phone: _phoneCtrl.text.trim().isEmpty ? null : _phoneCtrl.text.trim(),
            language: _langCode(lang),
          );
      if (_studentEmailCtrl.text.trim().isNotEmpty) {
        final sid = await ref.read(authServiceProvider).linkStudent(
              studentEmail: _studentEmailCtrl.text.trim(),
              relationship: _relationship,
            );
        if (sid != null && sid.isNotEmpty) {
          ref.read(selectedStudentIdProvider.notifier).state = sid;
        }
      }
      if (_pinCtrl.text.trim().length >= 4) {
        await ref.read(authServiceProvider).setPin(_pinCtrl.text.trim());
      }

      final storage = ref.read(storageProvider);
      await _pickStudentFromStorage(storage);

      final sid = ref.read(selectedStudentIdProvider);
      if (sid != null) {
        try {
          await ref.read(syncServiceProvider).pullFromServer(sid);
        } catch (_) {}
      }

      if (!mounted) return;
      context.go('/dashboard/today');
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _pickStudentFromStorage(StorageInterface storage) async {
    final links = await storage.allParentStudentLinks();
    if (links.isEmpty) return;
    ref.read(selectedStudentIdProvider.notifier).state = links.first.studentId;
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch(languageProvider);

    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.continueDashboard(lang))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _nameCtrl,
                decoration: InputDecoration(labelText: AppStrings.name(lang)),
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _phoneCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(labelText: AppStrings.phoneOptional(lang)),
              ),
              const SizedBox(height: 16),
              Text(AppStrings.language(lang)),
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
              const SizedBox(height: 24),
              Text(
                AppStrings.linkChild(lang),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              TextField(
                controller: _studentEmailCtrl,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(labelText: AppStrings.studentEmail(lang)),
              ),
              const SizedBox(height: 8),
              DropdownButtonFormField<String>(
                value: _relationship,
                decoration: InputDecoration(labelText: AppStrings.relationship(lang)),
                items: [
                  DropdownMenuItem(value: 'father', child: Text(lang == AppLanguage.telugu ? 'Tandr' : 'Father')),
                  DropdownMenuItem(value: 'mother', child: Text(lang == AppLanguage.telugu ? 'Talli' : 'Mother')),
                  DropdownMenuItem(value: 'guardian', child: Text(lang == AppLanguage.telugu ? 'Guardian' : 'Guardian')),
                ],
                onChanged: (v) => setState(() => _relationship = v ?? 'father'),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: _loading
                    ? null
                    : () async {
                        try {
                          final sid = await ref.read(authServiceProvider).linkStudent(
                                studentEmail: _studentEmailCtrl.text.trim(),
                                relationship: _relationship,
                              );
                          if (sid != null && sid.isNotEmpty) {
                            ref.read(selectedStudentIdProvider.notifier).state = sid;
                          }
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(AppStrings.link(lang))),
                          );
                        } catch (e) {
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(e.toString())),
                          );
                        }
                      },
                child: Text(AppStrings.link(lang)),
              ),
              const SizedBox(height: 24),
              TextField(
                controller: _pinCtrl,
                keyboardType: TextInputType.number,
                obscureText: true,
                maxLength: 6,
                decoration: InputDecoration(
                  labelText: AppStrings.setExamPin(lang),
                  counterText: '',
                ),
              ),
              if (_error != null)
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.error)),
                ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _loading ? null : _submit,
                child: Text(AppStrings.continueDashboard(lang)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
