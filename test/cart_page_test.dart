
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_page.dart';
import 'package:union_shop/cart_provider.dart';

void main() {
  testWidgets('Cart page shows empty message when cart is empty', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: const MaterialApp(home: CartPage()),
      ),
    );

    // Verify that our cart page shows an empty message.
    expect(find.text('Your cart is empty.'), findsOneWidget);
  });

  testWidgets('Cart page shows cart items and total', (WidgetTester tester) async {
    // Create a cart provider with some items.
    final cartProvider = CartProvider();
    cartProvider.addItem('1', 10.0, 'Test Product', 'https://example.com/image.jpg');

    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider.value(
        value: cartProvider,
        child: const MaterialApp(home: CartPage()),
      ),
    );

    // Verify that our cart page shows the cart item.
    expect(find.text('Test Product'), findsOneWidget);
    expect(find.text('£10.00'), findsOneWidget);

    // Verify that our cart page shows the total.
    expect(find.text('Total:'), findsOneWidget);
    expect(find.text('£10.00'), findsOneWidget);

    // Verify that our cart page has a checkout button.
    expect(find.widgetWithText(ElevatedButton, 'CHECKOUT'), findsOneWidget);
  });
}
