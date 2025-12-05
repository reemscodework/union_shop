import 'package:flutter/material.dart';
import 'package:union_shop/common_drawer.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';

class AllCollectionsPage extends StatelessWidget {
  const AllCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CommonDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            const Text('Collections', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
              children: [
                _buildCollectionCard(
                  context,
                  'Autumn Favourites',
                  'assets/images/autumn.png',
                  '/autume',
                ),
                _buildCollectionCard(
                  context,
                  'Graduation',
                  'assets/images/graduation.png',
                  '/graduation_collection',
                ),
                _buildCollectionCard(
                  context,
                  'Sale',
                  'assets/images/sale.png',
                  '/sale',
                ),
                _buildCollectionCard(
                  context,
                  'Personalize',
                  'assets/images/personalize.png',
                  '/personalize_product',
                ),
                _buildCollectionCard(
                  context,
                  'Summer Favourites',
                  'assets/images/summer.png',
                  '/summer_collection',
                ),
                _buildCollectionCard(
                  context,
                  'Winter Favourites',
                  'assets/images/winter.png',
                  '/winter_collection',
                ),
                _buildCollectionCard(
                  context,
                  'Merchandise',
                  'assets/images/merchandise.png',
                  '/merchandise_collection',
                ),
                 _buildCollectionCard(
                  context,
                  'Clothing',
                  'assets/images/clothing.png',
                  '/clothing_collection',
                ),
              ],
            ),
            const Footer(),
          ],
        ),
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
                errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
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
