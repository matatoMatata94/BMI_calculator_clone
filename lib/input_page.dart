import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';
import 'colors_theme.dart';

final cardColor = blueBMIColors[1].toColor();
final bottomBarColor = greenBMIColors[0].toColor();
final bottomBarHeight = 80;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: cardColor,
                    cardChild: CardContent(
                      cardIcon: FontAwesomeIcons.mars,
                      cardText: 'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: cardColor,
                    cardChild: CardContent(
                      cardIcon: FontAwesomeIcons.venus,
                      cardText: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: cardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: cardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: cardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: greenBMIColors[0].toColor(),
            height: 80,
          ),
        ],
      ),
    );
  }
}
