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
          padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "JOB OVERVIEW",
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 28, 26),
                    letterSpacing: .5,
                    fontSize: 13),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 196, 28, 26),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "VIEW MORE",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0,
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Description",
                      style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1),
                    ),
                  )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text("xyhx",
                      style: TextStyle(
                          color: Color(0xff444444),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1)))
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Color.fromARGB(206, 206, 206, 255), width: 2),
              // bottom: BorderSide(
              //     color: Color.fromARGB(206, 206, 206, 255), width: 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(255, 60, 135, 171),
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
