import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);
const male = 'Male';
const female = 'Female';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(String gender) {
    if (gender == male) {
      if (maleCardColor == activeCardColor) {
        maleCardColor = inactiveCardColor;
      } else if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      }
    } else if (gender == female) {
      if (femaleCardColor == activeCardColor) {
        femaleCardColor = inactiveCardColor;
      } else if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(male);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: male,
                      ), // IconContent
                    ), // ReusableCard
                  ), // GestureDetector
                ), // Expanded
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(female);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: female,
                      ), // IconContent
                    ), // ReusableCard
                  ), // GestureDetector
                ), // Expanded
              ],
            ), // Row
          ), // Expanded
          Expanded(
            child: ReusableCard(color: activeCardColor),
          ), // Expanded
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ), // Expanded
                Expanded(
                  child: ReusableCard(color: activeCardColor),
                ), // Expanded
              ],
            ), // Row
          ), // Expanded
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ), // Container
        ],
      ), // Column
    ); // Scaffold
  }
}
