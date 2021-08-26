import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ContactPerson extends StatefulWidget {
  const ContactPerson({Key? key}) : super(key: key);

  @override
  _ContactPersonState createState() => _ContactPersonState();
}

class _ContactPersonState extends State<ContactPerson> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "CUSTOMER PERSON (Same As Customer)",
                  style: TextStyle(
                      color: Color.fromARGB(255, 196, 28, 26),
                      letterSpacing: .5,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, bottom: 20, left: 15, right: 0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Anuj Doing Firebase",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 18,
                            color: Color(0xff666666),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "anuj@gmail.com",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                        ],
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
                        Icons.email,
                        size: 15,
                        color: Color(0xff428ACA),
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.call,
                                  size: 18,
                                  color: Color(0xff666666),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Call:(123) 213-213213",
                                  style: TextStyle(
                                    // color: Color(0xff666666),
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
                                    size: 15,
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
                                    size: 15,
                                    color: Color(0xff428ACA),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                "Phone:(123) 213-213213",
                                style: TextStyle(
                                  // color: Color(0xff666666),
                                  fontSize: 14,
                                ),
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
                                      size: 15,
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
                                      size: 15,
                                      color: Color(0xff428ACA),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.only(left: 30),
                              child: Text(
                                "Phone:(123) 213-213213",
                                style: TextStyle(
                                  // color: Color(0xff666666),
                                  fontSize: 14,
                                ),
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
                                      size: 15,
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
                                      size: 15,
                                      color: Color(0xff428ACA),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
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
                            Icons.room,
                            size: 18,
                            color: Color(0xff666666),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "1554 Ashton Old Road M11 1HJ",
                            style: TextStyle(
                              // color: Color(0xff666666),
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
                            child: Icon(Icons.room,
                                size: 15, color: Color(0xff428ACA)),
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
