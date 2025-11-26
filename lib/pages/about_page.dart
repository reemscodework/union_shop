import 'package:flutter/material.dart';
import '../widgets/navbar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NavBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              "About Us",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Image.network('https://picsum.photos/500/200'),
            const SizedBox(height: 20),
            const Text(
                "The Union Shop provides quality merchandise for students. "
                "This is a dummy About Us page created for coursework.",
                style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
