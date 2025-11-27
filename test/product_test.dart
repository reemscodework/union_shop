import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/cart_provider.dart';
import 'package:union_shop/product_page.dart';

void main() {
  group('Product Page Tests', () {
    Widget createTestWidget({required int productId}) {
      return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: MaterialApp(
          home: ProductPage(productId: productId),
        ),
      );
    }

    testWidgets('should display product page with correct product details', (
      tester,
    ) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(createTestWidget(productId: 1)));
      await tester.pump();

      // Check that product details are present
      expect(find.text('UoP Hoodie'), findsOneWidget);
      expect(find.text('£35.00'), findsOneWidget);
      expect(find.text('Description'), findsOneWidget);
      expect(find.text('Classic University of Portsmouth hoodie. Perfect for staying warm on campus.'), findsOneWidget);
      expect(find.widgetWithText(ElevatedButton, 'ADD TO CART'), findsOneWidget);
    });

    testWidgets('should display footer', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(createTestWidget(productId: 1)));
      await tester.pump();

      // Check that footer is present
      expect(find.text('Union Shop'), findsOneWidget);
      expect(
        find.text(
            'Your official student-run store for apparel, accessories, and more.'),
        findsOneWidget,
      );
    });
  });
}
