import '../widgets/layout_card.dart';
import '../widgets/switch_screen_button.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: LayoutCard(color: kActiveCardColor),
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
