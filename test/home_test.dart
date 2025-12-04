import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:union_shop/main.dart';

void main() {
  group('Home Page Tests', () {
    testWidgets('should display home page with basic elements', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(const UnionShopApp()));
      await tester.pump();

      // Check that basic UI elements are present
      expect(
        find.text('collections and products'),
        findsOneWidget,
      );
      expect(find.text('check out the product(not good at marketing)'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });

    testWidgets('should display product cards', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(const UnionShopApp()));
      await tester.pump();

      // Check that product cards are displayed
      expect(find.text('Uop Hoodie'), findsOneWidget);
      expect(find.text('Uop T-Shirt'), findsOneWidget);
    });

    testWidgets('should display header icons', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(const UnionShopApp()));
      await tester.pump();

      // Check that header icons are present
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.shopping_bag_outlined), findsOneWidget);
      expect(find.byIcon(Icons.menu), findsOneWidget);
    });

    testWidgets('should display footer', (tester) async {
      await mockNetworkImagesFor(() => tester.pumpWidget(const UnionShopApp()));
      await tester.pump();

      // Check that footer is present
      expect(find.text('Union Shop'), findsOneWidget);
      expect(
        find.text('Your official student-run store for apparel, accessories, and more.'),
        findsOneWidget,
      );
    });
  });
}
