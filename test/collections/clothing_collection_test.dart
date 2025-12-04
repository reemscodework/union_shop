import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';

void main() {
  testWidgets('Clothing collection page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage(collectionName: 'Clothing')));

    // Verify that our clothing collection page has a title.
    expect(find.text('Clothing'), findsOneWidget);
  });
}
