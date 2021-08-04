import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BoxContainer extends StatefulWidget {
  const BoxContainer({Key? key}) : super(key: key);

  @override
  _BoxContainerState createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 90,
            color: Color(0xffe5e4e2),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(CupertinoIcons.chat_bubble,
                          size: 21, color: Color(0xff888888)),
                      Text(
                        "1",
                        style:
                            TextStyle(fontSize: 21, color: Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 20,
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: Center(
                    child: Text(
                      "Message",
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 90,
            color: Color(0xffe3f8fa),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.mobile_screen_share,
                          size: 21, color: Color(0xff888888)),
                      Text(
                        "1",
                        style:
                            TextStyle(fontSize: 21, color: Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: Center(
                    child: Text(
                      "Texts",
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 90,
            color: Color(0xfffff5f4),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(CupertinoIcons.calendar,
                          size: 21, color: Color(0xff888888)),
                      Text(
                        "1",
                        style:
                            TextStyle(fontSize: 21, color: Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: Center(
                    child: Text(
                      "Appointments",
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 90,
            color: Color(0xffF5F5DC),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.assessment_sharp,
                          size: 21, color: Color(0xff888888)),
                      Text(
                        "1",
                        style:
                            TextStyle(fontSize: 21, color: Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: Center(
                    child: Text(
                      "Notes",
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: 90,
            color: Color(0xffebdde2),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.task, size: 21, color: Color(0xff888888)),
                      Text(
                        "1",
                        style:
                            TextStyle(fontSize: 21, color: Color(0xff888888)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25, bottom: 10),
                  child: Center(
                    child: Text(
                      "Tasks",
                      style: TextStyle(fontSize: 12, color: Color(0xff888888)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
