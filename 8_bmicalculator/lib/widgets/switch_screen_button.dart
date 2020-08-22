import 'package:flutter/material.dart';
import '../constants.dart';

const double _bottomContainerHeight = 60.0;

class SwitchScreenButton extends StatelessWidget {
  const SwitchScreenButton({@required this.label, this.onTap});

  final String label;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          color: kBottomContainerColor,
        ),
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: _bottomContainerHeight,
        alignment: Alignment.center,
        child: Text(
          label,
          style: kNumberTextStyle.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
