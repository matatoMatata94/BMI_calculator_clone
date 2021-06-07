import 'package:flutter/material.dart';

class OutputPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Container(
        child: Center(
          child: Text('Output Page'),
        ),
      ),
    );
  }
}
