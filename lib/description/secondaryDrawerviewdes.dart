import '../recentjob/secondaryData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SecondDrawerViewDes extends StatefulWidget {
  final void Function(SecondaryDrawerData selectedMenu, String action) callback;
  final SecondaryDrawerData selectedMenu;
  SecondDrawerViewDes(
      {Key? key, required this.callback, required this.selectedMenu})
      : super(key: key);
  @override
  _SecondDrawerViewDesState createState() => _SecondDrawerViewDesState();
}

class _SecondDrawerViewDesState extends State<SecondDrawerViewDes> {
  // List<SecondaryDrawerData> newMenuDataList = secondaryDataList;
  List<SecondaryDrawerData> newMenuDataList = [];
  void updateDrawerData() {
    newMenuDataList = secondaryDataList;
    newMenuDataList.forEach((element) {
      if (element.id == widget.selectedMenu.id) {
        element.isActivated = true;
      } else {
        element.isActivated = false;
      }
    });
  }

  void initState() {
    super.initState();
    updateDrawerData();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 20, bottom: 10, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "JOB MENU",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.clear,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: newMenuDataList.map((data) {
                  return InkWell(
                    highlightColor: Color(0xfff2f7fc),
                    onHighlightChanged: (isActivated) {
                      setState(() {
                        data.isActivated = isActivated;
                      });
                    },
                    onTap: () {
                      setState(() {
                        // selectedItem = data.id;
                        widget.callback(data, "done");

                        Navigator.pop(context);
                      });
                    },
                    child: Container(
                      color: data.isActivated
                          ? Color(0xfff2f7fc)
                          : Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, left: 25, bottom: 10),
                            child: Row(children: [
                              Icon(
                                data.iconName,
                                size: 18,
                                color: Colors.black45,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Text(
                                  data.name,
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ]),
                          ),
                          Container(
                            padding:
                                EdgeInsets.only(top: 10, right: 10, bottom: 10),
                            child: Text(
                              "0",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 53, 132, 202),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  width: 108,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      color: Color.fromARGB(255, 53, 126, 189)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          CupertinoIcons.cloud_upload,
                          color: Color.fromARGB(255, 255, 255, 255),
                          size: 14,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: InkWell(
                          child: Text(
                            "Upload",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 15),
                  padding: EdgeInsets.all(4.5),
                  width: 108,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                      border:
                          Border.all(color: Color.fromARGB(255, 53, 126, 189)),
                      color: Color.fromARGB(255, 255, 255, 255)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Icon(
                          Icons.qr_code_scanner,
                          color: Color.fromARGB(255, 53, 126, 189),
                          size: 14,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        child: InkWell(
                          child: Text(
                            "Scan",
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Color.fromARGB(255, 53, 126, 189)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
