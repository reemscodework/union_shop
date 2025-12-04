import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/search_page.dart';

void main() {
  testWidgets('Search page has a title and search field', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: SearchPage()));

    // Verify that our search page has a search field.
    expect(find.widgetWithText(TextField, 'Search'), findsOneWidget);
  });
}
