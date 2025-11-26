import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final dummyProducts = const [
    {
      'name': 'Hoodie',
      'price': 29.99,
      'image': 'https://picsum.photos/200'
    },
    {
      'name': 'T-Shirt',
      'price': 14.99,
      'image': 'https://picsum.photos/201'
    },
    {
      'name': 'Bottle',
      'price': 9.99,
      'image': 'https://picsum.photos/202'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network('https://picsum.photos/600/250'),
            const SizedBox(height: 20),
            const Text("Featured Products",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: dummyProducts
                  .map((p) => ProductCard(product: p))
                  .toList(),
            ),

            const SizedBox(height: 30),
            const Text("© 2025 Union Shop"),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
