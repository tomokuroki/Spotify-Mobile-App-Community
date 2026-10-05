import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotifymobileappcommunity/screens/settings/widgets/datasaver.dart';
import 'package:spotifymobileappcommunity/screens/settings/widgets/freeaccount.dart';
import 'package:spotifymobileappcommunity/screens/settings/widgets/viewprofile.dart';
import 'package:spotifymobileappcommunity/widgets/bottom_nav.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key, this.onNavigationSelected});

  final ValueChanged<int>? onNavigationSelected;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF282828),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 64,
                width: double.infinity,
                color: const Color(0xFF282828),
                padding: const EdgeInsets.symmetric(),
                child: SizedBox(
                  height: 48,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 28,
                          ),
                          splashRadius: 24,
                        ),
                      ),
                      const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              freeaccount(),
              viewprofile(),
              datasaver(),

              const Expanded(child: SizedBox()),
            ],
          ),
        ),
        bottomNavigationBar: SpotifyBottomBar(
          currentIndex: 0,
          onItemSelected: (index) {
            final onNavigationSelected = widget.onNavigationSelected;
            if (onNavigationSelected != null) {
              onNavigationSelected(index);
            }
          },
        ),
      ),
    );
  }
}
