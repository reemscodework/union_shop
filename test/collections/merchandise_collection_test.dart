import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';

void main() {
  testWidgets('Merchandise collection page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage(collectionName: 'Merchandise')));

    // Verify that our merchandise collection page has a title in the app bar.
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Merchandise')), findsOneWidget);
  });
}
