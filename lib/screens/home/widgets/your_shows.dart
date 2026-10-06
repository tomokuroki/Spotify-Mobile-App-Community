import 'package:flutter/material.dart';

class YourShows extends StatefulWidget {
  const YourShows({super.key});

  @override
  State<YourShows> createState() => _YourShowsState();
}

class _YourShowsState extends State<YourShows> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Your shows",
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

                      child: Image.asset(
                        'assets/home/bd226c769a8229e3be57c119f0249a4b3007e266.jpg',
                      ),
                    ),
                    const SizedBox(height: 14),
                    Row(
                      children: [
                        Text(
                          'Business & Technology',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
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
                    Container(
                      width: 144,
                      height: 144,
                      color: Colors.red,
                      child: Image.asset(
                        'assets/home/3128926ec81616aeb41d28eb3f91a3a174b9a1b9.jpg',
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Business & Technology',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
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
                    Container(
                      width: 144,
                      height: 144,
                      color: Colors.pink,
                      child: Image.asset(
                        'assets/home/36802c7e51955f56d86e20e6832f369b4e0943e6.jpg',
                      ),
                    ),
                    const SizedBox(height: 14),
                    Text(
                      'Business & Technology',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
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
    );
  }
}
