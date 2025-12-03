import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/autume_page.dart';
import 'package:union_shop/dummy_products.dart';

void main() {
  testWidgets('Autumn page has a title and a grid of products', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AutumnPage()));

    // Verify that our autumn page has a title.
    expect(find.text('Autumn Favourites'), findsOneWidget);

    // Verify that our autumn page has a grid view.
    expect(find.byType(GridView), findsOneWidget);

    // Verify that our autumn page has the correct number of product cards.
    expect(find.byType(ProductCard), findsNWidgets(dummyProducts.length));
  });
}
