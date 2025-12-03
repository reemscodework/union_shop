import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/about_us.dart';

void main() {
  testWidgets('About Us page has a title and content', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: AboutUsPage()));

    // Verify that our about us page has a title.
    expect(find.text('Welcome to Union Shop!'), findsOneWidget);

    // Verify that our about us page has some content.
    expect(find.text('Your official destination for all things University of Portsmouth. We are more than just a store; we are a vital part of the student experience, proudly operated by your Students\' Union.'), findsOneWidget);
  });
}
