
import 'package:flutter/material.dart';

class PrintShackPage1 extends StatelessWidget {
  const PrintShackPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
      ),
      body: const Center(
        child: Text('This is Page 1'),
      ),
    );
  }
}
