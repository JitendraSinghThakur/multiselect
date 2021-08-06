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

  int colorchange = 0;
  int groupSelected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
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
                                  fontSize: 17,
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
                        return InkWell(
                          onTap: () {
                            setState(() {
                              colorchange = data.id;
                              groupSelected = 1;
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            child: Row(children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                padding: EdgeInsets.only(
                                    top: 10, left: 15, bottom: 10),
                                margin: EdgeInsets.only(bottom: 2),
                                color:
                                    groupSelected == 1 && colorchange == data.id
                                        ? Colors.blue
                                        : Colors.white,
                                child: Row(
                                  children: [
                                    Icon(
                                      data.iconName,
                                      size: 15,
                                      color: groupSelected == 1 &&
                                              colorchange == data.id
                                          ? Colors.white
                                          : Colors.black45,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 15.0),
                                      child: Text(
                                        data.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: groupSelected == 1 &&
                                                  colorchange == data.id
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ]),
                          ),
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
                            left: 15.0, top: 7, bottom: 7),
                        child: Text(
                          "WorkFlow",
                          style: TextStyle(fontSize: 17),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: drawerDataListColors.map((data) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              colorchange = data.id;
                              groupSelected = 2;
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            height: 37,
                            margin: EdgeInsets.only(bottom: 3),
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              border: Border(
                                left:
                                    BorderSide(color: data.colorName, width: 2),
                              ),
                              color:
                                  groupSelected == 2 && colorchange == data.id
                                      ? Colors.blue
                                      : Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 15.0, right: 15),
                                  child: Text(data.name,
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: groupSelected == 2 &&
                                                  colorchange == data.id
                                              ? Colors.white
                                              : Colors.black)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: data.colorName,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(50))),
                                  child: Text(
                                    "10",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
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
                        return InkWell(
                          onTap: () {
                            setState(() {
                              colorchange = data.id;
                              groupSelected = 3;
                              Navigator.pop(context);
                            });
                          },
                          child: Container(
                            child: Row(children: [
                              Container(
                                width: MediaQuery.of(context).size.width - 100,
                                padding: EdgeInsets.only(
                                    top: 10, left: 15, bottom: 10),
                                color:
                                    groupSelected == 3 && colorchange == data.id
                                        ? Colors.blue
                                        : Colors.white,
                                child: Row(
                                  children: [
                                    Icon(
                                      data.iconName,
                                      size: 15,
                                      color: groupSelected == 3 &&
                                              colorchange == data.id
                                          ? Colors.white
                                          : Colors.black45,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 13.0),
                                      child: Text(
                                        data.name,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: groupSelected == 3 &&
                                                  colorchange == data.id
                                              ? Colors.white
                                              : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
