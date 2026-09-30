import 'package:flutter/material.dart';
import 'package:spotifymobileappcommunity/screens/home/home_screen.dart';
import 'package:spotifymobileappcommunity/screens/library/library_screen.dart';
import 'package:spotifymobileappcommunity/screens/premium/premium_screen.dart';
import 'package:spotifymobileappcommunity/screens/search/search_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;
  final List<Widget> screen = const [
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
    PremiumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screen),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromARGB(217, 0, 0, 0),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white, 
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_add),
            label: 'Your Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Premium'),
        ],
      ),
    );
  }
}
