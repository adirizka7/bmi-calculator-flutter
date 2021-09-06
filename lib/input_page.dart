import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';
import 'constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ), // AppBar
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    color: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      label: 'Male',
                    ), // IconContent
                  ), // ReusableCard
                ), // Expanded
                Expanded(
                  child: ReusableCard(
                    onTap: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    color: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'Female',
                    ), // IconContent
                  ), // ReusableCard
                ), // Expanded
              ],
            ), // Row
          ), // Expanded
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'HEIGHT',
                    style: kLabelTextStyle,
                  ), // Text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w900,
                        ), // TextStyle
                      ), // Text
                      Text(
                        'cm',
                      ), // Text
                    ],
                  ), // Row
                  Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double updatedHeight) {
                      setState(() {
                        height = updatedHeight.round();
                      });
                    },
                  ), // Slider
                ],
              ), // Column
            ), // ReusableCard
          ), // Expanded
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ), // Expanded
                Expanded(
                  child: ReusableCard(color: kActiveCardColor),
                ), // Expanded
              ],
            ), // Row
          ), // Expanded
          Container(
            color: kBottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          ), // Container
        ],
      ), // Column
    ); // Scaffold
  }
}
