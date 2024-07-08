import "package:deepconclusions/components/bottom_navbar.dart";
import "package:deepconclusions/pages/data_science.dart";
import "package:deepconclusions/pages/web_dev.dart";
import "package:flutter/material.dart";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void onTabChange(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  final List pages = [const DataScience(), const WebDev()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: GNavBar(
        onTabChange: onTabChange,
      ),
    );
  }
}
