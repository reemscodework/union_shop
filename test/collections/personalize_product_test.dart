import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/personalize_product.dart';

void main() {
  testWidgets('Personalize product page has a title', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: PersonalizeProductPage()));

    // Verify that our personalize product page has a title.
    expect(find.text('Personalise Your Product'), findsOneWidget);
  });
}
