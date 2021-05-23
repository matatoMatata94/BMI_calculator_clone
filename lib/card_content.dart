import 'package:flutter/material.dart';

import 'colors_theme.dart';

const double iconSize = 80;
const double textSize = 18;

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
          style: TextStyle(
            fontSize: textSize,
            color: greenBMIColors[1].toColor(),
          ),
        ),
      ],
    );
  }
}
