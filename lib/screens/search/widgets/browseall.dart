import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class browseall extends StatefulWidget {
  const browseall({super.key});

  @override
  State<browseall> createState() => _browseallState();
}

class _browseallState extends State<browseall> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Color(0xFF282828),
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                child: Text(
                  'Browse all',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.76,

              physics: const NeverScrollableScrollPhysics(),

              children: [
                categoryCard('2022 Wrapped', const Color(0xFFE93300)),
                categoryCard('Podcasts', const Color(0xFF243B75)),
                categoryCard('Made For You', const Color(0xFFE90B5B)),
                categoryCard('New releases', const Color(0xFFF0142B)),
                categoryCard('Hindi', const Color(0xFFB22C98)),
                categoryCard('Punjabi', const Color(0xFFAC6C55)),
                categoryCard('Tamil', const Color(0xFFE43E00)),
                categoryCard('Telugu', const Color(0xFF8F69AF)),
              ],
            ),
          ),

          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget categoryCard(String title, Color color) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Align(
          alignment: Alignment.topLeft,
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
