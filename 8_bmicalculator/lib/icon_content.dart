import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  final String label;
  final IconData icon;
  const IconContent({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: 40.0,
          ),
          Text(
            label,
            style: kLabelTextStyle,
          ),
        ],
      ),
    );
  }
}
