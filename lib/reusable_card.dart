import 'package:flutter/cupertino.dart';

import 'colors_theme.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.cardColor, this.cardChild});
  final Widget cardChild;
  final Color cardColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: blueBMIColors[1].toColor(),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
