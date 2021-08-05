import 'package:flutter/material.dart';

class SecondaryDrawer extends StatefulWidget {
  final void Function(String action) callback;
  const SecondaryDrawer({Key? key, required this.callback}) : super(key: key);

  @override
  _SecondaryDrawerState createState() => _SecondaryDrawerState();
}

class _SecondaryDrawerState extends State<SecondaryDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                widget.callback("openDrawer");
              },
              child: Icon(Icons.menu)),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 0),
            child: Text(
              "JOB: 2009-3840-01",
              style: TextStyle(
                  fontSize: 13, letterSpacing: 0, color: Color(0xff000000)),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            size: 14,
          ),
        ],
      ),
    );
  }
}
