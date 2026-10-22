import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pip/main.dart' as app;

void main() {
  testWidgets('приложение запускается и доступные вкладки открываются', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(390, 844);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);
    app.main();
    await tester.pumpAndSettle();
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.text('pip'), findsOneWidget);
    expect(tester.takeException(), isNull);

    // Нижнее меню появляется после создания главного экрана.
    if (find.byType(NavigationBar).evaluate().isNotEmpty) {
      for (final label in [
        'Услуги',
        'Портфолио',
        'Блог',
        'Контакты',
        'Главная',
      ]) {
        await tester.tap(
          find.descendant(
            of: find.byType(NavigationBar),
            matching: find.text(label),
          ),
        );
        await tester.pumpAndSettle();
        expect(tester.takeException(), isNull);
      }
    }
  });
}
