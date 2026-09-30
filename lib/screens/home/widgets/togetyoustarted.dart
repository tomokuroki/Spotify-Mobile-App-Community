import 'package:flutter/material.dart';

class TogetYouStarted extends StatefulWidget {
  const TogetYouStarted({super.key});

  @override
  State<TogetYouStarted> createState() => _TogetYouStartedState();
}

class _TogetYouStartedState extends State<TogetYouStarted> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Container(
        height: 290,
        // decoration: BoxDecoration(color: Colors.white),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "To get you started",
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
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 42,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Drake, Michael Jackson, \nDua Lipa and more",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        "Justin Bieber, Michael \nJackson, Dua Lipa and\n more",
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        "The Weeknd, Michael \nJackson, Dua Lipa and more",
                        style: TextStyle(color: Colors.white, fontSize: 12),
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
