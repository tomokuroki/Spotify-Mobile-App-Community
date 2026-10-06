import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class videopodcasts extends StatefulWidget {
  const videopodcasts({super.key});

  @override
  State<videopodcasts> createState() => _videopodcastsState();
}

class _videopodcastsState extends State<videopodcasts> {
  bool isEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Video Podcasts',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),

          const SizedBox(height: 12),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Download audio quality',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Save video podcasts as audio only.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),

              SizedBox(
                width: 48,
                height: 48,
                child: CupertinoSwitch(
                  value: isEnabled,
                  onChanged: (value) {
                    setState(() {
                      isEnabled = value;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Stream audio only',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Play video podcasts as audio only when not on\nWiFi.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),

              SizedBox(
                width: 48,
                height: 48,
                child: CupertinoSwitch(
                  value: isEnabled,
                  onChanged: (value) {
                    setState(() {
                      isEnabled = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
