import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'appBarData.dart';
import 'components/reusable_card.dart';
import 'components/icon_content.dart';
import 'components/round_icon_button.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  kGender selectedCard = kGender.notSelected;
  int height = 160;
  int weight = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarData(),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: selectedCard == kGender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: IconContent(
                        text: "Male",
                        iconSize: 80,
                        icon: FontAwesomeIcons.mars,
                        textInactiveColor: kTextInactiveColor),
                    onTap: () {
                      setState(() {
                        selectedCard = kGender.male;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: selectedCard == kGender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    childCard: IconContent(
                        text: "Female",
                        iconSize: 80,
                        icon: FontAwesomeIcons.venus,
                        textInactiveColor: kTextInactiveColor),
                    onTap: () {
                      setState(() {
                        selectedCard = kGender.female;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kInactiveCardColor,
              onTap: (() {}),
              childCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Height", style: kLabelTextStyle),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: kBoldFontStyle,
                          ),
                          Text(" cm", style: kLabelTextStyle),
                        ]),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Color(kSliderActive),
                        inactiveTrackColor: Color(kSliderInactive),
                        thumbColor: Color(kSliderActive),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 25),
                        overlayColor: Color(kSliderActive).withAlpha(110),
                      ),
                      child: Slider(
                          value: height.toDouble(),
                          min: 120.0,
                          max: 250.0,
                          onChanged: (double newValue) {
                            setState(() {
                              height = newValue.round();
                            });
                          }),
                    ),
                  ]),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kInactiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("WEIGHT", style: kLabelTextStyle),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(weight.toString(), style: kBoldFontStyle),
                            Text(" kg", style: kLabelTextStyle),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: (() {
                                setState(() {
                                  weight = weight == 30 ? 30 : weight - 1;
                                });
                              }),
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(width: 6),
                            RoundIconButton(
                              onPressed: (() {
                                setState(() {
                                  weight++;
                                });
                              }),
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    onTap: (() {}),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onTap: (() {}),
                    colour: kInactiveCardColor,
                    childCard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Card 2", style: kLabelTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Color(kBottomButtonColor),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "CALCULATE BMI",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 5),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
