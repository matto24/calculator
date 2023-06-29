import "package:flutter/material.dart";
import 'package:calculator/button_style.dart';

class Calculate extends StatefulWidget {
  const Calculate({super.key});
  @override
  State<Calculate> createState() {
    return _Calculate();
  }
}

class _Calculate extends State<Calculate> {
  double result = 0;
  double current = 0;

  void addNumber() {
    setState(() {
      current = 2;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Result',
          style: TextStyle(fontSize: 28),
        ),
        const SizedBox(height: 80), // Used for padding
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              children: [
                Numbers(7),
                Numbers(4),
                Numbers(1),
              ],
            ),
            Column(
              children: [
                Numbers(8),
                Numbers(5),
                Numbers(2),
              ],
            ),
            Column(
              children: [
                Numbers(9),
                Numbers(6),
                Numbers(3),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
