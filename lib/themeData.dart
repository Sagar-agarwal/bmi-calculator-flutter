import 'package:flutter/material.dart';

ThemeData customTheme() {
  return ThemeData(
      primaryColor: Color(0xFF0A0e21),
      accentColor: Colors.tealAccent[700],
      scaffoldBackgroundColor: Color(0xFF0A0D22),
      textTheme: TextTheme(
        body1: TextStyle(color: Color(0xFFFFFFFF)),
      ));
}
