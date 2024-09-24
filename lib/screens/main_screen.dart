import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tracker/screens/main_fragment.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  static const routeName = "/";

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: fragments.map((fragment) => fragment.item).toList(),
      ),
      body: fragments[currentPageIndex].screen,
    );
  }
}
