import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ), // AppBar
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(color: Color(0xFF1D1E33)),
                  ),
                ],
              ), // Row
            ), // Expanded
            Expanded(
              child: ReusableCard(color: Color(0xFF1D1E33)),
            ), // Expanded
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(color: Color(0xFF1D1E33)),
                  ),
                  Expanded(
                    child: ReusableCard(color: Color(0xFF1D1E33)),
                  ),
                ],
              ), // Row
            ), // Expanded
          ],
        ), // Column
      ), // SafeArea
    ); // Scaffold
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.color});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ), // BoxDecoration
    ); // Container
  }
}
