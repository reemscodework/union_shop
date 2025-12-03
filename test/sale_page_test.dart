
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/sale_page.dart';

void main() {
  testWidgets('Sale page has a title and a grid of sale products', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: SalePage()));

    // Verify that our sale page has a title.
    expect(find.text('Sale Items'), findsOneWidget);

    // Verify that our sale page has a grid view.
    expect(find.byType(GridView), findsOneWidget);

    // Verify that our sale page has the correct number of product cards.
    expect(find.byType(ProductCard), findsNWidgets(dummySaleProducts.length));
  });
}
