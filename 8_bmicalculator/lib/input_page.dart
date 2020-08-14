import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_contents.dart';

const double _bottomContainerHeight = 80.0;
const Color _activeCardColor = Color(0xFF1D1E33);
const Color _bottomContainerColor = Color(0xFFEB1555);

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
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: LayoutCard(
                      color: _activeCardColor,
                      cardChild: CardContents(
                        text: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      color: _activeCardColor,
                      cardChild: CardContents(
                        text: 'Female',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LayoutCard(
                color: _activeCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: LayoutCard(
                      color: _activeCardColor,
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      color: _activeCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: _bottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: _bottomContainerHeight,
            )
          ],
        ));
  }
}
