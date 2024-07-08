import "package:flutter/material.dart";

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: const Color(0xFF3A6E68),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(0.0);
}
