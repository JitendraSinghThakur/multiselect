import 'dart:ui';

import 'package:flutter/material.dart';

class RecentPhotoFile extends StatefulWidget {
  const RecentPhotoFile({Key? key}) : super(key: key);

  @override
  _RecentPhotoFileState createState() => _RecentPhotoFileState();
}

class _RecentPhotoFileState extends State<RecentPhotoFile> {
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
                    color: Color.fromARGB(255, 196, 28, 26),
                    letterSpacing: .5,
                    fontSize: 16),
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
                      color: Colors.white,
                      letterSpacing: 0,
                      fontSize: 12,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Card(
                    child: Container(
                      width: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('img/images/sss.png')),
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.zero,
                  //     color: Colors.grey,
                  //     width: 200,
                  //     height: 25,
                  //     child: Center(child: Text('File 1'))),
                ],
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      width: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('img/images/sss.png')),
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.zero,
                  //     color: Colors.red,
                  //     width: 200,
                  //     child: Center(child: Text('File 2'))),
                ],
              ),
              Column(
                children: [
                  Card(
                    child: Container(
                      width: 200,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image.asset('img/images/sss.png')),
                    ),
                  ),
                  // Container(
                  //     margin: EdgeInsets.zero,
                  //     color: Colors.red,
                  //     width: 200,
                  //     child: Center(child: Text('File3'))),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
