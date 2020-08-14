import 'package:flutter/material.dart';
import 'package:bmi_calculator/layout_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: _buildLayoudCardRow(),
            ),
            Expanded(
              child: LayoutCard(),
            ),
            Expanded(
              child: _buildLayoudCardRow(),
            ),
          ],
        ));
  }

  Row _buildLayoudCardRow() {
    return Row(
      children: [
        Expanded(child: LayoutCard()),
        Expanded(child: LayoutCard()),
      ],
    );
  }
}
