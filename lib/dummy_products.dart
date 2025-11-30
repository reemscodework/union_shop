import 'package:union_shop/product.dart';

final dummyProducts = [
  const Product(
    id: 1,
    title: 'UoP Hoodie',
    price: 35.00,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Classic University of Portsmouth hoodie. Perfect for staying warm on campus.',
  ),
  const Product(
    id: 2,
    title: 'UoP T-Shirt',
    price: 15.00,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPT-Shirt-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A comfortable and stylish t-shirt with the University of Portsmouth logo.',
  ),
  const Product(
    id: 3,
    title: 'UoP Water Bottle',
    price: 12.00,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPWaterBottle-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Stay hydrated with this reusable University of Portsmouth water bottle.',
  ),
  const Product(
    id: 4,
    title: 'UoP Beanie',
    price: 10.00,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPBeanie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Keep your head warm with this stylish University of Portsmouth beanie.',
  ),
  const Product(
    id: 5,
    title: 'UoP Mug',
    price: 8.00,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPMug-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Enjoy your morning coffee with this University of Portsmouth mug.',
  ),
];

final dummySaleProducts = [
  const Product(
    id: 6,
    title: 'UoP Hoodie - Sale',
    price: 25.00,
    originalPrice: 35.00,
    isSale: true,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPHoodie-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Classic University of Portsmouth hoodie. Perfect for staying warm on campus. Now on sale!',
  ),
  const Product(
    id: 7,
    title: 'UoP T-Shirt - Sale',
    price: 10.00,
    originalPrice: 15.00,
    isSale: true,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPT-Shirt-Black-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A comfortable and stylish t-shirt with the University of Portsmouth logo. Now on sale!',
  ),
  const Product(
    id: 8,
    title: 'UoP Water Bottle - Sale',
    price: 8.00,
    originalPrice: 12.00,
    isSale: true,
    imageUrl: 'https://shop.upsu.net/cdn/shop/files/UOPWaterBottle-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Stay hydrated with this reusable University of Portsmouth water bottle. Now on sale!',
  ),
];
