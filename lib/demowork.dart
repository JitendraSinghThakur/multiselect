import 'package:demoapp/multiselect/userDatalist.dart';
import 'package:flutter/material.dart';
import 'multiselect/groupDatalist.dart';
// import 'dart:convert';
// import 'package:flutter/services.dart' as rootBundle;

class DemoselectModel extends StatefulWidget {
  final void Function(List<Userlist> selectedData, String action) callback;
  final Future<List<Userlist>> mainList;
  final Future<List<GroupList>> groupLists;
  final List<Userlist> selected;
  final Userlist? unassignedValue;
  DemoselectModel({
    Key? key,
    required this.mainList,
    required this.groupLists,
    required this.selected,
    required this.callback,
    required String keyToDisplay,
    required String type,
    required bool canShowProfilePic,
    this.unassignedValue,
  }) : super(key: key);

  @override
  _DemoselectModelState createState() => _DemoselectModelState();
}

class _DemoselectModelState extends State<DemoselectModel> {
  double _animatedHeight = 0.0;
  bool isChecked = false;

  int count = 0;
  bool user1 = false;
  bool user2 = false;

  bool groupIconchange = false;
  int checkedCount = 0;
  int totalCount = 0;

  Color chechIcons = const Color(0xF2347EBD);

  Color textColor = const Color(0xF2101010);

  Color cancelColor = const Color.fromARGB(255, 84, 98, 125);

  void onTapChecked(List<Userlist> itemsAll, BuildContext context) {
    actualDataList.then((value) => {value = itemsAll});
    checkedCount = itemsAll.where((element) => element.checked as bool).length;
    count = checkedCount;
    isChecked = count == itemsAll.length;
  }

  onTapGroupChecked(List<GroupList> itemsGroupAll, BuildContext context) {
    List<int> selectedGroup = [];
    itemsGroupAll.forEach((elementgrp) {
      if (elementgrp.checked as bool) {
        selectedGroup.add(elementgrp.id as int);
      }
    });

    newDataList.then((value) => {
          value.forEach((element) {
            if (selectedGroup.length > 0) {
              if (element.tags != null) {
                List<Tags> hasGroupCheck = element.tags!
                    .where((eleTag) => selectedGroup.contains(eleTag.id as int))
                    .toList();
                element.visible = hasGroupCheck.length > 0;
              } else {
                element.visible = false;
              }
            } else {
              element.visible = true;
            }
          })
        });
    return newDataList;
  }

  void selectAll() {
    newDataList.then((value) => {
          value.forEach((element) {
            element.checked = isChecked;
          })
        });
    count = 0;
    actualDataList.then((value) => value.forEach((element) {
          element.checked = isChecked;
          if (element.checked as bool) count++;
        }));
    newDataList.then((value) => {
          checkedCount =
              value.where((element) => element.checked as bool).length
        });
  }

  TextEditingController _textController = TextEditingController();

  void clearText() {
    _textController.clear();
    var list = onItemChanged(_textController.value.toString(), newDataList);
    setState(() {
      newDataList = list;
    });
    user1 = false;
    user2 = false;
  }

  late Future<List<Userlist>> newDataList;
  late Future<List<Userlist>> actualDataList;

  onItemChanged(String txt, Future<List<Userlist>> listSearch) {
    user1 = true;
    user2 = txt.trim().length > 0 ? true : false;
    return listSearch.then((value) => value
        .where((managename) => managename.fullName!.toLowerCase().contains(txt))
        .toList());
  }

  void submit(String action) {
    if (action == "cancel") {
      widget.callback([], action);
      return;
    }

    actualDataList.then((value) => {
          widget.callback(
              value.where((element) => element.checked as bool).toList(),
              action)
        });
  }

  getSelectedCount() {
    widget.mainList.then((value) => {
          checkedCount =
              value.where((element) => element.checked as bool).length
        });
    return checkedCount;
  }

  getTotalCount() {
    widget.mainList.then((value) => {totalCount = value.length});
    return totalCount;
  }

  selectedValue() {
    widget.mainList.then((value) => {
          if (value.where((element) => element.id == -1).length == 0)
            {
              value.insert(0, widget.unassignedValue as Userlist),
            }
        });

    widget.mainList.then((value) => {
          value.forEach((element2) {
            element2.checked = false;
            if (widget.selected
                    .where((element) => element.id == element2.id)
                    .length >
                0) {
              element2.checked = true;
            }
          })
        });
    // widget.mainList.sort((a, b) {
    //   if (b.checked) {
    //     return 1;
    //   }
    //   return -1;
    // });

    widget.mainList.then((value) => {
          setState(() => {
                isChecked = value.length == widget.selected.length,
                count = widget.selected.length
              })
        });
  }

  void initState() {
    super.initState();
    selectedValue();
    getTotalCount();
    getSelectedCount();
  }

  @override
  Widget build(BuildContext context) {
    newDataList = widget.mainList;
    actualDataList = widget.mainList;
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.only(bottom: 35, top: 75),
          contentPadding:
              EdgeInsets.only(top: 10, bottom: 10, left: 0, right: 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(50.0))),
          content: Builder(
            builder: (context) {
              // var height = MediaQuery.of(context).size.height * 0.90;
              var width = MediaQuery.of(context).size.width * .95;

              return Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                width: width - 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      // decoration: BoxDecoration(
                      //   color: Colors.white,
                      //   borderRadius: BorderRadius.circular(15),
                      // ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                            bottom: Radius.circular(15.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 247, 247, 247),
                            offset: Offset(0.0, 1.0), //(x,y)
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                width: 200,
                                child: TextField(
                                  controller: _textController,
                                  decoration: InputDecoration(
                                      isDense: true,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0, vertical: 14),
                                      hintText: 'Search User',
                                      hintStyle: TextStyle(
                                        fontSize: 16.0,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102),
                                      ),
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.search,
                                        size: 16,
                                        color:
                                            Color.fromARGB(255, 102, 102, 102),
                                      ),
                                      suffixIcon: user1
                                          ? InkWell(
                                              onTap: () {
                                                clearText();
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color: Colors.black,
                                                size: 18,
                                              ),
                                            )
                                          : null),
                                  onChanged: (value) {
                                    setState(() {
                                      newDataList =
                                          onItemChanged(value, widget.mainList);
                                    });
                                  },
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _animatedHeight != 0.0
                                        ? _animatedHeight = 0.0
                                        : _animatedHeight = 172;

                                    groupIconchange = !groupIconchange;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(right: 20),
                                  padding: EdgeInsets.only(
                                      left: 18, right: 10, top: 9, bottom: 9),
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Groups",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Color.fromRGBO(0, 0, 0, 1)),
                                      ),
                                      groupIconchange
                                          ? Icon(
                                              Icons.keyboard_arrow_up,
                                              size: 16,
                                              color: Colors.black,
                                            )
                                          : Icon(
                                              Icons.keyboard_arrow_down,
                                              size: 16,
                                              color: Colors.black,
                                            )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Expanded(
                                flex: 3,
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 22, top: 0, bottom: 0),
                                  child: Text(
                                    '$checkedCount/$totalCount',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 136, 136, 136),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: totalCount == 0 || user2
                                    ? Container()
                                    : Container(
                                        // padding: EdgeInsets.only(),
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isChecked = !isChecked;
                                            });
                                            selectAll();
                                          },
                                          child: isChecked
                                              ? Icon(
                                                  Icons.check_box_rounded,
                                                  size: 27,
                                                  color: chechIcons,
                                                )
                                              : count == 0
                                                  ? Icon(
                                                      Icons
                                                          .check_box_outline_blank_rounded,
                                                      size: 27,
                                                      color: chechIcons,
                                                    )
                                                  : Icon(
                                                      Icons
                                                          .indeterminate_check_box_rounded,
                                                      size: 27,
                                                      color: chechIcons,
                                                    ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            _animatedHeight == 0
                                ? Text("")
                                : AnimatedContainer(
                                    duration: Duration(milliseconds: 10),
                                    margin: EdgeInsets.all(10),
                                    padding: EdgeInsets.only(
                                        top: 40,
                                        left: 30,
                                        right: 30,
                                        bottom: 20),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 247, 247, 247),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    child: FutureBuilder(
                                      future: widget.groupLists,
                                      builder: (context, dataGroup) {
                                        if (dataGroup.hasError) {
                                          return Center(
                                              child:
                                                  Text("${dataGroup.error}"));
                                        } else if (dataGroup.hasData) {
                                          var itemsGroup =
                                              dataGroup.data as List<GroupList>;
                                          return Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.zero,
                                                child: Column(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                          bottom: 10),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                              '${"User Group"}(${itemsGroup.length})'),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      child: Column(
                                                        children: itemsGroup
                                                            .map((dataGrp) {
                                                          return InkWell(
                                                            onTap: () {
                                                              setState(() {
                                                                dataGrp.checked =
                                                                    !(dataGrp
                                                                            .checked
                                                                        as bool);
                                                              });
                                                              newDataList =
                                                                  onTapGroupChecked(
                                                                      itemsGroup,
                                                                      context);
                                                            },
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(6.0),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      '${dataGrp.name.toString()}(${dataGrp.users!.length})'),
                                                                  (dataGrp.checked
                                                                          as bool)
                                                                      ? Icon(
                                                                          Icons
                                                                              .check_box_rounded,
                                                                          size:
                                                                              27,
                                                                          color:
                                                                              chechIcons,
                                                                        )
                                                                      : Icon(
                                                                          Icons
                                                                              .check_box_outline_blank_rounded,
                                                                          size:
                                                                              27,
                                                                          color:
                                                                              chechIcons,
                                                                        ),
                                                                ],
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          );
                                        } else {
                                          return Center(
                                            child: CircularProgressIndicator(),
                                          );
                                        }
                                      },
                                    )),
                            FutureBuilder(
                              future: newDataList,
                              builder: (context, data) {
                                if (data.hasError) {
                                  return Center(child: Text("${data.error}"));
                                } else if (data.hasData) {
                                  var items = data.data as List<Userlist>;
                                  return Column(
                                    children: items.map((userlistData) {
                                      return InkWell(
                                        onTap: () {
                                          setState(() {
                                            userlistData.checked =
                                                !(userlistData.checked as bool);
                                          });
                                          onTapChecked(items, context);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 20, right: 2, bottom: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                flex: 3,
                                                child: Row(
                                                  children: [
                                                    Container(
                                                      width: 38.0,
                                                      height: 38.0,
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          image: AssetImage(
                                                              "img/images/user.jpg"),
                                                          fit: BoxFit.cover,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius.all(
                                                                Radius.circular(
                                                                    50.0)),
                                                        border: Border.all(
                                                          color: Colors.grey,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 20,
                                                    ),
                                                    Text(userlistData.fullName
                                                        .toString()),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                    child: userlistData.checked!
                                                        ? Icon(
                                                            Icons
                                                                .check_box_rounded,
                                                            size: 27,
                                                            color: chechIcons,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .check_box_outline_blank,
                                                            size: 27,
                                                            color: chechIcons,
                                                          )),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  );
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(),
                                  );
                                }
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25.0),
                            bottom: Radius.circular(25.0)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 247, 247, 247),
                            offset: Offset(0.0, 1.0), //(x,y)
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              padding: EdgeInsets.all(4),
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: cancelColor,
                                border: Border.all(color: Colors.grey),
                              ),
                              child: InkWell(
                                onTap: () {
                                  submit("cancel");
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "CANCEL",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Container(
                              padding: EdgeInsets.all(4),
                              width: 140,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                                color: chechIcons,
                                border: Border.all(color: chechIcons),
                              ),
                              child: InkWell(
                                onTap: () {
                                  submit("done");
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(5),
                                  child: Text(
                                    "DONE",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  // Future<List<GroupList>> ReadJsonData() async {
  //   final jsondata =
  //       await rootBundle.rootBundle.loadString('jsonfiles/grouplist.json');
  //   final list = json.decode(jsondata) as List<dynamic>;
  //   final list2 = list.map((e) => GroupList.fromJson(e)).toList();
  //   return list2;
  // }

  // // ignore: non_constant_identifier_names
  // Future<List<Userlist>> ReadJsonDataList() async {
  //   final jsondata =
  //       await rootBundle.rootBundle.loadString('jsonfiles/userlist.json');
  //   final listmultiselected = json.decode(jsondata) as List<dynamic>;
  //   final listmultiselected2 =
  //       listmultiselected.map((e) => Userlist.fromJson(e)).toList();
  //   return listmultiselected2;
  // }
}
