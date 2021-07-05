import 'package:flutter/material.dart';
import "constants.dart";

ThemeData customTheme() {
  return ThemeData(
      primaryColor: Color(kPrimaryColor),
      accentColor: Colors.tealAccent[700],
      scaffoldBackgroundColor: Color(kScaffoldBackgroundColor),
      textTheme: TextTheme(
        bodyText2: TextStyle(
          color: Color(kBodyTextColor),
        ),
      ));
}
