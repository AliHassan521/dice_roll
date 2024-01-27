import 'package:flutter/material.dart';

import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainter(Color.fromARGB(255, 0, 18, 33),
            Color.fromARGB(255, 1, 59, 112)),
      ),
    ),
  );
}
