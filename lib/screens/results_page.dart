import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottom_gesture_button.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {Key? key,
      required this.bmi,
      required this.bmiText,
      required this.interpretation})
      : super(key: key);

  final String bmi;
  final String bmiText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text("-- Your Result --", style: kLargeFont),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
                colour: kActiveCardColor,
                childCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(bmiText, style: kNeonSmallFont),
                      Text(bmi, style: kBoldFontStyle),
                      Container(
                          padding: EdgeInsets.all(20),
                          child: Text(interpretation, style: kLabelTextStyle)),
                    ]),
                onTap: () {}),
          ),
          BottomGestureButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonText: "RE-CALCULATE",
            buttonIcon: FontAwesomeIcons.redo,
          ),
        ],
      ),
    );
  }
}
