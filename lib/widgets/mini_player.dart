import 'package:flutter/material.dart';

class MiniPlayer extends StatelessWidget {
  const MiniPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
     width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: const Color(0xFF404040),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 8, top: 8),
        child: Row(
          children: [
            const SizedBox(width: 8),
        
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                'assets/home/9c03e91254dd2e2b776b8583805df75d8fb4c860.jpg',
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
        
            const SizedBox(width: 10),
        
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Remember the Time',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Michael Jackson',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color(0xFFB3B3B3), fontSize: 12),
                  ),
                ],
              ),
            ),
        
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/icons/Devices.png'),
            ),
        
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite, color: Color(0xFF1ED760)),
            ),
        
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow, color: Colors.white, size: 32),
            ),
          ],
        ),
      ),
    );
  }
}
