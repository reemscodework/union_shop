import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';

class AllCollectionsPage extends StatelessWidget {
  const AllCollectionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF4d2963),
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
              },
            ),
            ListTile(
              title: const Text('Sale'),
              onTap: () {
                Navigator.pushNamed(context, '/sale');
              },
            ),
            ListTile(
              title: const Text('About Us'),
              onTap: () {
                Navigator.pushNamed(context, '/about');
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
              children: [
                _buildCollectionCard(
                  context,
                  'Autumn Favourites',
                  'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
                  '/autume',
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
