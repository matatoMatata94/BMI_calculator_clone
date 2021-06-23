import 'package:bmi_calculator/colors_theme.dart';
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
