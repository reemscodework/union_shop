import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/cart_page.dart';

void main() {
  testWidgets('CartPage has a title and message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: CartPage(),
    ));

    // Verify that our cart page has a title.
    expect(find.text('Cart'), findsOneWidget);

    // Verify that our cart page has a message.
    expect(find.text('This is the cart page.'), findsOneWidget);
  });
}
