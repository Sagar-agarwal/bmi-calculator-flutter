import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Constants.dart';

class BottomGestureButton extends StatelessWidget {
  const BottomGestureButton({
    Key? key,
    required this.buttonText,
    required this.buttonIcon,
    required this.onTap,
  }) : super(key: key);

  final String buttonText;
  final IconData buttonIcon;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color(kBottomButtonColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                buttonText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 5),
              ),
              SizedBox(width: 10),
              Container(
                child: Icon(
                  buttonIcon,
                  color: Colors.white,
                  size: 22,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
