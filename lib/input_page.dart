import 'package:flutter/material.dart';

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

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor});
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: blueBMIColors[1].toColor(),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
