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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'img/images/sss.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(top: 160, left: 90, child: Text("file 1"))
              ],
            ),
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'img/images/sss.png',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(top: 160, left: 90, child: Text("file 2"))
              ],
            ),
          ],
        ),
      ],
    );
  }
}
