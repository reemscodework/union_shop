import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';
import 'package:union_shop/dummy_products.dart';

void main() {
  group('CollectionPage', () {
    testWidgets('Collection page has a title and a grid of products',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: CollectionPage()));

      // Verify that our collection page has a title in the app bar.
      expect(find.descendant(of: find.byType(AppBar), matching: find.text('All Products')), findsOneWidget);

      // Verify that our collection page has a grid of products.
      expect(find.byType(GridView), findsOneWidget);

      // Verify that the grid has the correct number of items.
      expect(find.byType(Card), findsNWidgets(dummyProducts.length > 6 ? 6 : dummyProducts.length));
    });

    testWidgets('Collection page can be filtered by category',
        (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(
          home: CollectionPage(collectionName: 'Clothing')));

      // Tap the 'Hoodie' choice chip.
      await tester.tap(find.widgetWithText(ChoiceChip, 'Hoodie'));
      await tester.pumpAndSettle();

      // Verify that the grid view is updated.
      final hoodieProducts = dummyProducts
          .where((p) => p.collection == 'Clothing' && p.category == 'Hoodie');
      expect(find.byType(Card), findsNWidgets(hoodieProducts.length));
    });
  });
}
