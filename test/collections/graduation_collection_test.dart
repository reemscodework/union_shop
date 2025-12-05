import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';

void main() {
  testWidgets('Graduation collection page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage(collectionName: 'Graduation')));

    // Verify that our graduation collection page has a title in the app bar.
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Graduation')), findsOneWidget);
  });
}
