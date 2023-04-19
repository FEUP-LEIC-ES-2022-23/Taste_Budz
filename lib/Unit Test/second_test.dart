import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:tastebudz/Screens/Welcome/welcome_screen.dart';
import 'package:tastebudz/main.dart';

void main() {
  testWidgets('Unit Test para SecondScreen', (WidgetTester tester) async {
    // Monta o widget SecondScreen
    await tester.pumpWidget(MyApp());

    // Encontra o botão "Get Started"
    final getStartedButton = find.byType(ElevatedButton);

    // Verifica se o botão existe na tela
    expect(getStartedButton, findsOneWidget);

    // Simula um toque no botão
    await tester.tap(getStartedButton);
    await tester.pump();

    // Verifica se a tela de boas-vindas foi exibida
    expect(find.byType(WelcomeScreen), findsOneWidget);
  });
}
