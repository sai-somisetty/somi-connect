import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'config/routes.dart';
import 'config/theme.dart';
import 'services/push_notification_service.dart';

class SomiApp extends ConsumerStatefulWidget {
  const SomiApp({super.key});

  @override
  ConsumerState<SomiApp> createState() => _SomiAppState();
}

class _SomiAppState extends ConsumerState<SomiApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initPushNotifications(ref);
    });
  }

  @override
  Widget build(BuildContext context) {
    final router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      title: 'SOMI Connect',
      theme: AppTheme.light(),
      routerConfig: router,
    );
  }
}
