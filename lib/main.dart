import 'package:flutter/material.dart';
import 'package:calculator/calculate.dart';

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
            textStyle: const TextStyle(
              fontSize: 40,
            ),
            padding: const EdgeInsets.all(14),
          ),
        ),
      ),
      home: const Calculate(),
    ),
  );
}
