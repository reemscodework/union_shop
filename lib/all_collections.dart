import 'package:flutter/material.dart';

class AllCollectionsPage extends StatelessWidget {
  const AllCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Collections'),
      ),
      body: GridView.count(
        crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
        children: [
          _buildCollectionCard(
            context,
            'Autumn Favourites',
            'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
            '/collections',
          ),
          _buildCollectionCard(
            context,
            'UoP Essentials',
            'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
            '/collections',
          ),
          _buildCollectionCard(
            context,
            'Gifts & Souvenirs',
            'https://shop.upsu.net/cdn/shop/files/UOPMug-Front_1024x1024@2x.jpg?v=1752229871',
            '/collections',
          ),
          _buildCollectionCard(
            context,
            'Graduation',
            'https://www.uop.com/content/dam/uop/en/news-articles/meet-our-2023-uop-honeywell-scholarship-winners/2023-uop-scholars-social-card.jpg',
            '/collections',
          ),
        ],
      ),
    );
  }

  Widget _buildCollectionCard(
    BuildContext context,
    String title,
    String imageUrl,
    String route,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}
