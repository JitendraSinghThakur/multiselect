import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Customer extends StatefulWidget {
  const Customer({Key? key}) : super(key: key);

  @override
  _CustomerState createState() => _CustomerState();
}

class _CustomerState extends State<Customer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 15, left: 10, right: 10),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CUSTOMER",
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
                    "EMAIL HISTORY",
                    style: TextStyle(
                        color: Colors.white,
                        letterSpacing: .5,
                        fontSize: 11,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 14,
                      color: Color(0xff666666),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Test Customer",
                      style: TextStyle(
                        color: Color(0xff666666),
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
              // Divider(
              //   height: 0,
              //   thickness: 2,
              // ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.call,
                            size: 14,
                            color: Color(0xff666666),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Home:(410) 000-000",
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.blue,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              CupertinoIcons.chat_bubble_fill,
                              size: 14,
                              color: Color(0xff428ACA),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xff428ACA),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.call,
                              size: 14,
                              color: Color(0xff428ACA),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Divider(
              //   height: 0,
              //   thickness: 2,
              // ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            CupertinoIcons.arrowshape_turn_up_right_fill,
                            size: 14,
                            color: Color(0xff666666),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Share Customer Web Page",
                            style: TextStyle(
                              color: Color(0xff666666),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xff428ACA),
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                                CupertinoIcons.arrowshape_turn_up_right_fill,
                                size: 14,
                                color: Color(0xff428ACA)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
