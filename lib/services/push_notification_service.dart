import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'api_service.dart';

/// Call once after [ProviderScope] is available (e.g. first frame of [SomiApp]).
Future<void> initPushNotifications(WidgetRef ref) async {
  if (kIsWeb) {
    debugPrint('[SOMI] FCM: skipped (web)');
    return;
  }
  debugPrint('[SOMI] FCM: initPushNotifications start');
  try {
    if (Firebase.apps.isEmpty) {
      await Firebase.initializeApp();
      debugPrint('[SOMI] FCM: Firebase.initializeApp OK (post-frame)');
    } else {
      debugPrint('[SOMI] FCM: Firebase already initialized, skipping duplicate init');
    }
    final messaging = FirebaseMessaging.instance;
    await messaging.requestPermission();
    final token = await messaging.getToken();
    if (token != null && token.isNotEmpty) {
      final platform =
          defaultTargetPlatform == TargetPlatform.iOS ? 'ios' : 'android';
      await ref.read(apiServiceProvider).postDeviceToken(token, platform);
    }
    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      debugPrint(
        'FCM foreground: ${msg.notification?.title} ${msg.notification?.body}',
      );
    });
  } catch (e, st) {
    debugPrint('FCM init skipped: $e\n$st');
  }
}
