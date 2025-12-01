import 'package:union_shop/product.dart';

final dummyProducts = [
  const Product(
    id: 1,
    title: 'UoP Hoodie',
    price: 35.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Classic University of Portsmouth hoodie. Perfect for staying warm on campus.',
    category: 'Hoodie',
  ),
  const Product(
    id: 2,
    title: 'UoP T-Shirt',
    price: 15.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPT-Shirt-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A comfortable and stylish t-shirt with the University of Portsmouth logo.',
    category: 'T-Shirt',
  ),
  const Product(
    id: 3,
    title: 'UoP Water Bottle',
    price: 12.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPWaterBottle-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Stay hydrated with this reusable University of Portsmouth water bottle.',
    category: 'Accessory',
  ),
  const Product(
    id: 4,
    title: 'UoP Beanie',
    price: 10.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPBeanie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Keep your head warm with this stylish University of Portsmouth beanie.',
    category: 'Accessory',
  ),
  const Product(
    id: 5,
    title: 'UoP Mug',
    price: 8.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPMug-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Enjoy your morning coffee with this University of Portsmouth mug.',
    category: 'Accessory',
  ),
  const Product(
    id: 9,
    title: 'UoP Backpack',
    price: 45.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPBackpack-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Carry your essentials in this spacious and durable University of Portsmouth backpack.',
    category: 'Accessory',
  ),
  const Product(
    id: 10,
    title: 'UoP Scarf',
    price: 18.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPScarf-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Stay warm and show your university pride with this soft University of Portsmouth scarf.',
    category: 'Accessory',
  ),
  const Product(
    id: 11,
    title: 'UoP Notebook',
    price: 6.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPNotebook-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Jot down your notes in this classic University of Portsmouth notebook.',
    category: 'Accessory',
  ),
  const Product(
    id: 6,
    title: 'UoP Hoodie - Sale',
    price: 25.00,
    originalPrice: 35.00,
    isSale: true,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Now on sale!',
    category: 'Hoodie',
  ),
  const Product(
    id: 7,
    title: 'UoP T-Shirt - Sale',
    price: 10.00,
    originalPrice: 15.00,
    isSale: true,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPT-Shirt-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Now on sale!',
    category: 'T-Shirt',
  ),
  const Product(
    id: 8,
    title: 'UoP Water Bottle - Sale',
    price: 8.00,
    originalPrice: 12.00,
    isSale: true,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPWaterBottle-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Now on sale!',
    category: 'Accessory',
  ),
];

final dummySaleProducts = dummyProducts.where((p) => p.isSale).toList();
