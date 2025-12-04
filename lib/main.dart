
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:union_shop/about_us.dart';
import 'package:union_shop/all_collections.dart';
import 'package:union_shop/collections/autume_page.dart';
import 'package:union_shop/cart_page.dart';
import 'package:union_shop/cart_provider.dart';
import 'package:union_shop/common_drawer.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';
import 'package:union_shop/login_page.dart';
import 'package:union_shop/personalize_product.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/sale_page.dart';
import 'package:union_shop/search_page.dart';
import 'package:union_shop/collections/collection_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: const UnionShopApp(),
    ),
  );
}

class UnionShopApp extends StatelessWidget {
  const UnionShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Union Shop',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF4d2963)),
      ),
      home: const HomeScreen(),
      initialRoute: '/',
      routes: {
        '/about': (context) => const AboutUsPage(),
        '/cart': (context) => const CartPage(),
        '/login': (context) => const LoginPage(),
        '/search': (context) => const SearchPage(),
        '/sale': (context) => const SalePage(),
        '/autume': (context) => const AutumnPage(),
        '/collections': (context) => const CollectionPage(),
        '/all_collections': (context) => const AllCollectionsPage(),
        '/personalize_product': (context) => const PersonalizeProductPage(),
        '/winter_collection': (context) => const CollectionPage(collectionName: 'Winter Favourites'),
        '/summer_collection': (context) => const CollectionPage(collectionName: 'Summer Favourites'),
        '/merchandise_collection': (context) => const CollectionPage(collectionName: 'Merchandise'),
        '/clothing_collection': (context) => const CollectionPage(collectionName: 'Clothing'),
        '/graduation_collection': (context) => const CollectionPage(collectionName: 'Graduation'),
      },
      onGenerateRoute: (settings) {
        if (settings.name != null && settings.name!.startsWith('/product/')) {
          final idString = settings.name!.split('/').last;
          final id = int.tryParse(idString);
          if (id != null) {
            return MaterialPageRoute(
              builder: (context) {
                return ProductPage(productId: id);
              },
            );
          }
        }
        return null;
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),

            // Hero Section
            SizedBox(
              height: 400,
              width: double.infinity,
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
                          ),
                          fit: BoxFit.cover,
                        ),
                        color: const Color.fromRGBO(0, 0, 0, 0.7),
                      ),
                    ),
                  ),
                  // Content overlay
                  Positioned(
                    left: 24,
                    right: 24,
                    top: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'collections and products',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          "check out the product(not good at marketing)",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            height: 1.5,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 32),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF4d2963),
                            foregroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.zero,
                            ),
                          ),
                          child: const Text(
                            'BROWSE PRODUCTS',
                            style: TextStyle(fontSize: 14, letterSpacing: 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Products Section
            ColoredBox(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: [
                    const Text(
                      'PRODUCTS SECTION',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1,
                      ),
                    ),
                    const SizedBox(height: 48),
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 2 : 1,
                      crossAxisSpacing: 24,
                      mainAxisSpacing: 48,
                      children: const [
                        ProductCard(
                          title: 'Uop Hoodie',
                          price: '£35.00',
                          imageUrl:
                              'assets/images/hoodie_black.png',
                          productNumber: 1,
                        ),
                        ProductCard(
                          title: 'Uop T-Shirt',
                          price: '£15.00',
                          imageUrl:
                              'assets/images/tshirt.png',
                          productNumber: 2,
                        ),
                        ProductCard(
                          title: 'Uop Water Bottle',
                          price: '£12.00',
                          imageUrl:
                              'assets/images/waterbottle.png',
                          productNumber: 3,
                        ),
                        ProductCard(
                          title: 'Uop Beanie',
                          price: '£10.00',
                          imageUrl:
                              'assets/images/beanie.png',
                          productNumber: 4,
                        ),
                         ProductCard(
                          title: 'Uop Mug',
                          price: '£8.00',
                          imageUrl:
                              'assets/images/mug.png',
                          productNumber: 5,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            // Footer
            const Footer(),
          ],
        ),
      ),
    );
  }
}
