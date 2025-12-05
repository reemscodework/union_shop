import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';
import 'package:union_shop/collections/all_collections.dart';

void main() {
  testWidgets('All collections page has a grid of collection cards', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await mockNetworkImagesFor(() => tester.pumpWidget(const MaterialApp(home: AllCollectionsPage())));

    // Verify that our all collections page has a grid view.
    expect(find.byType(GridView), findsOneWidget);

    // Verify that our all collections page has the correct number of collection cards.
    expect(find.byType(Card), findsNWidgets(8));
  });
}
