import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onTapFunction;
  LayoutCard({@required this.color, this.cardChild, this.onTapFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapFunction,
      child: Container(
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
