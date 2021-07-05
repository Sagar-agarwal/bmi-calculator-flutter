import 'package:flutter/material.dart';

import 'themeData.dart';
import "screens/inputPage.dart";
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
//   final scaffoldBackgroundColor = 0xFF0A0D22;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: customTheme(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/results': (context) => ResultsPage(),
      },
    );
  }
}
