import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Function onTap;
  final Color color;
  final Widget cardChild;

  ReusableCard({this.onTap, @required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ), // BoxDecoration
      ), // Container
    );
  }
}
