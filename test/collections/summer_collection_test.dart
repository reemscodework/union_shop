import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';

void main() {
  testWidgets('Summer collection page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage(collectionName: 'Summer Favourites')));

    // Verify that our summer collection page has a title.
    expect(find.text('Summer Favourites'), findsOneWidget);
  });
}
