import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  final collections = const [
    {'name': 'Hoodies', 'image': 'https://picsum.photos/210'},
    {'name': 'T-Shirts', 'image': 'https://picsum.photos/211'},
    {'name': 'Accessories', 'image': 'https://picsum.photos/212'},
    {'name': 'Print Shack', 'image': 'https://picsum.photos/213'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: GridView.count(
        padding: const EdgeInsets.all(16),
        crossAxisCount: 2,
        children: collections.map((col) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/collection',
              arguments: col['name'],
            ),
            child: Card(
              child: Column(
                children: [
                  Image.network(col['image']!, height: 120, fit: BoxFit.cover),
                  const SizedBox(height: 10),
                  Text(col['name']!,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
