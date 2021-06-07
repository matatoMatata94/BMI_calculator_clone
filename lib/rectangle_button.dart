import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RectangleButton extends StatelessWidget {
  RectangleButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 50.0,
      ),
      shape: BeveledRectangleBorder(),
      fillColor: kBottomBarColor,
    );
  }
}
