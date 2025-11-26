import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/about_page.dart';
import 'pages/collections_page.dart';
import 'pages/collection_page.dart';
import 'pages/product_page.dart';
import 'pages/sale_page.dart';
import 'pages/auth/login_page.dart';
import 'pages/auth/signup_page.dart';

void main() {
  runApp(const UnionShopApp());
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/about': (_) => const AboutPage(),
        '/collections': (_) => const CollectionsPage(),
        '/sale': (_) => const SalePage(),
        '/login': (_) => const LoginPage(),
        '/signup': (_) => const SignupPage(),
      },
      // Dynamic routes (product or collection pages)
      onGenerateRoute: (settings) {
        if (settings.name == '/collection') {
          final name = settings.arguments as String;
          return MaterialPageRoute(
            builder: (_) => CollectionPage(collectionName: name),
          );
        }
        if (settings.name == '/product') {
          final product = settings.arguments as Map;
          return MaterialPageRoute(
            builder: (_) => ProductPage(product: product),
          );
        }
        return null;
      },
    );
  }
}