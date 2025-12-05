import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_provider.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_page.dart';

void main() {
  testWidgets('Product page has a title and a working add to cart button', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: const MaterialApp(home: ProductPage(productId: 1)),
      ),
    );

    // Verify that our product page has the correct title.
    expect(find.text(dummyProducts.first.title), findsOneWidget);

    // Scroll the 'ADD TO CART' button into view.
    await tester.ensureVisible(find.text('ADD TO CART'));
    await tester.pumpAndSettle();

    // Tap the add to cart button and verify that the cart item count increases.
    await tester.tap(find.text('ADD TO CART'));
    await tester.pump();

    // Verify that the cart item count is 1.
    final cartProvider = Provider.of<CartProvider>(tester.element(find.byType(ProductPage)), listen: false);
    expect(cartProvider.itemCount, 1);
  });
}
