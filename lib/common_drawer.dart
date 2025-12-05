
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
                  title: const Text('About'),
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                ListTile(
                  title: const Text('Personalize'),
                  onTap: () {
                    Navigator.pushNamed(context, '/print-shack');
                  },
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
                title: const Text('Graduation'),
                onTap: () {
                  Navigator.pushNamed(context, '/graduation_collection');
                },
              ),
              ListTile(
                title: const Text('Summer Favourites'),
                onTap: () {
                  Navigator.pushNamed(context, '/summer_collection');
                },
              ),
              ListTile(
                title: const Text('Winter Favourites'),
                onTap: () {
                  Navigator.pushNamed(context, '/winter_collection');
                },
              ),
              ListTile(
                title: const Text('Merchandise'),
                onTap: () {
                  Navigator.pushNamed(context, '/merchandise_collection');
                },
              ),
              ListTile(
                title: const Text('Clothing'),
                onTap: () {
                  Navigator.pushNamed(context, '/clothing_collection');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
