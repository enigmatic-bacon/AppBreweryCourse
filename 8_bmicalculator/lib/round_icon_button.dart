import 'package:flutter/material.dart';
import 'constants.dart';

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
