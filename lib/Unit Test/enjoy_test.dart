import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../enjoy.dart';
import '../mainpage.dart';

void main() {
  testWidgets('EnjoyScreen should navigate to mainpage when start button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: EnjoyScreen(),
      ),
    );

    // Verify that the "Start" button exists
    final startButton = find.text('Start');
    expect(startButton, findsOneWidget);

    // Tap the "Start" button
    await tester.tap(startButton);
    await tester.pumpAndSettle();

    // Verify that the app navigated to mainpage
    expect(find.byType(mainpage), findsOneWidget);
  });
}
