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
  int _currentIndex = 0;

  static const List<Widget> _screens = [
    HomeScreen(),
    SearchScreen(),
    LibraryScreen(),
    PremiumScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: _SpotifyBottomBar(
        currentIndex: _currentIndex,
        onItemSelected: (index) {
          if (index == _currentIndex) return;
          setState(() => _currentIndex = index);
        },
      ),
    );
  }
}

class _SpotifyBottomBar extends StatelessWidget {
  const _SpotifyBottomBar({
    required this.currentIndex,
    required this.onItemSelected,
  });

  final int currentIndex;
  final ValueChanged<int> onItemSelected;

  static const _items = [
    _NavigationItem('Home', 'assets/icons/Home States.png'),
    _NavigationItem('Search', 'assets/icons/Search States.png'),
    _NavigationItem('Your Library', 'assets/icons/Library States.png'),
    _NavigationItem('Premium', 'assets/icons/Premium States.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.paddingOf(context).bottom;

    return SizedBox(
      height: 80 + bottomInset,
      child: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x00000000), Color(0x66000000), Color(0xE6000000)],
            stops: [0, 0.58, 1],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(bottom: bottomInset),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(_items.length, (index) {
              final item = _items[index];
              return _BottomBarItem(
                label: item.label,
                assetPath: item.assetPath,
                selected: currentIndex == index,
                onTap: () => onItemSelected(index),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.label,
    required this.assetPath,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final String assetPath;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? Colors.white : const Color(0xFFB3B3B3);

    return Semantics(
      button: true,
      selected: selected,
      label: label,
      child: SizedBox.square(
        dimension: 80,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: ExcludeSemantics(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColorFiltered(
                  colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
                  child: Image.asset(assetPath, width: 24, height: 24),
                ),
                const SizedBox(height: 5),
                Text(
                  label,
                  maxLines: 1,
                  style: TextStyle(
                    color: color,
                    fontSize: 12,
                    height: 1.2,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _NavigationItem {
  const _NavigationItem(this.label, this.assetPath);

  final String label;
  final String assetPath;
}
