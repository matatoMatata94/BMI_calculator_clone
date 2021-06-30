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
        children: [
          Container(
            child: Text('YOUR RESULTS', style: kCardTextStyle,),
          ),
        ],
      ),
    );
  }
}
