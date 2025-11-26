import 'package:flutter/material.dart';

class CollectionPage extends StatelessWidget {
  final String collectionName;

  const CollectionPage({super.key, required this.collectionName});

  final products = const [
    {'title': 'Item 1', 'price': '£12.00', 'imageUrl': 'https://picsum.photos/260'},
    {'title': 'Item 2', 'price': '£18.00', 'imageUrl': 'https://picsum.photos/261'},
    {'title': 'Item 3', 'price': '£25.00', 'imageUrl': 'https://picsum.photos/262'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(collectionName)),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16),
        childAspectRatio: 0.7,
        children: products.map((p) {
          return GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/product'),
            child: Card(
              child: Column(
                children: [
                  Expanded(
                    child: Image.network(
                      p['imageUrl']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(p['title']!,
                      style:
                          const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(p['price']!),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
