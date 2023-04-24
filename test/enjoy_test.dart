import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/enjoy.dart';
import '../lib/mainpage.dart';

void main() {
  testWidgets('EnjoyScreen should navigate to mainpage when start button is pressed', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: EnjoyScreen(),
      ),
    );

    final startButton = find.text('Start');
    expect(startButton, findsOneWidget);

    await tester.tap(startButton);
    await tester.pumpAndSettle();

    expect(find.byType(mainpage), findsOneWidget);
  });
}
