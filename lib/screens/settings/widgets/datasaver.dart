import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class datasaver extends StatefulWidget {
  const datasaver({super.key});

  @override
  State<datasaver> createState() => _datasaverState();
}

class _datasaverState extends State<datasaver> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, right: 16, left: 16, bottom: 16),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Data Saver',
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
                    'Audio Quality',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  Text(
                    'Sets your audio quality to low (equivalent to\n24kbit/s) and disables\nartist canvases.',
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
