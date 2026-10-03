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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 144,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/home/f2915b633b22515f0289a3f7c689ae55cb06c6ae.jpg',
                        width: 144,
                        height: 144,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Drake, Michael Jackson, Dua Lipa and more",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 16),

                SizedBox(
                  width: 144,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 144, height: 144, color: Colors.red, child: Image.asset('assets/home/640f478d883a676c65f80c9272c3649a594ade24.jpg'),),
                      const SizedBox(height: 8),
                      const Text(
                        "Justin Bieber, Michael Jackson, Dua Lipa and more",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),

                const SizedBox(width: 16),

                SizedBox(
                  width: 144,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(width: 144, height: 144, color: Colors.pink, child: Image.asset('assets/home/911a14db540077bd18d82cd4dc036406519bf8f8.jpg'),),
                      const SizedBox(height: 8),
                      const Text(
                        "The Weeknd, Michael Jackson, Dua Lipa and more",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
