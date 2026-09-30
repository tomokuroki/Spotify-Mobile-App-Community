import 'package:flutter/material.dart';

class RecentlyPlayed extends StatefulWidget {
  const RecentlyPlayed({super.key});

  @override
  State<RecentlyPlayed> createState() => _RecentlyPlayedState();
}

class _RecentlyPlayedState extends State<RecentlyPlayed> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 224,
        // decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Recently played",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 144,
                        height: 144,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(66, 2, 245, 0.74),
                              Color.fromRGBO(202, 154, 240, 0.50),
                              Color.fromRGBO(192, 234, 201, 0.74),
                            ],
                          ),
                        ),
                        child: Center(
                          child: Icon(Icons.favorite, color: Colors.white, size: 42,),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Liked Songs",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  const SizedBox(width: 16),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 144, height: 144, color: Colors.red),
                      const SizedBox(height: 8),
                      const Text(
                        "Dangerous",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),

                  const SizedBox(width: 16),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 144, height: 144, color: Colors.pink),
                      const SizedBox(height: 8),
                      const Text(
                        "For You",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
