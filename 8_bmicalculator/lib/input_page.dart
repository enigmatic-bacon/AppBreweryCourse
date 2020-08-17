import 'package:bmi_calculator/height.dart';
import 'package:bmi_calculator/weight.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'height_text.dart';
import 'weight_text.dart';
import 'icon_content.dart';
import 'units.dart';
import 'constants.dart';

const double _bottomContainerHeight = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Height height = Height(value: 180, heightUnits: Units.metric);
  Weight weight = Weight(value: 60, weightUnits: Units.metric);

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
            Row(
              children: [
                Expanded(
                  child: LayoutCard(
                    onTapFunction: () {
                      setState(() {
                        height.changeHeightUnits(Units.metric);
                        weight.changeWeightUnits(Units.metric);
                      });
                    },
                    color: height.heightUnits == Units.metric
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
                        height.changeHeightUnits(Units.imperial);
                        weight.changeWeightUnits(Units.imperial);
                      });
                    },
                    color: height.heightUnits == Units.imperial
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
            Expanded(
              child: LayoutCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HeightText(
                      height: height,
                    ),
                    SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xFF8D8E98),
                        activeTrackColor: Colors.white,
                        thumbColor: kBottomContainerColor,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                        overlayColor: Color(0x29EB1555),
                        trackHeight: 1.5,
                      ),
                      child: Slider(
                          value: height.value,
                          min: height.heightUnits == Units.metric
                              ? minMetricHeight
                              : minImperialHeight,
                          max: height.heightUnits == Units.metric
                              ? maxMetricHeight
                              : maxImperialHeight,
                          onChanged: (double newHeight) {
                            setState(() {
                              height.value = newHeight;
                            });
                          }),
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
                      cardChild: Column(
                        children: [
                          WeightText(weight: weight),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: RoundIconButton(
                                  icon: Icons.remove,
                                  onPressed: () {
                                    setState(() {
                                      weight.value--;
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: RoundIconButton(
                                  icon: Icons.add,
                                  onPressed: () {
                                    setState(() {
                                      weight.value++;
                                    });
                                  },
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
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

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  const RoundIconButton({this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      fillColor: kBottomContainerColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 45.0,
        height: 45.0,
      ),
    );
  }
}
