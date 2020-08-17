import 'package:flutter/material.dart';
import 'round_icon_button.dart';

class ButtonPairAddSubtract extends StatelessWidget {
  const ButtonPairAddSubtract({this.onMinusClick, this.onPlusClick});

  final Function onMinusClick;
  final Function onPlusClick;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RoundIconButton(
            icon: Icons.remove,
            onPressed: onMinusClick,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: RoundIconButton(
            icon: Icons.add,
            onPressed: onPlusClick,
          ),
        ),
      ],
    );
  }
}
