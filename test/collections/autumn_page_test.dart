import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:union_shop/collections/autume_page.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_card.dart';

void main() {
  testWidgets('Autumn page has a title and a grid of products', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await mockNetworkImagesFor(() => tester.pumpWidget(const MaterialApp(home: AutumnPage())));

    // Verify that our autumn page has a title.
    expect(find.text('Autumn Favourites'), findsOneWidget);

    // Verify that our autumn page has a grid view.
    expect(find.byType(GridView), findsOneWidget);

    // Verify that our autumn page has the correct number of product cards.
    expect(find.byType(ProductCard), findsNWidgets(dummyProducts.length));
  });
}
