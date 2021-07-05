import 'package:flutter/material.dart';

import '../Constants.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({Key? key, required this.onPressed, required this.icon})
      : super(key: key);

  final onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      shape: CircleBorder(),
      fillColor: Color(kGreyLighter),
      constraints: BoxConstraints(minWidth: 88.0, minHeight: 44.0),
      elevation: 6.0,
    );
  }
}
