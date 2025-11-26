import 'package:flutter/material.dart';

class NavBar extends StatelessWidget implements PreferredSizeWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Union Shop"),
      actions: [
        _buildNavButton(context, "Home", '/'),
        _buildNavButton(context, "About", '/about'),
        _buildNavButton(context, "Collections", '/collections'),
        _buildNavButton(context, "Sale", '/sale'),
        _buildNavButton(context, "Login", '/login'),
      ],
    );
  }

  Widget _buildNavButton(BuildContext ctx, String label, String route) {
    return TextButton(
      onPressed: () => Navigator.pushNamed(ctx, route),
      child: Text(label, style: const TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
