import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  const IconContent({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 5,
          child: Icon(
            icon,
            size: 60.0,
          ),
        ),
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: kLabelTextStyle,
          ),
        ),
      ],
    );
  }
}
