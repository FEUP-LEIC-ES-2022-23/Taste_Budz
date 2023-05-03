import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Login/login_form.dart';
import 'package:tastebudz/Screens/Welcome/location.dart';

void main() {
  group('LoginPageWidget', () {
    testWidgets('displays email and password text fields', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPageWidget()));

      expect(find.byType(TextField), findsNWidgets(2));
      expect(find.widgetWithText(TextField, 'Your email'), findsOneWidget);
      expect(find.widgetWithText(TextField, 'Your password'), findsOneWidget);
    });

    testWidgets('navigates to LocationScreen on successful login', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LoginPageWidget()));

      final emailField = find.widgetWithText(TextField, 'Your email');
      final passwordField = find.widgetWithText(TextField, 'Your password');
      final loginButton = find.widgetWithText(TextButton, 'LOGIN');

      expect(find.byType(LocationScreen), findsNothing);

      await tester.enterText(emailField, 'user@example.com');
      await tester.enterText(passwordField, 'password');
      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      expect(find.byType(LocationScreen), findsOneWidget);
    });
  });
}
