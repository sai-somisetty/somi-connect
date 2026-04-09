import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../l10n/app_strings.dart';
import '../../providers/language_provider.dart';
import '../../services/auth_service.dart';

/// Six short underlines along the bottom of the input (one slot per digit).
class _OtpSixSlotUnderlineBorder extends InputBorder {
  const _OtpSixSlotUnderlineBorder({super.borderSide = const BorderSide()});

  @override
  bool get isOutline => false;

  @override
  _OtpSixSlotUnderlineBorder copyWith({BorderSide? borderSide}) {
    return _OtpSixSlotUnderlineBorder(
      borderSide: borderSide ?? this.borderSide,
    );
  }

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect);
  }

  @override
  void paint(
    Canvas canvas,
    Rect rect, {
    double? gapStart,
    double gapExtent = 0.0,
    double gapPercentage = 0.0,
    TextDirection? textDirection,
  }) {
    final paint = Paint()
      ..color = borderSide.color
      ..strokeWidth = borderSide.width
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    const gap = 6.0;
    final lineW = (rect.width - 5 * gap) / 6;
    if (lineW <= 0) return;
    var x = rect.left;
    final y = rect.bottom - borderSide.width / 2;
    for (var i = 0; i < 6; i++) {
      canvas.drawLine(Offset(x, y), Offset(x + lineW, y), paint);
      x += lineW + gap;
    }
  }

  @override
  ShapeBorder scale(double t) {
    return _OtpSixSlotUnderlineBorder(
      borderSide: borderSide.copyWith(width: borderSide.width * t),
    );
  }
}

class OtpScreen extends ConsumerStatefulWidget {
  const OtpScreen({super.key});

  @override
  ConsumerState<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends ConsumerState<OtpScreen> {
  final _emailCtrl = TextEditingController();
  final _otpCtrl = TextEditingController();
  bool _loading = false;
  String? _error;

  @override
  void dispose() {
    _emailCtrl.dispose();
    _otpCtrl.dispose();
    super.dispose();
  }

  Future<void> _sendOtp() async {
    setState(() {
      _error = null;
      _loading = true;
    });
    try {
      await ref.read(authServiceProvider).sendOtp(_emailCtrl.text.trim());
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  Future<void> _verify() async {
    setState(() {
      _error = null;
      _loading = true;
    });
    final otp = _otpCtrl.text.trim();
    try {
      final isNew = await ref.read(authServiceProvider).verifyOtp(
            _emailCtrl.text.trim(),
            otp,
          );
      if (!mounted) return;
      if (isNew) {
        context.go('/profile-setup');
      } else {
        context.go('/dashboard/today');
      }
    } catch (e) {
      setState(() => _error = e.toString());
    } finally {
      if (mounted) setState(() => _loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final lang = ref.watch(languageProvider);
    final scheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(AppStrings.verify(lang))),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _emailCtrl,
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                decoration: InputDecoration(
                  labelText: AppStrings.emailHint(lang),
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: _loading ? null : _sendOtp,
                child: Text(AppStrings.sendOtp(lang)),
              ),
              const SizedBox(height: 32),
              Text(
                AppStrings.otpHint(lang),
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 12),
              TextField(
                controller: _otpCtrl,
                autofocus: true,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                maxLength: 6,
                style: const TextStyle(
                  fontSize: 32,
                  letterSpacing: 24,
                  height: 1.2,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
                autofillHints: const [AutofillHints.oneTimeCode],
                decoration: InputDecoration(
                  counterText: '',
                  border: _OtpSixSlotUnderlineBorder(
                    borderSide: BorderSide(color: scheme.outline, width: 1.5),
                  ),
                  enabledBorder: _OtpSixSlotUnderlineBorder(
                    borderSide: BorderSide(color: scheme.outline, width: 1.5),
                  ),
                  focusedBorder: _OtpSixSlotUnderlineBorder(
                    borderSide: BorderSide(color: scheme.primary, width: 2),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              if (_error != null) ...[
                const SizedBox(height: 16),
                Text(
                  _error!,
                  style: TextStyle(color: scheme.error),
                ),
              ],
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _loading ? null : _verify,
                child: Text(AppStrings.verify(lang)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
