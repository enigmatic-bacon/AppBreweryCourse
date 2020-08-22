import 'package:bmi_calculator/bmi_brain.dart';
import '../widgets/layout_card.dart';
import '../widgets/switch_screen_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BMIBrain args = ModalRoute.of(context).settings.arguments;

    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: LayoutCard(
                color: kActiveCardColor,
                cardChild: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        args.getResult().toUpperCase() + '\n',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22.0),
                      ),
                      Text(
                        args.getBMI().toStringAsFixed(1) + '\n',
                        style: kNumberTextStyle.copyWith(
                          fontSize: 80.0,
                        ),
                      ),
                      Text(
                        args.getInterpretation(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.w200),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SwitchScreenButton(
              label: 'Re-Calculate',
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
