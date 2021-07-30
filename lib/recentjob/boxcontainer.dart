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
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100,
              color: Color(0xffe5e4e2),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(CupertinoIcons.chat_bubble,
                            size: 24, color: Color(0xff888888)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .001,
                        ),
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
                        "Message1",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Color(0xffe3f8fa),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(CupertinoIcons.chat_bubble,
                            size: 24, color: Color(0xff888888)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .001,
                        ),
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
                        "Message2",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Color(0xfffff5f4),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(CupertinoIcons.chat_bubble,
                            size: 24, color: Color(0xff888888)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .001,
                        ),
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
                        "Message3",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Color(0xffF5F5DC),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(CupertinoIcons.chat_bubble,
                            size: 24, color: Color(0xff888888)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .001,
                        ),
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
                        "Message4",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100,
              color: Color(0xffebdde2),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(CupertinoIcons.chat_bubble,
                            size: 24, color: Color(0xff888888)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .001,
                        ),
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
                        "Message5",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff888888)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
