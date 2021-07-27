import 'package:flutter/material.dart';

class BoxContainer extends StatefulWidget {
  const BoxContainer({Key? key}) : super(key: key);

  @override
  _BoxContainerState createState() => _BoxContainerState();
}

class _BoxContainerState extends State<BoxContainer> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffE5E4E2),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Messages",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffE3F8FB),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Texts",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffFFF5F4),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Appointsments",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffF5F5DB),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Notes",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Color(0xffECDDE2),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.chat,
                    size: 20,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text("1"),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  "Tasks",
                  style: TextStyle(fontSize: 14),
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
