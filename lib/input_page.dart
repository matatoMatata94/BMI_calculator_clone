import 'package:flutter/material.dart';

import 'colors_theme.dart';

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
                    cardColor: blueBMIColors[1].toColor(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: blueBMIColors[1].toColor(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              cardColor: blueBMIColors[1].toColor(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    cardColor: blueBMIColors[1].toColor(),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    cardColor: blueBMIColors[1].toColor(),
                  ),
                ),
              ],
            ),
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
