import 'package:flutter/material.dart';

final kInactiveCardColor = blueBMIColors[1].toColor();
final kActiveCardColor = blueBMIColors[2].toColor();
final kBottomBarColor = greenBMIColors[0].toColor();
final kBottomBarHeight = 80;

const double iconSize = 80;
const double textSize = 18;

final kCardTextStyle = TextStyle(
  fontSize: textSize,
  color: greenBMIColors[1].toColor(),
);

const kCardNumberStyle =
    TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold);

const kCardLetterStyle =
    TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold);

const kTitleTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

const kResultTextStyle = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const kBMITextStyle = TextStyle(
  fontSize: 100,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

//Malibu Blue
final blueBMIColors = [
  HSLColor.fromAHSL(1, 205, 0.82, 0.65),
  HSLColor.fromAHSL(1, 205, 0.5, 0.6),
  HSLColor.fromAHSL(1, 205, 0.5, 0.68),
];

//Malachite Green
final greenBMIColors = [
  HSLColor.fromAHSL(1, 160, 0.43, 0.59),
  HSLColor.fromAHSL(1, 160, 0.43, 0.7),
];
