import 'package:flutter/material.dart';
import 'recentpicturelist.dart';

class RecentPhotoFile extends StatefulWidget {
  final String keyToDisplay;
  final String type;
  final String defaultMessage;
  final List<RecentImageName> imageData;

  RecentPhotoFile(
      {Key? key,
      required this.keyToDisplay,
      required this.type,
      required this.defaultMessage,
      required this.imageData})
      : super(key: key);

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
                widget.keyToDisplay,
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 28, 26),
                    letterSpacing: .5,
                    fontSize: 16),
              ),
              Row(children: [
                Visibility(
                  visible: widget.type == "ESTIMATE",
                  child: Container(
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
        widget.imageData.length == 0
            ? Container(
                height: 200,
                child: Align(
                  child: Text(
                    widget.defaultMessage,
                    style: TextStyle(
                      color: Color(0xff666666),
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: widget.imageData.map((data) {
                  return Column(
                    children: [
                      Container(
                        width: 200,
                        height: 200,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(data.url)),
                      ),
                      // Text(data.name)
                    ],
                  );
                }).toList()))
      ],
    );
  }
}
