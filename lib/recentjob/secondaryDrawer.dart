import 'package:flutter/material.dart';

class SecondaryDrawer extends StatelessWidget {
  const SecondaryDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Icon(Icons.menu),
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
