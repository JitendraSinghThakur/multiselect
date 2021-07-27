import 'package:flutter/material.dart';

class JobOverview extends StatefulWidget {
  const JobOverview({Key? key}) : super(key: key);

  @override
  _JobOverviewState createState() => _JobOverviewState();
}

class _JobOverviewState extends State<JobOverview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(6),
          color: Color(0xffCCCCCC),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "JOB OVERVIEW",
                style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w300,
                    letterSpacing: .5),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "VIEW MORE",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: .5,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1),
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("XZSx",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1)))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Color(0xffCCCCCC), width: 2),
              bottom: BorderSide(color: Color(0xffCCCCCC), width: 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.blue,
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      "Added in Progress Board(4)",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
