import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/product_card.dart';

class CollectionPage extends StatelessWidget {
  final String collectionName;

  const CollectionPage({super.key, required this.collectionName});

  final products = const [
    {'name': 'Item A', 'price': 25.0, 'image': 'https://picsum.photos/221'},
    {'name': 'Item B', 'price': 30.0, 'image': 'https://picsum.photos/222'},
    {'name': 'Item C', 'price': 15.0, 'image': 'https://picsum.photos/223'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Text(
            collectionName,
            style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          // Filter dropdown (dummy)
          DropdownButton(
            value: 'Price: Low to High',
            items: const [
              DropdownMenuItem(
                  value: 'Price: Low to High', child: Text("Price: Low to High")),
              DropdownMenuItem(
                  value: 'Price: High to Low', child: Text("Price: High to Low")),
            ],
            onChanged: (_) {},
          ),

          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: products.map((p) => ProductCard(product: p)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
