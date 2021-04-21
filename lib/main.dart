import 'package:flutter/material.dart';

import 'themeData.dart';
import "inputPage.dart";

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme(),
      home: InputPage(),
    );
  }
}
