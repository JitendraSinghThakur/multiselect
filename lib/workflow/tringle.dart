import 'package:flutter/material.dart';

class StackAndPositionedDemo extends StatefulWidget {
  @override
  _StackAndPositionedDemoState createState() => _StackAndPositionedDemoState();
}

class _StackAndPositionedDemoState extends State<StackAndPositionedDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack & Positioned Widget'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 30,
              left: 30,
              height: 55,
              width: 155,
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Green',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 65,
              left: 90,
              width: 40,
              height: 40,
              child: Transform.rotate(
                angle: 1,
                child: CustomPaint(
                  painter: TrianglePainter(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 2
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width * 1 / 2, size.height * 1 / 4);
    path.lineTo(size.width * 1.1 / 6, size.height * 3 / 4);
    path.lineTo(size.width * 5 / 6, size.height * 3 / 4);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
