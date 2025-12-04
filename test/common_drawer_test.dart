import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/common_drawer.dart';

void main() {
  testWidgets('Common drawer has a menu', (WidgetTester tester) async {
    final scaffoldKey = GlobalKey<ScaffoldState>();
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: Scaffold(key: scaffoldKey, drawer: const CommonDrawer())));

    scaffoldKey.currentState!.openDrawer();
    await tester.pump();

    // Verify that our common drawer has a menu.
    expect(find.text('Menu'), findsOneWidget);
  });
}
