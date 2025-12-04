Union Shop — Flutter E-Commerce App

A modern, mobile-first online shop built with Flutter and inspired by
https://shop.upsu.net/

Includes collections, product pages, cart system, login/register screens, and Firebase integration.

Features
🧩 Core

Home, About, Collections, Product pages

Sale collection

Navbar + Footer

Responsive mobile-first layout

⚙️ Functionality

Sorting (price low–high / high–low)

Filters (hoodies / t-shirts / accessories)

Pagination

Category badges

Shopping cart (Provider state management)

Print Shack page

🔥 Firebase

Optional Firestore product/cart storage

Optionally deployed via Firebase Hosting

Tech Stack

Flutter 3.x

Provider

Firebase Auth & (optional) Firestore

cached_network_image

Run the App

Install dependencies:

flutter pub get


Run in Chrome:

flutter run -d chrome


Run tests:

flutter test

Firebase Setup (Optional)
dart pub global activate flutterfire_cli
flutterfire configure


Then initialise in main.dart:

await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

Project Structure
lib/
  models/
  providers/
  services/
  pages/
  widgets/
test/

Author

Reem • https://github.com/reemscodework
