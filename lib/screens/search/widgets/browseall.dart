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
      child: Container(
        // color: const Color.fromARGB(255, 224, 5, 5),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
                  child: Text(
                    "Browse all",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
