import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  Numbers(this.num2, {super.key});

  int num2;

  @override
  State<Numbers> createState() {
    return _Numbers();
  }
}

class _Numbers extends State<Numbers> {
  double num1 = 0;
  void addNum() {
    setState(() {
      num1++;
    });
  }

  @override
  Widget build(context) {
    return ElevatedButton(
        onPressed: addNum,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          textStyle: const TextStyle(
            fontSize: 24,
          ),
          padding: const EdgeInsets.all(14),
        ),
        child: Text(widget.num2.toString()));
  }
}
