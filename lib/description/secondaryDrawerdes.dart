import 'package:flutter/material.dart';

class SecondaryDrawerDes extends StatefulWidget {
  final void Function(String action) callback;
  const SecondaryDrawerDes({Key? key, required this.callback})
      : super(key: key);

  @override
  _SecondaryDrawerDesState createState() => _SecondaryDrawerDesState();
}

class _SecondaryDrawerDesState extends State<SecondaryDrawerDes> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
      color: Color.fromARGB(255, 238, 238, 238),
      child: Row(
        children: [
          InkWell(
              onTap: () {
                widget.callback("openDrawer");
              },
              child: Icon(Icons.menu)),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 0),
            child: Text(
              "JOB DESCRIPTION",
              style: TextStyle(
                  fontSize: 13, color: Color.fromARGB(255, 200, 27, 27)),
            ),
          ),
        ],
      ),
    );
  }
}
