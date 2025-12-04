import 'package:flutter/material.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/product.dart';
import 'package:union_shop/footer.dart';
import 'package:union_shop/header.dart';

class CollectionPage extends StatefulWidget {
  final String? collectionName;

  const CollectionPage({super.key, this.collectionName});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  String _selectedCategory = 'All';
  late List<Product> _products;
  late List<String> _categories;

  @override
  void initState() {
    super.initState();
    _updateProductsAndCategories();
  }

  void _updateProductsAndCategories() {
    if (widget.collectionName != null) {
      _products = dummyProducts
          .where((p) => p.collection == widget.collectionName)
          .toList();
    } else {
      _products = List<Product>.from(dummyProducts);
    }

    final categorySet = <String>{'All'};
    for (final product in _products) {
      categorySet.add(product.category);
    }
    _categories = categorySet.toList();

    if (!_categories.contains(_selectedCategory)) {
      _selectedCategory = 'All';
    }
  }

  List<Product> _getFilteredProducts() {
    if (_selectedCategory == 'All') {
      return _products;
    }
    return _products
        .where((p) => p.category == _selectedCategory)
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final filteredProducts = _getFilteredProducts();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.collectionName ?? 'All Products',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Wrap(
                spacing: 8.0,
                children: _categories
                    .map((category) => ChoiceChip(
                          label: Text(category),
                          selected: _selectedCategory == category,
                          onSelected: (selected) {
                            setState(() {
                              _selectedCategory = category;
                            });
                          },
                        ))
                    .toList(),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount:
                    MediaQuery.of(context).size.width > 600 ? 4 : 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              padding: const EdgeInsets.all(16.0),
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                final product = filteredProducts[index];
                return ProductCard(
                  title: product.title,
                  price: "£${product.price.toStringAsFixed(2)}",
                  imageUrl: product.imageUrl,
                  productNumber: product.id,
                );
              },
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
