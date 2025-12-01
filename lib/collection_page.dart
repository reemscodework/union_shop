import 'package:flutter/material.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/footer.dart';

class CollectionPage extends StatelessWidget {
  final String? collectionName;

  const CollectionPage({super.key, this.collectionName});

  // TEMPORARY: You can later replace this with category filtering
  List getProductsForCollection() {
    if (collectionName == "Autumn Favourites") {
      return dummyProducts; // already used in Autumn page
    }

    if (collectionName == "UoP Essentials") {
      return dummyProducts.take(5).toList();
    }

    if (collectionName == "Gifts & Souvenirs") {
      return dummyProducts.skip(3).toList();
    }

    if (collectionName == "Graduation") {
      return dummyProducts.where((p) => p.id >= 9).toList();
    }

    // fallback if no name given
    return dummyProducts;
  }

  @override
  Widget build(BuildContext context) {
    final products = getProductsForCollection();

    final String title =
        collectionName ?? "Collection"; // fallback if no name passed

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Browse our $title collection below.",
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),

              // PRODUCT GRID
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
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductCard(
                    title: product.title,
                    price: '£${product.price.toStringAsFixed(2)}',
                    imageUrl: product.imageUrl,
                    productNumber: product.id,
                  );
                },
              ),

              const SizedBox(height: 40),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
