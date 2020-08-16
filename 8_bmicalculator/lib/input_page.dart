import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'genders.dart';

const double _bottomContainerHeight = 80.0;
const Color _activeCardColor = Color(0xFF1D1E33);
const Color _inactiveCardColor = Color(0xFF111328);
const Color _bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Genders selectedGender;

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
                      onTapFunction: () {
                        setState(() {
                          selectedGender = Genders.male;
                        });
                      },
                      color: selectedGender == Genders.male
                          ? _activeCardColor
                          : _inactiveCardColor,
                      cardChild: IconContent(
                        label: 'Male',
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      onTapFunction: () {
                        setState(() {
                          selectedGender = Genders.female;
                        });
                      },
                      color: selectedGender == Genders.female
                          ? _activeCardColor
                          : _inactiveCardColor,
                      cardChild: IconContent(
                        label: 'Female',
                        icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LayoutCard(
                color: _inactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: LayoutCard(
                      color: _inactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      color: _inactiveCardColor,
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
