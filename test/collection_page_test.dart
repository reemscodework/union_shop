
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/collections/collection_page.dart';
import 'package:union_shop/dummy_products.dart';

void main() {
  testWidgets('Collection page shows all products by default', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage()));

    // Verify that our collection page has the default title.
    expect(find.text('All Collections'), findsOneWidget);

    // Verify that our collection page has a grid view.
    expect(find.byType(GridView), findsOneWidget);

    // Verify that our collection page has the correct number of product cards.
    // The number of cards should be the minimum of the number of dummy products and the page size (6).
    expect(find.byType(Card), findsNWidgets(dummyProducts.length > 6 ? 6 : dummyProducts.length));
  });

  testWidgets('Collection page can be filtered by category', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: CollectionPage()));

    // Tap the 'Hoodie' choice chip.
    await tester.tap(find.widgetWithText(ChoiceChip, 'Hoodie'));
    await tester.pumpAndSettle();

    // Verify that the grid view is updated.
    // The number of cards should be the number of hoodies in the dummy products.
    final hoodieCount = dummyProducts.where((p) => p.category == 'Hoodie').length;
    expect(find.byType(Card), findsNWidgets(hoodieCount > 6 ? 6 : hoodieCount));
  });
}
