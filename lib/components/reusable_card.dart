import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key,
      required this.colour,
      required this.childCard,
      required this.onTap})
      : super(key: key);

  final int colour;
  final Widget childCard;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: childCard,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(colour),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
