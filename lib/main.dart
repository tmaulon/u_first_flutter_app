import 'package:first_flutter_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer.defaultLinearGradient(),
        // body: GradientContainer([
        //   Color.fromRGBO(221, 241, 250, 1),
        //   Color.fromRGBO(189, 240, 255, 1)
        // ]),
      ),
    ),
  );
}
