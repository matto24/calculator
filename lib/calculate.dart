import 'package:calculator/main.dart';
import "package:flutter/material.dart";
import 'package:calculator/numbers.dart';

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
    return Scaffold(
      backgroundColor: kDarkColorScheme.background,
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(height: 80),
          const Text(
            'Result',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 100,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 4,
              children: [
                Buttons('AC'),
                Buttons('+/-'),
                Buttons('%'),
                Buttons('/'),
                Buttons(7),
                Buttons(8),
                Buttons(9),
                Buttons('*'),
                Buttons(4),
                Buttons(5),
                Buttons(6),
                Buttons('-'),
                Buttons(1),
                Buttons(2),
                Buttons(3),
                Buttons('+'),
                Buttons(0),
                Buttons(','),
                Buttons('='),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
