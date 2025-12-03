import 'package:flutter/material.dart';

class PersonalizeProductPage extends StatelessWidget {
  const PersonalizeProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personalize Product'),
      ),
      body: const Center(
        child: Text('This is the Personalize Product page.'),
      ),
    );
  }
}
