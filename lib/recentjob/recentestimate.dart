import 'package:flutter/material.dart';

class RecentEstimate extends StatefulWidget {
  const RecentEstimate({Key? key}) : super(key: key);

  @override
  _RecentEstimateState createState() => _RecentEstimateState();
}

class _RecentEstimateState extends State<RecentEstimate> {
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
                "RECENT ESTIMATES",
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 28, 26),
                    letterSpacing: .5,
                    fontSize: 16),
              ),
              Row(children: [
                Container(
                  padding:
                      EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 102, 102, 102),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    "1,500.00",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: .5, fontSize: 12),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding:
                      EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 196, 28, 26),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    "VIEW ALL",
                    style: TextStyle(
                         color: Colors.white,
                      letterSpacing: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Container(
          height: 200,
          child: Align(
            child: Text(
              "NO estimate found",
              style: TextStyle(
                color: Color(0xff666666),
                fontSize: 18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
