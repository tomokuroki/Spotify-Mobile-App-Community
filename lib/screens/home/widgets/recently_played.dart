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
                        gradient: const LinearGradient(
                          begin: Alignment(-0.21, -0.98),
                          end: Alignment(0.21, 0.98),
                          colors: [
                            Color.fromRGBO(66, 2, 245, 0.74),
                            Color.fromRGBO(202, 154, 240, 0.50),
                            Color.fromRGBO(192, 234, 201, 0.74),
                          ],
                          stops: [0.0, 0.4948, 0.9687],
                        ),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/Vector.png',
                          width: 42,
                          height: 39,
                        ),
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
                    Container(
                      width: 144,
                      height: 144,
                      color: Colors.red,
                      child: Image.asset(
                        'assets/home/9c03e91254dd2e2b776b8583805df75d8fb4c860.jpg',
                      ),
                    ),
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
                    Container(
                      width: 144,
                      height: 144,
                      color: Colors.pink,
                      child: Image.asset(
                        'assets/home/d5e5b17eecdf9ab83970d7274f8a4d202ec9785e.jpg',
                      ),
                    ),
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
    );
  }
}
