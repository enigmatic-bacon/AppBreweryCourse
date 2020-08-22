import 'package:flutter/material.dart';
import '../constants.dart';
import '../units.dart';
import '../weight.dart';

class WeightText extends StatelessWidget {
  const WeightText({
    Key key,
    @required this.weight,
  }) : super(key: key);

  final Weight weight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Weight',
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              weight.value.toInt().toString(),
              style: kNumberTextStyle,
            ),
            weight.weightUnits == Units.metric
                ? Text(
                    'kg',
                    style: kLabelTextStyle,
                  )
                : Text(
                    'lbs',
                    style: kLabelTextStyle,
                  ),
          ],
        ),
      ],
    );
  }
}
