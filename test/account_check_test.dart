import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/components/already_have_an_account_acheck.dart';

void main() {
  group('AlreadyHaveAnAccountCheck', () {
    testWidgets('displays "Don’t have an Account ? " when login is true',
            (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: AlreadyHaveAnAccountCheck(login: true, press: () {}),
          ));
          expect(find.text('Don’t have an Account ? '), findsOneWidget);
        });

    testWidgets('displays "Already have an Account ? " when login is false',
            (WidgetTester tester) async {
          await tester.pumpWidget(MaterialApp(
            home: AlreadyHaveAnAccountCheck(login: false, press: () {}),
          ));
          expect(find.text('Already have an Account ? '), findsOneWidget);
        });

    testWidgets('calls press callback when tapped', (WidgetTester tester) async {
      var pressed = false;
      await tester.pumpWidget(MaterialApp(
        home: AlreadyHaveAnAccountCheck(login: true, press: () => pressed = true),
      ));
      await tester.tap(find.text('Sign Up'));
      expect(pressed, isTrue);

      await tester.pumpWidget(MaterialApp(
        home: AlreadyHaveAnAccountCheck(login: false, press: () => pressed = true),
      ));
      await tester.tap(find.text('Log In'));
      expect(pressed, isTrue);
    });
  });
}
