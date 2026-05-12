import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_test_app/counter/counter_screen.dart';

void main() {
  testWidgets('点击 + 按钮，计数增加', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));

    expect(find.text('0'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    expect(find.text('1'), findsOneWidget);
  });

  testWidgets('点击 - 按钮，计数减少，但不会小于 0', (tester) async {
    await tester.pumpWidget(const MaterialApp(home: CounterScreen()));

    await tester.tap(find.byIcon(Icons.remove));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
  });
}