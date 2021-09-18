import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ), // Icon
        SizedBox(
          height: 15.0,
        ), // SizedBox
        Text(
          label,
          style: kLabelTextStyle,
        ), // Text
      ],
    ); // Column
  }
}
