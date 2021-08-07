import '../customeDrawer/drawerlistColors.dart';
import 'package:flutter/material.dart';

class WorkFlowPage extends StatefulWidget {
  const WorkFlowPage({Key? key}) : super(key: key);

  @override
  _WorkFlowPageState createState() => _WorkFlowPageState();
}

class _WorkFlowPageState extends State<WorkFlowPage> {
  int colorName = 1;
  int maxLetterLenth = 0;
  double maxWidth = 200;
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < drawerDataListColors.length; i++) {
      if (drawerDataListColors[i].name.length > maxLetterLenth) {
        maxLetterLenth = drawerDataListColors[i].name.length;
      }
    }
    if (maxLetterLenth > 20) maxWidth = maxLetterLenth * 10;

    return Container(
      child: Scrollbar(
        hoverThickness: 5,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: drawerDataListColors.map((data) {
              return Container(
                margin: EdgeInsets.only(top: 15, bottom: 24),
                width: maxWidth,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                        width: maxWidth - 10,
                        child: CustomPaint(
                          painter: BorderPainter(selectedColor: data),
                          child: Container(
                            padding: EdgeInsets.only(top: 12),
                            height: 65,
                            child: Text(
                              data.name,
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: data.selectedBox == 1 ||
                                          data.selectedBox == 2
                                      ? Colors.white
                                      : Color(0xff666666),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
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
                            height: 30,
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
                            height: 30,
                            thickness: 4,
                          ),
                        ),
                      ),
                    ]),
                    data.selectedBox == 1
                        ? Column(
                            children: [
                              Container(
                                child: Text(
                                  "Completed",
                                  style: TextStyle(
                                      color: Color(0xff6a6666),
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                              ),
                              Container(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.edit,
                                        size: 14,
                                        color: Color(0xff6a6666),
                                      ),
                                      Text(
                                        "03/03/2021",
                                        style: TextStyle(
                                            color: Color(0xff6a6666),
                                            fontWeight: FontWeight.w400,
                                            fontSize: 14),
                                      ),
                                    ]),
                              ),
                            ],
                          )
                        : data.selectedBox == 2
                            ? Column(
                                children: [
                                  Container(
                                    child: Text(
                                      "03/10/2021",
                                      style: TextStyle(
                                          color: Color(0xff6a6666),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width: 2,
                                        height: 2,
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 10,
                                            right: 10,
                                            bottom: 1.5,
                                            top: 0),
                                        margin: EdgeInsets.only(top: 2),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                          color: Color(0xff357ebd),
                                        ),
                                        child: InkWell(
                                          child: Text(
                                            "Move",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(3),
                                    child: Text(""),
                                  ),
                                  Container(
                                    child: Text(""),
                                  )
                                ],
                              )
                  ],
                ),
              );
            }).toList(),
          ),
        ),
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
