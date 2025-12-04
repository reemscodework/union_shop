import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:union_shop/login_page.dart';

void main() {
  group('LoginPage', () {
    testWidgets('has email and password fields and a login button', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Verify that our login page has an email and password text field.
      expect(find.byType(TextFormField), findsNWidgets(2));
      expect(find.widgetWithText(TextFormField, 'Email'), findsOneWidget);
      expect(find.widgetWithText(TextFormField, 'Password'), findsOneWidget);

      // Verify that our login page has a login button.
      expect(find.widgetWithText(ElevatedButton, 'LOGIN'), findsOneWidget);
    });

    testWidgets('shows a snackbar when create account is tapped', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(const MaterialApp(home: LoginPage()));

      // Tap the create account button.
      await tester.tap(find.widgetWithText(TextButton, 'Create an account'));
      await tester.pump();

      // Verify that a snackbar is shown.
      expect(find.byType(SnackBar), findsOneWidget);
    });
  });
}
