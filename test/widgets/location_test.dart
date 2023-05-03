import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tastebudz/Screens/Welcome/share_location.dart';
import 'package:tastebudz/Screens/Welcome/enjoy.dart';
import 'package:tastebudz/Screens/Welcome/location.dart';

void main() {
  testWidgets('Location screen shows image and text', (WidgetTester tester) async {
    await tester.pumpWidget(LocationScreen());

    expect(find.byType(Image), findsOneWidget);

    expect(find.text('Share your location with us !'), findsOneWidget);

    expect(find.text('To discover nearby restaurants, please provide your location.'), findsOneWidget);

    expect(find.text('Enter a new location'), findsOneWidget);

    expect(find.text('Continue'), findsOneWidget);
  });

  testWidgets('Entering a new location navigates to the share location page', (WidgetTester tester) async {
    await tester.pumpWidget(LocationScreen());

    await tester.tap(find.text('Enter a new location'));
    await tester.pump();

    expect(find.byType(ShareLocationPage), findsOneWidget);
  });

  testWidgets('Continuing navigates to the enjoy screen', (WidgetTester tester) async {
    await tester.pumpWidget(LocationScreen());

    await tester.tap(find.text('Continue'));
    await tester.pump();

    expect(find.byType(EnjoyScreen), findsOneWidget);
  }); 
}