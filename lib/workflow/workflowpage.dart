// import '../customeDrawer/customedrawer.dart';
import 'package:flutter/material.dart';

class WorkFlowPage extends StatefulWidget {
  const WorkFlowPage({Key? key}) : super(key: key);

  @override
  _WorkFlowPageState createState() => _WorkFlowPageState();
}

class _WorkFlowPageState extends State<WorkFlowPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: true,
        title: Center(
          child: Text("WorkFlow"),
        ),
      ),
      // endDrawer: CustomeDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 20),
                    width: 155,
                    height: 55,
                    child: Center(
                        child: Text(
                      "Stage 1",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          fontSize: 20),
                    )),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: new BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        )),
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Completed"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Text("03/15/2021")
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 20),
                    width: 155,
                    height: 55,
                    child: Center(
                        child: Text(
                      "Stage 2",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          fontSize: 20),
                    )),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: new BoxDecoration(
                          color: Colors.amberAccent,
                          shape: BoxShape.circle,
                        )),
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Completed"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Text("03/15/2021")
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 20),
                    width: 155,
                    height: 55,
                    child: Center(
                        child: Text(
                      "Stage 3",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          fontSize: 20),
                    )),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: new BoxDecoration(
                          color: Colors.greenAccent,
                          shape: BoxShape.circle,
                        )),
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Completed"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Text("03/15/2021")
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 20),
                    width: 155,
                    height: 55,
                    child: Center(
                        child: Text(
                      "Stage 4",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          fontSize: 20),
                    )),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: new BoxDecoration(
                          color: Colors.blueAccent,
                          shape: BoxShape.circle,
                        )),
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Completed"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Text("03/15/2021")
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    margin: EdgeInsets.only(top: 20),
                    width: 155,
                    height: 55,
                    child: Center(
                        child: Text(
                      "Stage 5",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0,
                          fontSize: 20),
                    )),
                  ),
                  Row(children: <Widget>[
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                    Container(
                        width: 20,
                        height: 20,
                        decoration: new BoxDecoration(
                          color: Colors.brown,
                          shape: BoxShape.circle,
                        )),
                    Expanded(
                      child: Container(
                        child: Divider(
                          color: Colors.grey,
                          height: 50,
                          thickness: 3,
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("Completed"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.edit,
                        size: 16,
                      ),
                      Text("03/15/2021")
                    ],
                  )
                ],
              ),
            ),
            // Container(
            //   width: 200,
            //   height: 200,
            //   child: Stack(
            //     children: <Widget>[
            //       Positioned(
            //         child: Container(
            //           decoration: BoxDecoration(
            //               color: Colors.green,
            //               borderRadius: BorderRadius.all(Radius.circular(5))),
            //           height: 55,
            //           width: 155,
            //           margin: EdgeInsets.only(top: 20),
            //           child: Center(
            //             child: Text(
            //               'Green',
            //               style: TextStyle(color: Colors.white, fontSize: 20),
            //             ),
            //           ),
            //         ),
            //       ),
            //       Positioned(
            //         top: 60,
            //         left: 60,
            //         width: 40,
            //         height: 40,
            //         child: Transform.rotate(
            //           angle: 1,
            //           child: CustomPaint(
            //             painter: TrianglePainter(),
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
