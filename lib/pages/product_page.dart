import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class ProductPage extends StatelessWidget {
  final Map product;

  const ProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Image.network(product['image'], height: 200),
            const SizedBox(height: 20),
            Text(product['name'],
                style: const TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold)),
            Text("£${product['price']}"),

            const SizedBox(height: 20),
            DropdownButton(
              value: 'Small',
              items: const [
                DropdownMenuItem(value: 'Small', child: Text('Small')),
                DropdownMenuItem(value: 'Medium', child: Text('Medium')),
                DropdownMenuItem(value: 'Large', child: Text('Large')),
              ],
              onChanged: (_) {},
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Add to Cart"),
            ),
          ],
        ),
      ),
    );
  }
}
