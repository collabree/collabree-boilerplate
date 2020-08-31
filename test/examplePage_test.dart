import 'package:collabree/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    final Widget widget = CollabreeApp();
    await tester.pumpWidget(widget);
    await tester.pumpAndSettle();

    expect(find.text('You have pushed the button this many times: 10'), findsOneWidget);

    await tester.tap(find.byIcon(FlutterIcons.add_mdi));
    await tester.pump();

    expect(find.text('You have pushed the button this many times: 11'), findsOneWidget);
  });
}
