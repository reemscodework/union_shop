import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageUrl;
  final int productNumber;
  final String? originalPrice;
  final bool isSale;

  const ProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imageUrl,
    required this.productNumber,
    this.originalPrice,
    this.isSale = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product/$productNumber');
      },
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      color: Colors.grey[300],
                      child: const Center(
                        child: Icon(Icons.image_not_supported, color: Colors.grey),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(fontSize: 14, color: Colors.black),
                      maxLines: 2,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          price,
                          style: TextStyle(
                            fontSize: 13,
                            color: isSale ? Colors.red : Colors.grey,
                            fontWeight: isSale ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                        if (isSale && originalPrice != null)
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              originalPrice!,
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          if (isSale)
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                color: Colors.red,
                child: const Text(
                  'Sale',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
