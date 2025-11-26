import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Map product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(
        context,
        '/product',
        arguments: product,
      ),
      child: Card(
        child: Column(
          children: [
            Image.network(product['image'], height: 120),
            Text(product['name']),
            Text("£${product['price']}",
                style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
