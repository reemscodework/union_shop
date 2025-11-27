
import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';

class SalePage extends StatelessWidget {
  const SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sale'),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('This is the sale page.'),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
