import 'package:flutter/material.dart';

class LinePaintPage extends StatefulWidget {
  LinePaintPage({Key? key}) : super(key: key);
  @override
  _LinePaintPageState createState() => _LinePaintPageState();
}

class _LinePaintPageState extends State<LinePaintPage> {
  double padValue = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container as a Circle"),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 100),
          child: CustomPaint(
            painter: CurvePainter(),
            child: Text(
              "Blade Runner",
            ),
          ),
        ),
      ),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.amber;
    paint.strokeWidth = 3;

    canvas.drawLine(
      Offset(0, size.height / 16),
      Offset(size.width, size.height / 16),
      paint,
    );

    paint.color = Colors.blue;
    paint.style = PaintingStyle.fill;
    canvas.drawCircle(
        Offset(size.width / 16, size.height / 16), size.width / 32, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
