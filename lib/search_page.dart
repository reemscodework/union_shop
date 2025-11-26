
import 'package:flutter/material.dart';
import 'package:union_shop/main.dart'; // Assuming ProductCard is in main.dart for now

// A simple data class for our products
class Product {
  final String title;
  final String price;
  final String imageUrl;

  const Product({required this.title, required this.price, required this.imageUrl});
}

// Hardcoded list of products for demonstration
final List<Product> _allProducts = [
  const Product(
    title: 'Placeholder Product 1',
    price: '£10.00',
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
  ),
  const Product(
    title: 'Placeholder Product 2',
    price: '£15.00',
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
  ),
  const Product(
    title: 'Placeholder Product 3',
    price: '£20.00',
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
  ),
  const Product(
    title: 'Placeholder Product 4',
    price: '£25.00',
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityMagnet1_1024x1024@2x.jpg?v=1752230282',
  ),
  const Product(
    title: 'Portsmouth City Postcard',
    price: '£1.00',
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/PortsmouthCityPostcard2_1024x1024@2x.jpg?v=1752232561',
  ),
];

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<Product> _filteredProducts = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredProducts = _allProducts;
    _searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      if (query.isEmpty) {
        _filteredProducts = _allProducts;
      } else {
        _filteredProducts = _allProducts
            .where((product) => product.title.toLowerCase().contains(query))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Products'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: const InputDecoration(
                labelText: 'Search',
                hintText: 'Enter product name...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Expanded(
            child: _filteredProducts.isNotEmpty
                ? GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          MediaQuery.of(context).size.width > 600 ? 4 : 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.7,
                    ),
                    padding: const EdgeInsets.all(16.0),
                    itemCount: _filteredProducts.length,
                    itemBuilder: (context, index) {
                      final product = _filteredProducts[index];
                      return ProductCard(
                        title: product.title,
                        price: product.price,
                        imageUrl: product.imageUrl,
                      );
                    },
                  )
                : const Center(
                    child: Text('No products found.'),
                  ),
          ),
        ],
      ),
    );
  }
}
