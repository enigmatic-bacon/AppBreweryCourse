import 'package:bmi_calculator/height.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'units.dart';

class HeightText extends StatelessWidget {
  const HeightText({
    Key key,
    @required this.height,
  }) : super(key: key);

  final Height height;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          height.heightUnits == Units.metric
              ? (height.value ~/ 100).toString()
              : (height.value ~/ 12).toString(),
          style: kNumberTextStyle,
        ),
        Text(
          height.heightUnits == Units.metric ? 'm' : 'ft',
          style: kLabelTextStyle,
        ),
        Text(
          height.heightUnits == Units.metric
              ? (height.value.toInt() % 100).toString()
              : (height.value.toInt() % 12).toString(),
          style: kNumberTextStyle,
        ),
        Text(
          height.heightUnits == Units.metric ? 'cm' : 'in',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
