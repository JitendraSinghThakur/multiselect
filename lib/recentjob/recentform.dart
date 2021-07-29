import 'package:flutter/material.dart';

class RecentForms extends StatefulWidget {
  const RecentForms({Key? key}) : super(key: key);

  @override
  _RecentFormsState createState() => _RecentFormsState();
}

class _RecentFormsState extends State<RecentForms> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(6),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "RECENT PHOTOS & DOCUMENTS",
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 28, 26), letterSpacing: .5),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 196, 28, 26),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "VIEW ALL",
                  style: TextStyle(
                      color: Colors.white, letterSpacing: .5, fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 200,
          child: Align(
            child: Text("NO form/proposal found"),
          ),
        ),
      ],
    );
  }
}
