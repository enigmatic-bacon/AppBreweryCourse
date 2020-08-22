import 'package:bmi_calculator/height.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../units.dart';

class HeightText extends StatelessWidget {
  const HeightText({
    Key key,
    @required this.height,
  }) : super(key: key);

  final Height height;

  @override
  Widget build(BuildContext context) {
    return _buildText();
  }

  Row _buildText() {
    int unitConversion;
    String majorUnit;
    String minorUnit;

    if (height.heightUnits == Units.metric) {
      unitConversion = 100;
      majorUnit = 'm';
      minorUnit = 'cm';
    } else if (height.heightUnits == Units.imperial) {
      unitConversion = 12;
      majorUnit = 'ft';
      minorUnit = 'in';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        _labelText('Height '),
        _numberText((height.value ~/ unitConversion).toString()),
        _labelText(majorUnit),
        Container(
          width: kNumberTextStyle.fontSize + kGeneralPadding,
          alignment: Alignment.centerRight,
          child:
              _numberText((height.value.toInt() % unitConversion).toString()),
        ),
        _labelText(minorUnit),
      ],
    );
  }

  Text _labelText(String text) {
    return Text(
      text,
      style: kLabelTextStyle,
    );
  }

  Text _numberText(String text) {
    return Text(
      text,
      style: kNumberTextStyle,
    );
  }
}
