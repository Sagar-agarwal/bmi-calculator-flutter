import 'package:flutter/material.dart';

import '../constants.dart';

const iconContentLabelStyle = kLabelTextStyle;

const iconContentSizedBox = SizedBox(height: 15);

class IconContent extends StatelessWidget {
  final int textInactiveColor;
  final IconData icon;
  final double iconSize;
  final String text;

  const IconContent({
    Key? key,
    required this.text,
    required this.icon,
    this.iconSize: 80,
    required this.textInactiveColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
          color: Color(textInactiveColor),
        ),
        iconContentSizedBox,
        Text(
          text,
          style: iconContentLabelStyle,
        ),
      ],
    );
  }
}
