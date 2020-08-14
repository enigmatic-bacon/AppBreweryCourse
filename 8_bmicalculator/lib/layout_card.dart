import 'package:flutter/material.dart';

class LayoutCard extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  LayoutCard({@required this.color, this.cardChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
