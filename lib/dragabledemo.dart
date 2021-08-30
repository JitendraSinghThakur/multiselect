import 'package:flutter/material.dart';

class DemodragablePage extends StatefulWidget {
  const DemodragablePage({Key? key}) : super(key: key);

  @override
  _DemodragablePageState createState() => _DemodragablePageState();
}

class _DemodragablePageState extends State<DemodragablePage> {
  double width = 60, height = 60;
  late Offset position;

  @override
  void initState() {
    super.initState();
    position = Offset(20, height - 10);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: position.dx,
          top: position.dy - height + 20,
          child: Draggable(
            child: Container(
              width: width,
              height: height,
              child: Center(child: Image.asset("img/images/stopwatch.png")),
            ),
            feedback: Container(
              child: Center(child: Image.asset("img/images/stopwatch.png")),
              width: width,
              height: height,
            ),
            childWhenDragging: Container(),
            onDraggableCanceled: (Velocity velocity, Offset offset) {
              setState(() => position = offset);
            },
          ),
        ),
      ],
    );
  }
}
