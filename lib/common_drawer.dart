
import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          ExpansionTile(
              title: const Text('Print shack'),
              children: [
                ListTile(
                  title: const Text('about'),
                  onTap: () {},
                ),
                ListTile(
                  title: const Text('Personalize'),
                  onTap: () {},
                ),
              ],
            ),
          ExpansionTile(
            title: const Text('Shop'),
            children: [
              ListTile(
                title: const Text('Autumn Favourites'),
                onTap: () {
                  Navigator.pushNamed(context, '/autume');
                },
              ),
              ListTile(
                title: const Text('UoP Essentials'),
                onTap: () {
                  Navigator.pushNamed(context, '/collections');
                },
              ),
              ListTile(
                title: const Text('Gifts & Souvenirs'),
                onTap: () {
                  Navigator.pushNamed(context, '/collections');
                },
              ),
              ListTile(
                title: const Text('Graduation'),
                onTap: () {
                  Navigator.pushNamed(context, '/graduation');
                },
              ),
              ListTile(
                title: const Text('Summer Favourites'),
                onTap: () {
                  Navigator.pushNamed(context, '/collections');
                },
              ),
              ListTile(
                title: const Text('Winter Favourites'),
                onTap: () {
                  Navigator.pushNamed(context, '/collections');
                },
              ),
              ListTile(
                title: const Text('Merchandise'),
                onTap: () {
                  Navigator.pushNamed(context, '/merchandise');
                },
              ),
              ListTile(
                title: const Text('Clothing'),
                onTap: () {
                  Navigator.pushNamed(context, '/clothing');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
