import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Main Page/widgets/welcoming.dart';

void main() {
  testWidgets('Welcome widget displays the correct message and user name',
          (WidgetTester tester) async {
        // Build the widget tree
        await tester.pumpWidget(MaterialApp(home: WelcomeWidget()));

        // Verify that the 'Good Morning' text is displayed
        expect(find.text('Good Morning'), findsOneWidget);

        // Verify that the user name is displayed
        expect(find.text('Emma Johnson'), findsOneWidget);

        // Verify that the text colors are correct
        expect(
            find.descendant(
                of: find.text('Good Morning'), matching: find.byType(Text)),
            findsOneWidget);
        expect(
            find.descendant(
                of: find.text('Emma Johnson'), matching: find.byType(Text)),
            findsOneWidget);
      });
}
