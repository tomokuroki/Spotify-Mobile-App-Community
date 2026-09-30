import 'package:flutter/material.dart';
import 'package:spotifymobileappcommunity/screens/home/widgets/recently_played.dart';
import 'package:spotifymobileappcommunity/screens/home/widgets/togetyoustarted.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF121212),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Color(0x121212)),
                height: 88,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 32,
                    right: 4,
                    bottom: 8,
                    // left: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Goood morning",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.abc, color: Colors.white),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.time_to_leave,
                              color: Colors.white,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.settings, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              RecentlyPlayed(),
              TogetYouStarted(),
            ],
          ),
        ),
      ),
    );
  }
}
