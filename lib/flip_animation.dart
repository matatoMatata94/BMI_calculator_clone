import 'package:flutter/material.dart';

class CustomDrawer extends StatefulWidget {

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    var myDrawer = Container(color: Colors.blue);
    var myChild = Container(color: Colors.yellow);
    return Stack(
      children: <Widget>[
        myDrawer,
        myChild,
      Transform.translate(
        offset: Offset(maxSlide + (animationController.value - 1), 0),
        child: Transform(
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateY(math.pi / 2 * (1 - animationController.value)),
          alignment: Alignment.centerRight,
          child: MyDrawer(),
        ),
      );
      ],
    );
  }
}



void flipAnimation() {
  var math;
  Transform.translate(
    offset: Offset(maxSlide + (animationController.value - 1), 0),
    child: Transform(
      transform: Matrix4.identity()
      ..setEntry(3, 2, 0.001)
      ..rotateY(math.pi / 2 * (1 - animationController.value)),
      alignment: Alignment.centerRight,
      child: MyDrawer(),
    ),
  );
}
