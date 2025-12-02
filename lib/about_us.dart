import 'package:flutter/material.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Header(),
      ),
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
      body: const CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Union Shop!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Your official destination for all things University of Portsmouth. We are more than just a store; we are a vital part of the student experience, proudly operated by your Students\' Union.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Our Mission',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Our mission is to provide students, staff, alumni, and the wider Portsmouth community with high-quality, ethically sourced, and affordable merchandise that fosters a sense of pride and belonging to our vibrant university. Every purchase you make directly contributes to the funding of essential student services, societies, and activities run by the Students\' Union.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Our Products',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'From classic hoodies and t-shirts to bespoke graduation gifts and sustainable everyday items, our diverse range of products is designed to cater to all tastes and needs. We work closely with suppliers to ensure our products are not only stylish but also reflect our commitment to sustainability and ethical practices.',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'Thank you for supporting your Students\' Union!',
                        style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Footer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
