// import '../customeDrawer/customedrawer.dart';

import '../customeDrawer/drawerlistColors.dart';
import 'package:flutter/material.dart';

class WorkFlowPage extends StatefulWidget {
  const WorkFlowPage({Key? key}) : super(key: key);

  @override
  _WorkFlowPageState createState() => _WorkFlowPageState();
}

class _WorkFlowPageState extends State<WorkFlowPage> {
  var colorName = "selected";
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: drawerDataListColors.map((data) {
            return data.selectedBox == colorName
                ? Container(
                    margin: EdgeInsets.zero,
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          child: ClipPath(
                            clipper: ClipperStack(),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: data.colorName,
                                  border: Border.all(color: data.colorName)
                                  // borderRadius: BorderRadius.all(
                                  //   Radius.circular(5),
                                  // )
                                  ),
                              // width: 200,
                              height: 65,
                              // color: data.colorName,
                              child: Text(
                                data.name,
                                // maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                        Row(children: [
                          Expanded(
                            child: Container(
                              child: Divider(
                                color: data.colorName,
                                height: 50,
                                thickness: 3,
                              ),
                            ),
                          ),
                          Container(
                              width: 20,
                              height: 20,
                              decoration: new BoxDecoration(
                                border: Border.all(color: data.colorName),
                                color: Colors.white,
                                shape: BoxShape.circle,
                              )),
                          Expanded(
                            child: Container(
                              child: Divider(
                                color: data.colorName,
                                height: 50,
                                thickness: 3,
                              ),
                            ),
                          ),
                        ]),
                        Center(child: Text("Move")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            Text("03/15/2021")
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    margin: EdgeInsets.zero,
                    width: 200,
                    height: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          margin: EdgeInsets.zero,
                          child: ClipPath(
                            clipper: ClipperStack(),
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: data.colorName,
                                // borderRadius: BorderRadius.all(
                                //   Radius.circular(5),
                                // )
                              ),
                              // width: 200,
                              height: 65,
                              // color: data.colorName,
                              child: Text(
                                data.name,
                                // maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.visible,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1),
                              ),
                            ),
                          ),
                        ),
                        Row(children: [
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
                                color: data.colorName,
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
                        Center(child: Text("Completed")),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.edit,
                              size: 16,
                            ),
                            Text("03/15/2021")
                          ],
                        ),
                      ],
                    ),
                  );
          }).toList(),
        ),
      ),
    );
  }
}

class ClipperStack extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(5, 0.0);
    // path.lineTo(0.0, 5);
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

    // path.lineTo(size.width, size.height - 20);
    // path.arcToPoint(Offset(0, 5), radius: Radius.circular(5), clockwise: false);

    // path.moveTo(radius, 0.0);
    // path.arcToPoint(Offset(0.0, radius),
    //     clockwise: false, radius: Radius.circular(radius));
    // path.lineTo(0.0, size.height - radius);
    // path.arcToPoint(Offset(radius, size.height),
    //     clockwise: false, radius: Radius.circular(radius));

    path.lineTo(size.width - 20, size.height - 20);
    path.arcToPoint(Offset(size.width, 10),
        clockwise: false, radius: Radius.circular(5));

    path.lineTo(size.width, 5);
    path.arcToPoint(Offset(size.width - 5, 0.0),
        clockwise: false, radius: Radius.circular(5));

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
