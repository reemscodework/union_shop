import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Column(
        children: [
          Expanded(
            child: Center(
              child: Text('edit here'),
            ),
          ),
          Footer(),
        ],
      ),
    );
  }
}
