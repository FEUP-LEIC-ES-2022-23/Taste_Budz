import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/share_location.dart';
import 'package:tastebudz/enjoy.dart';


import '../location.dart';

void main() {
  group('LocationScreen', () {
    testWidgets('renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LocationScreen()));
      expect(find.byType(Stack), findsOneWidget);
      expect(find.byType(Positioned), findsNWidgets(2));
      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(Column), findsNWidgets(2));
      expect(find.byType(Text), findsNWidgets(3));
      expect(find.byType(Container), findsNWidgets(3));
      expect(find.byType(ElevatedButton), findsNWidgets(2));
    });

    testWidgets('taps on "Enter a new location" button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LocationScreen()));
      await tester.tap(find.text('Enter a new location'));
      await tester.pumpAndSettle();
      expect(find.byType(Androidlarge39Widget), findsOneWidget);
    });

    testWidgets('taps on "Continue" button', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: LocationScreen()));
      await tester.tap(find.text('Continue'));
      await tester.pumpAndSettle();
      expect(find.byType(EnjoyScreen), findsOneWidget);
    });
  });
}
