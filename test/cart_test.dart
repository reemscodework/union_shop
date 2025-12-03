import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_page.dart';
import 'package:union_shop/cart_provider.dart';
import 'package:network_image_mock/network_image_mock.dart';

void main() {
  testWidgets('CartPage has a title and message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await mockNetworkImagesFor(() => tester.pumpWidget(ChangeNotifierProvider(
          create: (context) => CartProvider(),
          child: const MaterialApp(
            home: CartPage(),
          ),
        )));

    // Verify that our cart page has a title.
    expect(find.text('Cart'), findsOneWidget);

    // Verify that our cart page has a message.
    expect(find.text('Your cart is empty.'), findsOneWidget);
  });
}
