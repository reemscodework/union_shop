import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/pages/product_page.dart';

void main() {
  group('Product Page Tests', () {
    final product = {
      'name': 'Test Product',
      'price': 10.00,
      'image': 'https://picsum.photos/200',
    };

    Widget createTestWidget() {
      return MaterialApp(home: ProductPage(product: product));
    }

    testWidgets('should display product page with basic elements', (
      tester,
    ) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      // Check that basic UI elements are present
      expect(find.text('Test Product'), findsOneWidget);
      expect(find.text('£10.0'), findsOneWidget);
      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(DropdownButton), findsOneWidget);
      expect(find.widgetWithText(ElevatedButton, 'Add to Cart'), findsOneWidget);
    });

    testWidgets('should display header', (tester) async {
      await tester.pumpWidget(createTestWidget());
      await tester.pump();

      // Check that header is present
      expect(find.text('Union Shop'), findsOneWidget);
    });
  });
}
