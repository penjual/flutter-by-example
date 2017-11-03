// This is a basic Flutter widget test.
// To perform an interaction with a widget in your test, use the WidgetTester utility that Flutter
// provides. For example, you can send tap and scroll gestures. You can also use WidgetTester to
// find child widgets in the widget tree, read text, and verify that the values of widget properties
// are correct.

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('"Hello world!" is shown', (WidgetTester tester) async {

    await tester.pumpWidget(
      new Directionality(textDirection: TextDirection.ltr,
        child: new Center(
          child: new Text('Hello World!')))
    );

    // Expect "Hello World!" to be displayed
    expect(find.text('Hello World!'), findsOneWidget);
  });
}