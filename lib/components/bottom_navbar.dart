import "package:flutter/material.dart";
import 'package:google_nav_bar/google_nav_bar.dart';

class GNavBar extends StatefulWidget {
  const GNavBar({super.key, required this.onTabChange});
  final void Function(int index) onTabChange;

  @override
  State<GNavBar> createState() => _GNavBarState();
}

class _GNavBarState extends State<GNavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GNav(
        tabs: const [
          GButton(
            icon: Icons.leaderboard,
            text: 'Data Science',
          ),
          GButton(
            icon: Icons.web,
            text: 'Web Development',
          )
        ],
        onTabChange: (value) => widget.onTabChange(value),
        gap: 8,
        iconSize: 24,
        backgroundColor: const Color(0xFF3A6E68),
        tabBackgroundColor: Colors.white,
        activeColor: const Color(0xFF3A6E68),
        color: Colors.white,
        tabMargin: const EdgeInsets.all(10), // Adjust margin between tabs
        padding: const EdgeInsets.all(10), // Adjust padding inside tabs
      ),
    );
  }
}
