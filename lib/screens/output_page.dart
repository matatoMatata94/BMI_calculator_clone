import 'package:bmi_calculator/components/rectangle_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text(
                'YOUR RESULTS',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              child: ReusableCard(
                cardColor: kInactiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Result',
                      style: kResultTextStyle,
                    ),
                    Text(
                      '18.3',
                      style: kBMITextStyle,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: RectangleButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Re-Calculate',
                style: kCardLetterStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
