import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

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
            // Header (must match Home header)
            Container(
              height: 100,
              color: Colors.white,
              child: Column(
                children: [
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
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => navigateToHome(context),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(Icons.home, size: 18),
                          ),
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: placeholderCallbackForButtons,
                          icon: const Icon(Icons.search, color: Colors.grey),
                        ),
                        IconButton(
                          onPressed: placeholderCallbackForButtons,
                          icon: const Icon(Icons.shopping_bag_outlined,
                              color: Colors.grey),
                        ),
                        IconButton(
                          onPressed: placeholderCallbackForButtons,
                          icon: const Icon(Icons.menu, color: Colors.grey),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            // Product Content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(height: 20),
                  Text('Placeholder Product Name',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text('£15.00',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color(0xFF4d2963),
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('Description',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  SizedBox(height: 8),
                  Text(
                    'This is a placeholder description for the product.',
                    style: TextStyle(color: Colors.grey, height: 1.4),
                  ),
                  SizedBox(height: 20),

                  // REQUIRED BY TEST
                  Text(
                    'Students should add size options, colour options, quantity selector, add to cart button, and buy now button here.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
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
