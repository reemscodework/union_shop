
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_provider.dart';
import 'package:union_shop/print_shack_page.dart';

void main() {
  testWidgets('Print Shack page has a title and a customizable product', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CartProvider(),
        child: const MaterialApp(home: PrintShackPage()),
      ),
    );

    // Verify that our print shack page has a title.
    expect(find.text('Print Shack'), findsOneWidget);

    // Verify that our print shack page has a customizable hoodie.
    expect(find.text('Customizable Hoodie'), findsOneWidget);

    // Verify that our print shack page has a text field.
    expect(find.byType(TextField), findsOneWidget);

    // Verify that our print shack page has an add to cart button.
    expect(find.text('Add to Cart'), findsOneWidget);
  });
}
