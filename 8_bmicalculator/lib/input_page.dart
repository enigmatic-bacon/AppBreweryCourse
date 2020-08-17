import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'units.dart';
import 'constants.dart';

const double _bottomContainerHeight = 80.0;
const double minImperialHeight = 47.24;
const double minMetricHeight = 120;
const double maxImperialHeight = 86.61;
const double maxMetricHeight = 220;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Units selectedUnits = Units.metric;
  double height = 180.0;
  void _changeHeightUnits(Units newUnit) {
    if (newUnit == Units.imperial) {
      double numerator = height - minMetricHeight;
      double denominator = maxMetricHeight - minMetricHeight;
      double percent = numerator / denominator;
      height = ((maxImperialHeight - minImperialHeight) * percent) +
          minImperialHeight;
    } else {
      double numerator = height - minImperialHeight;
      double denominator = maxImperialHeight - minImperialHeight;
      double percent = numerator / denominator;
      height =
          ((maxMetricHeight - minMetricHeight) * percent) + minMetricHeight;
    }
    selectedUnits = newUnit;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: LayoutCard(
                      onTapFunction: () {
                        setState(() {
                          if (selectedUnits != Units.metric) {
                            _changeHeightUnits(Units.metric);
                          }
                        });
                      },
                      color: selectedUnits == Units.metric
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        label: 'Metric',
                        icon: FontAwesomeIcons.globeEurope,
                      ),
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      onTapFunction: () {
                        setState(() {
                          if (selectedUnits != Units.imperial) {
                            _changeHeightUnits(Units.imperial);
                          }
                        });
                      },
                      color: selectedUnits == Units.imperial
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        label: 'Imperial',
                        icon: FontAwesomeIcons.flagUsa,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: LayoutCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Height',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Expanded(
                          child: SliderTheme(
                            data: SliderTheme.of(context).copyWith(
                              activeTrackColor: Colors.white,
                              thumbColor: kBottomContainerColor,
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              overlayColor: Color(0x29EB1555),
                              trackHeight: 1.5,
                            ),
                            child: Slider(
                                value: height.toDouble(),
                                min: selectedUnits == Units.metric
                                    ? minMetricHeight
                                    : minImperialHeight,
                                max: selectedUnits == Units.metric
                                    ? maxMetricHeight
                                    : maxImperialHeight,
                                inactiveColor: Color(0xFF8D8E98),
                                onChanged: (double newHeight) {
                                  setState(() {
                                    height = newHeight;
                                  });
                                }),
                          ),
                        ),
                        Text(
                          height.toInt().toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          selectedUnits == Units.imperial ? 'in' : 'cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                  ],
                ),
                color: kInactiveCardColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: LayoutCard(
                      color: kInactiveCardColor,
                    ),
                  ),
                  Expanded(
                    child: LayoutCard(
                      color: kInactiveCardColor,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: _bottomContainerHeight,
            )
          ],
        ));
  }
}
