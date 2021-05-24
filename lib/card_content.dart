import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({this.cardIcon, this.cardText});

  final cardIcon;
  final cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: iconSize,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          cardText,
          style: kCardTextStyle,
        ),
      ],
    );
  }
}
