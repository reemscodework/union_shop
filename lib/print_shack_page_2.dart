
import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';

class PrintShackPage2 extends StatelessWidget {
  const PrintShackPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Header(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Text('This is Page 2'),
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
