import '../customeDrawer/drawerlistColors.dart';
import 'package:flutter/material.dart';

class WorkFlowPage extends StatefulWidget {
  const WorkFlowPage({Key? key}) : super(key: key);

  @override
  _WorkFlowPageState createState() => _WorkFlowPageState();
}

class _WorkFlowPageState extends State<WorkFlowPage> {
  int colorName = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: drawerDataListColors.map((data) {
          return Container(
            margin: EdgeInsets.only(top: 20),
            width: 200,
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                    child: CustomPaint(
                  painter: BorderPainter(selectedColor: data),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 65,
                    child: Text(
                      data.name,
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.visible,
                      style: TextStyle(
                          color: data.selectedBox == 1 || data.selectedBox == 2
                              ? Colors.white
                              : Colors.black,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1),
                    ),
                  ),
                )),
                Row(children: [
                  Expanded(
                    child: Container(
                      child: Divider(
                        color: data.selectedBox != 2
                            ? Color.fromARGB(255, 219, 219, 219)
                            : data.colorName,
                        height: 50,
                        thickness: 4,
                      ),
                    ),
                  ),
                  Container(
                      width: 20,
                      height: 20,
                      decoration: new BoxDecoration(
                        border: Border.all(
                          color: data.selectedBox == 1
                              ? data.colorName
                              : data.selectedBox == 2
                                  ? data.colorName
                                  : Colors.grey,
                        ),
                        color: data.selectedBox == 1
                            ? data.colorName
                            : data.selectedBox == 2
                                ? Colors.white
                                : Colors.white,
                        shape: BoxShape.circle,
                      )),
                  Expanded(
                    child: Container(
                      child: Divider(
                        color: data.selectedBox != 2
                            ? Color.fromARGB(255, 219, 219, 219)
                            : data.colorName,
                        height: 50,
                        thickness: 4,
                      ),
                    ),
                  ),
                ]),
                Center(
                    child: Text(data.selectedBox == 1
                        ? "Completed"
                        : data.selectedBox == 2
                            ? "Move"
                            : "")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    data.selectedBox == 1
                        ? Icon(
                            Icons.edit,
                            size: 16,
                          )
                        : Text(""),
                    data.selectedBox == 1 ? Text("03/15/2021") : Text("")
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  final DrawerListColors selectedColor;
  BorderPainter({
    required this.selectedColor,
  });
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = selectedColor.selectedBox == 1
          ? PaintingStyle.fill
          : selectedColor.selectedBox == 2
              ? PaintingStyle.fill
              : PaintingStyle.stroke
      ..strokeWidth = 1.0
      ..color = selectedColor.selectedBox == 1
          ? selectedColor.colorName
          : selectedColor.selectedBox == 2
              ? selectedColor.colorName
              : Colors.grey;
    Path path = Path();
    path.moveTo(5, 0.0);
    path.arcToPoint(Offset(0, 5), radius: Radius.circular(5), clockwise: false);

    path.lineTo(0.0, size.height - 25);

    path.arcToPoint(Offset(5, size.height - 20),
        radius: Radius.circular(5), clockwise: false);

    path.lineTo((size.width / 2) - 10, size.height - 20);
    path.lineTo(size.width / 2, size.height);

    path.lineTo(
      (size.width / 2) + 10,
      size.height - 20,
    );

    path.lineTo(size.width - 5, size.height - 20);
    path.arcToPoint(Offset(size.width, size.height - 25),
        clockwise: false, radius: Radius.circular(5));

    path.lineTo(size.width, 5);
    path.arcToPoint(Offset(size.width - 5, 0.0),
        clockwise: false, radius: Radius.circular(5));

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
