import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  final saleProducts = const [
    {
      'name': 'Sale Hoodie',
      'price': 19.99,
      'oldPrice': 29.99,
      'image': 'https://picsum.photos/240'
    },
    {
      'name': 'Sale Bottle',
      'price': 5.99,
      'oldPrice': 9.99,
      'image': 'https://picsum.photos/241'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: ListView(
        children: saleProducts.map((p) {
          return Card(
            child: ListTile(
              leading: Image.network(p['image']! as String),
              title: Text(p['name']! as String),
              subtitle: Text(
                "£${p['price']}   (was £${p['oldPrice']})",
                style: const TextStyle(color: Colors.red),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
