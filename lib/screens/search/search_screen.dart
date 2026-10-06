import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spotifymobileappcommunity/screens/search/widgets/browseall.dart';
import 'package:spotifymobileappcommunity/widgets/mini_player.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Container(
        color: const Color(0xFF121212),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 32,
                  right: 4,
                  bottom: 8,
                ),
                child: SizedBox(
                  height: 48,
                  child: Row(
                    children: [
                      const Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    style: const TextStyle(
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      height: 1,
                      letterSpacing: 0.15,
                      color: Color(0xFF121212),
                    ),
                    decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 12, right: 8),
                        child: Image.asset(
                          'assets/icons/VectorSearch.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 44,
                        minHeight: 24,
                      ),
                      hintText: 'What do you want to listen to?',
                      hintStyle: const TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        height: 1,
                        letterSpacing: 0.15,
                        color: Color(0xFF121212),
                      ),
                      filled: true,
                      fillColor: const Color(0xFFFCFCFC),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(vertical: 0),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: const [browseall()]),
                ),
              ),

              // mini player
              const MiniPlayer(),
            ],
          ),
        ),
      ),
    );
  }
}
