import 'package:flutter/material.dart';
import 'drawerlist.dart';
import 'drawerlistColors.dart';
import 'drawerstatic.dart';

class CustomeDrawer extends StatefulWidget {
  @override
  _CustomeDrawerState createState() => _CustomeDrawerState();
}

class _CustomeDrawerState extends State<CustomeDrawer> {
  TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .7,
      child: Drawer(
        child: Column(
          children: [
            Container(
              height: 130,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("img/images/drawer.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    // width: W,
                    padding: EdgeInsets.all(10),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: CircleAvatar(
                            radius: 25,
                            backgroundImage:
                                AssetImage(("img/images/jitendra.jpeg")),
                          ),
                        ),
                        Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Jitendra Singh",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  letterSpacing: 1,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "jitendrasinghcs1993@gmail.com",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    letterSpacing: 0),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle: TextStyle(
                            fontSize: 17.0,
                            color: Colors.white,
                            letterSpacing: 1),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 18,
                          color: Colors.white,
                        ),
                        suffixIcon: InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 28,
                          ),
                        )),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: drawerDataList.map((data) {
                        return Container(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Row(children: [
                            Icon(
                              data.iconName,
                              size: 16,
                              color: Colors.black45,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13.0),
                              child: Text(
                                data.name,
                                style: TextStyle(fontSize: 13),
                              ),
                            ),
                          ]),
                        );
                      }).toList(),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 18.0, top: 10, bottom: 10),
                        child: Text(
                          "WorkFlow",
                          style: TextStyle(fontSize: 18, letterSpacing: 0),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: drawerDataListColors.map((data) {
                        return Container(
                          height: 30,
                          margin: EdgeInsets.only(bottom: 3),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border(
                              left: BorderSide(color: data.colorName, width: 2),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 18.0, right: 15),
                                child: Text(data.name,
                                    style: TextStyle(fontSize: 13)),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                padding: EdgeInsets.all(4),
                                decoration: BoxDecoration(
                                    color: data.colorName,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Text(
                                  "10",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                    Divider(
                      height: 10,
                      thickness: 2,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: drawerDataListStatic.map((data) {
                        return Container(
                          padding: EdgeInsets.only(top: 10, left: 15),
                          child: Row(children: [
                            Row(
                              children: [
                                Icon(
                                  data.iconName,
                                  size: 16,
                                  color: Colors.black45,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Text(
                                    data.name,
                                    style: TextStyle(fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),

            // Expanded(
            //   child: ListView(
            //     padding: EdgeInsets.zero,
            //     shrinkWrap: true,
            //     scrollDirection: Axis.vertical,
            //     children: drawerDataList.map((data) {
            //       return data.name == "Divider"
            //           ? Divider(
            //               height: 10,
            //               thickness: 2,
            //             )
            //           : ListTile(
            //               // contentPadding: EdgeInsets.only(
            //               //     top: 0, bottom: 0, left: 12, right: 0),
            //               // contentPadding: EdgeInsets.symmetric(
            //               //     vertical: -100.0, horizontal: 10.0),
            //               visualDensity:
            //                   VisualDensity(horizontal: 0, vertical: -4),
            //               dense: true,
            //               leading: Icon(
            //                 data.iconName,
            //                 size: 16,
            //               ),
            //               title: Transform.translate(
            //                 offset: Offset(-22, 0),
            //                 child: Text(
            //                   data.name,
            //                   style: TextStyle(fontSize: 12),
            //                 ),
            //               ),
            //             );
            //     }).toList(),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
