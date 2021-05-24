import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card_content.dart';
import 'colors_theme.dart';

final inactiveCardColor = blueBMIColors[1].toColor();
final activeCardColor = blueBMIColors[2].toColor();
final bottomBarColor = greenBMIColors[0].toColor();
final bottomBarHeight = 80;

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void switchColors(Color maleColor, Color femaleColor) {
    maleCardColor = femaleColor;
    femaleCardColor = maleColor;
  }

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
                  child: GestureDetector(
                    onTap: () {
                      print('male tap');
                      selectedGender = Gender.male;
                      setState(() {
                        maleCardColor == inactiveCardColor &&
                                femaleCardColor == inactiveCardColor
                            ? maleCardColor = activeCardColor
                            : switchColors(maleCardColor, femaleCardColor);
                      });
                    },
                    child: ReusableCard(
                      cardColor: maleCardColor,
                      cardChild: CardContent(
                        cardIcon: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      selectedGender = Gender.female;
                      print('female tap');
                      setState(() {
                        maleCardColor == inactiveCardColor &&
                                femaleCardColor == inactiveCardColor
                            ? femaleCardColor = activeCardColor
                            : switchColors(maleCardColor, femaleCardColor);
                      });
                    },
                    child: ReusableCard(
                      cardColor: femaleCardColor,
                      cardChild: CardContent(
                        cardIcon: FontAwesomeIcons.venus,
                        cardText: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: inactiveCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: inactiveCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: inactiveCardColor,
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
