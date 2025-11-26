
import 'package:flutter/material.dart';
import 'package:union_shop/product_page.dart';
import 'package:union_shop/about_us.dart';
import 'package:union_shop/login_page.dart';
import 'package:union_shop/sales_page.dart';
import 'package:union_shop/collections_page.dart';
import 'package:union_shop/collection_page.dart';

void main() {
  runApp(const UnionShopApp());
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
      initialRoute: '/',
      routes: {
        '/': (_) => const HomeScreen(),
        '/product': (_) => const ProductPage(),
        '/about': (_) => const AboutUsPage(),
        '/login': (_) => const LoginPage(),
        '/sales': (_) => const SalesPage(),
        '/collections': (_) => const CollectionsPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/collection-page') {
          final name = settings.arguments as String;
          return MaterialPageRoute(
            builder: (_) => CollectionPage(collectionName: name),
          );
        }
        return null;
      },
    );
  }
}


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void navigateToHome(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
  }

  void placeholderCallbackForButtons() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            Container(
              height: 100,
              color: Colors.white,
              child: Column(
                children: [
                  // Top banner (MUST match the test)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    color: const Color(0xFF4d2963),
                    child: const Text(
                      'PLACEHOLDER HEADER TEXT - STUDENTS TO UPDATE!',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () => navigateToHome(context),
                            child: Image.network(
                              'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
                              height: 18,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.search, color: Colors.grey),
                            onPressed: placeholderCallbackForButtons,
                          ),
                          IconButton(
                            icon: const Icon(Icons.shopping_bag_outlined,
                                color: Colors.grey),
                            onPressed: placeholderCallbackForButtons,
                          ),
                          IconButton(
                            icon: const Icon(Icons.menu, color: Colors.grey),
                            onPressed: placeholderCallbackForButtons,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // HERO SECTION (text MUST match tests)
            SizedBox(
              height: 350,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.network(
                      'https://picsum.photos/1200/800',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned.fill(
                    child:
                        Container(color: Colors.black.withOpacity(0.65)),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Placeholder Hero Title',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 12),
                        Text(
                          'PLACEHOLDER HERO TEXT',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // PRODUCTS SECTION (text MUST match test)
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    'PLACEHOLDER PRODUCTS SECTION',
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  GridView.count(
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      ProductCard(
                        title: 'Placeholder Product 1',
                        price: '£10.00',
                        imageUrl:
                            'https://picsum.photos/201',
                      ),
                      ProductCard(
                        title: 'Placeholder Product 2',
                        price: '£15.00',
                        imageUrl:
                            'https://picsum.photos/202',
                      ),
                      ProductCard(
                        title: 'Placeholder Product 3',
                        price: '£20.00',
                        imageUrl:
                            'https://picsum.photos/203',
                      ),
                      ProductCard(
                        title: 'Placeholder Product 4',
                        price: '£25.00',
                        imageUrl:
                            'https://picsum.photos/204',
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/collections');
                    },
                    child: const Text('VIEW ALL PRODUCTS'),
                  ),
                ],
              ),
            ),

            // Footer (MUST match test)
            Container(
              width: double.infinity,
              color: Colors.grey[50],
              padding: const EdgeInsets.all(24),
              child: const Column(
                children: [
                  Text(
                    'Placeholder Footer',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Students should customise this footer section',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  color: Colors.grey[300],
                  child: const Center(
                    child: Icon(Icons.image_not_supported, color: Colors.grey),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 4),
              Text(
                title,
                style: const TextStyle(fontSize: 14, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(height: 4),
              Text(
                price,
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
