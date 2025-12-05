// lib/collection_page.dart
import 'package:flutter/material.dart';
import 'package:union_shop/dummy_products.dart';
import 'package:union_shop/product_card.dart';
import 'package:union_shop/product.dart';
import 'package:union_shop/footer.dart';

class CollectionPage extends StatefulWidget {
  // optional: pass a collection name to pre-select a mapping
  final String? collectionName;

  const CollectionPage({super.key, this.collectionName});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  // UI state
  String sortOrder = 'Price: Low to High';
  String activeFilter = 'All';
  int currentPage = 1;
  final int pageSize = 6; // configurable items per page

  // available filters (we'll derive from products, but ensure these exist)
  late final List<String> allCategories;

  @override
  void initState() {
    super.initState();
    final cats = <String>{'All'};
    for (final p in dummyProducts) {
      cats.add(p.category);
    }
    allCategories = cats.toList();

    // If page is opened for a specific collection name, try to map it
    if (widget.collectionName != null) {
      final mapped = _mapCollectionNameToCategory(widget.collectionName!);
      if (mapped != null) {
        activeFilter = mapped;
      }
    }
  }

  // Better dynamic mapping: map collection names to category (or set of categories)
  // Returns a single category string for now (could be extended to list)
  String? _mapCollectionNameToCategory(String name) {
    final mapping = <String, String>{
      'Autumn Favourites': 'Hoodie',
      'UoP Essentials': 'Accessory',
      'Gifts & Souvenirs': 'Accessory',
      'Graduation': 'Accessory',
      'Hoodies': 'Hoodie',
      'T-Shirts': 'T-Shirt',
      'Accessories': 'Accessory',
    };

    // try exact, else scan for keywords
    if (mapping.containsKey(name)) return mapping[name];
    final lower = name.toLowerCase();
    if (lower.contains('hoodie')) return 'Hoodie';
    if (lower.contains('t-shirt') || lower.contains('tshirt')) return 'T-Shirt';
    if (lower.contains('gift') || lower.contains('accessory') || lower.contains('mug')) return 'Accessory';
    return null;
  }

  // Apply filter and sort -> returns full list
  List<Product> _filteredSortedProducts() {
    // Start with all
    List<Product> list = List<Product>.from(dummyProducts);

    // Filter:
    if (activeFilter != 'All') {
      list = list.where((p) => p.category == activeFilter).toList();
    }

    // Sort:
    if (sortOrder == 'Price: Low to High') {
      list.sort((a, b) => a.price.compareTo(b.price));
    } else {
      list.sort((a, b) => b.price.compareTo(a.price));
    }

    return list;
  }

  // Returns current page items
  List<Product> _pagedProducts(List<Product> fullList) {
    final total = fullList.length;
    final totalPages = (total / pageSize).ceil().clamp(1, 999);
    if (currentPage > totalPages) currentPage = totalPages;
    final startIndex = (currentPage - 1) * pageSize;
    final endIndex = (startIndex + pageSize).clamp(0, total);
    return fullList.sublist(startIndex, endIndex);
  }

  // Helper: change filter/sort and reset to page 1, triggering animation
  void _changeFilter(String newFilter) {
    setState(() {
      activeFilter = newFilter;
      currentPage = 1;
    });
  }

  void _changeSort(String newSort) {
    setState(() {
      sortOrder = newSort;
      currentPage = 1;
    });
  }

  void _goToPage(int page) {
    setState(() {
      currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final fullList = _filteredSortedProducts();
    final totalPages = (fullList.length / pageSize).ceil().clamp(1, 999);
    final pageItems = _pagedProducts(fullList);

    // Key depends on filter+sort+page so AnimatedSwitcher animates changes
    final gridKey = ValueKey('${activeFilter}_$sortOrder$currentPage');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collectionName ?? 'All Products'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                widget.collectionName ?? 'All Products',
                style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              // Controls: Filters + Sort
              Row(
                children: [
                  // Filters as ChoiceChips
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: allCategories.map((cat) {
                          final selected = cat == activeFilter;
                          return Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: ChoiceChip(
                              label: Text(cat),
                              selected: selected,
                              onSelected: (_) => _changeFilter(cat),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Sort dropdown
                  DropdownButton<String>(
                    value: sortOrder,
                    items: const [
                      DropdownMenuItem(value: 'Price: Low to High', child: Text('Price: Low→High')),
                      DropdownMenuItem(value: 'Price: High to Low', child: Text('Price: High→Low')),
                    ],
                    onChanged: (v) {
                      if (v != null) _changeSort(v);
                    },
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // Animated grid
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 450),
                transitionBuilder: (child, animation) {
                  // Fade + slide
                  final offsetAnim = Tween<Offset>(
                    begin: const Offset(0, 0.05),
                    end: Offset.zero,
                  ).animate(animation);
                  return FadeTransition(
                    opacity: animation,
                    child: SlideTransition(position: offsetAnim, child: child),
                  );
                },
                child: SizedBox(
                  key: gridKey,
                  width: double.infinity,
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).size.width > 900 ? 4 : (MediaQuery.of(context).size.width > 600 ? 3 : 2),
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.68,
                    ),
                    itemCount: pageItems.length,
                    itemBuilder: (context, index) {
                      final p = pageItems[index];
                      return _buildProductCardWithTag(context, p);
                    },
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Pagination controls (only if >1 page)
              if (totalPages > 1)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chevron_left),
                      onPressed: currentPage > 1 ? () => _goToPage(currentPage - 1) : null,
                    ),
                    for (var i = 1; i <= totalPages; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: i == currentPage ? Theme.of(context).colorScheme.primary : Colors.white,
                            foregroundColor: i == currentPage ? Colors.white : Colors.black87,
                            side: BorderSide(color: Colors.grey.shade300),
                            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                          ),
                          onPressed: () => _goToPage(i),
                          child: Text('$i'),
                        ),
                      ),
                    IconButton(
                      icon: const Icon(Icons.chevron_right),
                      onPressed: currentPage < totalPages ? () => _goToPage(currentPage + 1) : null,
                    ),
                  ],
                ),

              const SizedBox(height: 30),

              const Footer(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProductCardWithTag(BuildContext context, Product p) {
    // Re-use your ProductCard widget if it accepts productNumber / title / price / imageUrl
    // We'll wrap it and add a small Category Chip and a Hero for animation
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product/${p.id}');
      },
      child: Card(
        elevation: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image with hero to product page (if your product page uses same hero tag it will animate)
            Expanded(
              child: Hero(
                tag: 'product-image-${p.id}',
                child: Image.network(
                  p.imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  errorBuilder: (context, err, st) => Container(
                    color: Colors.grey[200],
                    child: const Center(child: Icon(Icons.image_not_supported)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title and price
                  Text(
                    p.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text('£${p.price.toStringAsFixed(2)}',
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(width: 8),
                      if (p.originalPrice != null)
                        Text('£${p.originalPrice!.toStringAsFixed(2)}',
                            style: const TextStyle(decoration: TextDecoration.lineThrough, color: Colors.grey)),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // category chip
                  Chip(
                    label: Text(p.category),
                    visualDensity: VisualDensity.compact,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
