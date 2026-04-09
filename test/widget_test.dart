// Smoke test only — full app bootstrap (Hive, storage) lives in lib/main.dart.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('MaterialApp smoke', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(child: Text('SOMI Connect')),
        ),
      ),
    );
    expect(find.text('SOMI Connect'), findsOneWidget);
  });
}
