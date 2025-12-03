import 'package:union_shop/product.dart';

final dummyProducts = [
  const Product(
    id: 1,
    title: 'UoP Hoodie',
    price: 35.00,
    imageUrl:
        'assets/images/hoodie_black.png',
    description: 'Classic University of Portsmouth hoodie. Perfect for staying warm on campus.',
    category: 'Hoodie',
    colors: {
      'Black': 'assets/images/hoodie_black.png',
      'Purple': 'assets/images/hoodie_purple.png',
      'Grey': 'assets/images/hoodie_grey.png',
      'Green': 'assets/images/hoodie_green.png',
    },
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
        'assets/images/backpack.png',
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
        'assets/images/notebook_black.png',
    description: 'Jot down your notes in this classic University of Portsmouth notebook.',
    category: 'Accessory',
  ),
  const Product(
    id: 12,
    title: 'Lanyards',
    price: 5.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPLanyard-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Keep your keys and ID safe with a UoP lanyard.',
    category: 'Accessory',
  ),
  const Product(
    id: 13,
    title: 'Graduation Bear',
    price: 20.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPGraduationBear-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A cuddly companion to celebrate your graduation.',
    category: 'Gift',
  ),
  const Product(
    id: 14,
    title: 'Pen',
    price: 2.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPPen-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A sleek pen with the UoP logo.',
    category: 'Accessory',
  ),
  const Product(
    id: 15,
    title: 'Sweatshirts',
    price: 30.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPSweatshirt-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A cozy sweatshirt to keep you warm.',
    category: 'Sweatshirt',
  ),
  const Product(
    id: 16,
    title: 'Notepad',
    price: 4.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPNotepad-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A handy notepad for your notes and doodles.',
    category: 'Accessory',
  ),
  const Product(
    id: 17,
    title: 'Keep Cups',
    price: 15.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPKeepCup-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A reusable cup to enjoy your coffee on the go.',
    category: 'Accessory',
  ),
  const Product(
    id: 18,
    title: 'Crested Badge',
    price: 3.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPCrestedBadge-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Show your pride with a UoP crested badge.',
    category: 'Accessory',
  ),
  const Product(
    id: 19,
    title: 'Graduation Hoodies',
    price: 40.00,
    imageUrl:
        'assets/images/hoodie_black.png',
    description: 'A special hoodie to commemorate your graduation.',
    category: 'Hoodie',
  ),
  const Product(
    id: 20,
    title: 'ID Holder',
    price: 4.00,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPIDHolder-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Keep your ID safe and secure.',
    category: 'Accessory',
  ),
  const Product(
    id: 21,
    title: 'Bookmark',
    price: 2.50,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPBookmark-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'Never lose your page with this UoP bookmark.',
    category: 'Accessory',
  ),
  const Product(
    id: 22,
    title: 'Fidget Keyring',
    price: 3.50,
    imageUrl:
        'https://shop.upsu.net/cdn/shop/files/UOPFidgetKeyring-Front_1024x1024@2x.jpg?v=1752229871',
    description: 'A fun and fidgety keyring to keep you entertained.',
    category: 'Accessory',
  ),
  const Product(
    id: 6,
    title: 'UoP Hoodie - Sale',
    price: 25.00,
    originalPrice: 35.00,
    isSale: true,
    imageUrl:
        'assets/images/hoodie_black.png',
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
        'assets/images/tshirt.png',
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
        'assets/images/waterbottle.png',
    description: 'Now on sale!',
    category: 'Accessory',
  ),
  const Product(
    id: 23,
    title: 'Sweatshirt - Sale',
    price: 20.00,
    originalPrice: 30.00,
    isSale: true,
    imageUrl:
        'assets/images/sweatshirt.png',
    description: 'Now on sale!',
    category: 'Sweatshirt',
  ),
];

final dummySaleProducts = dummyProducts.where((p) => p.isSale).toList();
