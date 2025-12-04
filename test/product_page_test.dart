import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/product_page.dart';

void main() {
  testWidgets('Product page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: ProductPage(productId: 1)));

    // Verify that our product page has a title.
    expect(find.text('Product Details'), findsOneWidget);
  });
}
