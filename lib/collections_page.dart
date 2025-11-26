import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  const CollectionsPage({super.key});

  final collections = const [
    {'name': 'Hoodies', 'imageUrl': 'https://picsum.photos/250'},
    {'name': 'T-Shirts', 'imageUrl': 'https://picsum.photos/251'},
    {'name': 'Accessories', 'imageUrl': 'https://picsum.photos/252'},
    {'name': 'Print Shack', 'imageUrl': 'https://picsum.photos/253'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Collections")),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        children: collections.map((col) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/collection-page',
              arguments: col['name'],
            ),
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      col['imageUrl']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(col['name']!,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
