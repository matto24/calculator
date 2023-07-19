import 'package:flutter/material.dart';

class Buttons extends StatefulWidget {
  Buttons(this.num2, {super.key});

  var num2;

  @override
  State<Buttons> createState() {
    return _Buttons();
  }
}

class _Buttons extends State<Buttons> {
  void addNum() {
    setState(() {
      print(widget.num2);
    });
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      child: ElevatedButton(
        onPressed: addNum,
        child: Text(widget.num2.toString()),
      ),
    );
  }
}
