import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Welcome/second.dart';
import 'package:tastebudz/main.dart';

void main() {
  testWidgets('Splash screen redirects to second screen', (WidgetTester tester) async {
    await tester.runAsync(() async {
      // Build the MyApp widget.
      await tester.pumpWidget(MyApp());

      // Verify that the Splash screen is displayed.
      expect(find.byType(Splash), findsOneWidget);

      // Wait for 3 seconds to allow the Splash screen to redirect to the SecondScreen.
      await Future.delayed(Duration(seconds: 3));

      // Verify that the SecondScreen is displayed.
      expect(find.byType(SecondScreen), findsOneWidget);
    });
  });
}
