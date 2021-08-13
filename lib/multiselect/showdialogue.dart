import 'package:demoapp/multiselect/userDatalist.dart';

import '../multiselect/data.dart';
import 'package:flutter/material.dart';
import 'groupDatalist.dart';

class MultiselectedModel extends StatefulWidget {
  final void Function(List<ManageName> selectedData, String action) callback;
  final Future<List<Userlist>> mainList;
  final List<ManageName> selected;
  final ManageName unassignedValue;
  MultiselectedModel(
      {Key? key,
      required this.mainList,
      required this.selected,
      required this.callback,
      required String keyToDisplay,
      required String type,
      required bool canShowProfilePic,
      required this.unassignedValue})
      : super(key: key);

  @override
  _MultiselectedModelState createState() => _MultiselectedModelState();
}

class _MultiselectedModelState extends State<MultiselectedModel> {
  double _animatedHeight = 0.0;
  bool isChecked = false;

  int count = 0;
  bool user1 = false;
  bool user2 = false;

  bool groupIconchange = false;
  bool groupCheckedbox = false;
  bool groupCheckedbox1 = false;
  bool groupCheckedbox2 = false;
  bool groupCheckedbox3 = false;
  Color chechIcons = const Color(0xF2347EBD);

  Color textColor = const Color(0xF2101010);

  Color cancelColor = const Color.fromARGB(255, 84, 98, 125);

  void listData(data, BuildContext context) {
    // newDataList.forEach((element) {
    //   if (element.id == data.id) {
    //     element.checked = data.checked;
    //   }
    // });
    // count = 0;
    // newDataList.forEach((element) {
    //   if (element.checked as bool) count++;
    // });
    // isChecked = count == newDataList.length;
  }

  void selectAll() {
    // newDataList.forEach((element) {
    //   element.checked = isChecked;
    // });
    // actualDataList.forEach((element) {
    //   element.checked = isChecked;
    // });
    // count = 0;
    // actualDataList.forEach((element) {
    //   if (element.checked) count++;
    // });
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
  // Future<List<Userlist>> newDataList = [] as Future<List<Userlist>>;
  // Future<List<Userlist>> actualDataList = [] as Future<List<Userlist>>;

  onItemChanged(String value, Future<List<Userlist>> listSearch) {
    user1 = true;
    user2 = value.trim().length > 0 ? true : false;
    return null;
    //  listSearch.
    //     .where((managename) =>
    //         managename.name.toLowerCase().contains(value.toLowerCase()))
    //     .toList();
  }

  void submit(String action) {
    if (action == "cancel") {
      widget.callback([], action);
      return;
    }
 List<Userlist> data = [];
    actualDataList
        .then((value) => {
        data =  value.where((element) => element.checked as bool).toList()};
           widget.callback(data, action);
  
          );
  }
    // actualDataList.where((element) => element.checked).toList();
  

  getSelectedCount() {
    return 0;
    // actualDataList.where((element) => element.checked).length;
  }

  selectedValue() {
    // if (widget.mainList.where((element) => element.id == -1).length == 0) {
    //   widget.mainList.insert(0, unassignedData);
    // }

    // widget.mainList.forEach((element2) {
    //   element2.checked = false;
    //   if (widget.selected.where((element) => element.id == element2.id).length >
    //       0) {
    //     element2.checked = true;
    //   }
    // });
    // widget.mainList.sort((a, b) {
    //   if (b.checked) {
    //     return 1;
    //   }
    //   return -1;
    // });
    // isChecked = widget.mainList.length == widget.selected.length;
    // count = widget.selected.length;
  }

  void initState() {
    super.initState();
    selectedValue();
  }

  @override
  Widget build(BuildContext context) {
    newDataList = widget.mainList;
    actualDataList = widget.mainList;
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          insetPadding: EdgeInsets.only(bottom: 45, top: 60),
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
                    // color: Colors.yellow,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50)),
                // padding: EdgeInsets.all(0),
                // height: height,
                width: width - 25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 10),
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
                                    '${getSelectedCount()}/${111}',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color:
                                            Color.fromARGB(255, 136, 136, 136),
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: 1 == 0 || user2
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

                    AnimatedContainer(
                        padding: EdgeInsets.only(
                            top: _animatedHeight != 0 ? 50.0 : 0,
                            left: 30,
                            right: 30,
                            bottom: 0),
                        duration: Duration(milliseconds: 300),
                        child: _animatedHeight != 0
                            ? FutureBuilder(
                                future: null,
                                builder: (context, data) {
                                  if (data.hasError) {
                                    return Center(child: Text("${data.error}"));
                                  } else if (data.hasData) {
                                    var items = data.data as List<GroupList>;
                                    return Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.only(left: 15),
                                          child: Text(
                                            '${"Group"}(${items.length})',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        ListView.builder(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            itemCount: items.length,
                                            itemBuilder: (context, index) {
                                              var data = items[index];

                                              return ListTile(
                                                dense: true,
                                                title: Text(
                                                  '${data.name.toString()}(${data.users!.length})',
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromRGBO(
                                                          0, 0, 0, 0.8),
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                                trailing: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      // data.checked = !data.checked;
                                                    });
                                                    listData(data, context);
                                                  },
                                                  child: data.id == 0
                                                      ? Icon(
                                                          Icons
                                                              .check_box_rounded,
                                                          size: 27,
                                                          color: chechIcons,
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .check_box_outline_blank_rounded,
                                                          size: 27,
                                                          color: chechIcons,
                                                        ),
                                                ),
                                                onTap: () {
                                                  setState(() {
                                                    // data.checked = !data.checked;
                                                  });
                                                  // listData(data, context);
                                                },
                                              );
                                            })
                                      ],
                                    );
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              )
                            : Text("")),
                    // ),
                    // AnimatedContainer(
                    //   duration: Duration(milliseconds: 300),
                    //   child: _animatedHeight != 0
                    //       ? SingleChildScrollView(
                    //           child: Container(
                    //             decoration: BoxDecoration(
                    //                 borderRadius: BorderRadius.circular(4),
                    //                 color: Color.fromRGBO(247, 247, 247, 1)),
                    //             margin: EdgeInsets.only(left: 20, right: 20),
                    //             padding: EdgeInsets.only(
                    //                 top: 40, left: 25, right: 25, bottom: 5),
                    //             child: Column(
                    //               children: [
                    //                 Row(
                    //                   mainAxisAlignment:
                    //                       MainAxisAlignment.spaceBetween,
                    //                   children: [
                    //                     Text(
                    //                       "User Groups (3)",
                    //                       style: TextStyle(
                    //                           fontSize: 15,
                    //                           fontWeight: FontWeight.w500),
                    //                     ),
                    //                   ],
                    //                 ),
                    //                 SizedBox(
                    //                   height: 15,
                    //                 ),
                    //                 Row(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.spaceBetween,
                    //                     children: [
                    //                       Text(
                    //                         "Groups 1 (3)",
                    //                         style: TextStyle(
                    //                             fontSize: 17,
                    //                             fontWeight: FontWeight.w400),
                    //                       ),
                    //                       InkWell(
                    //                         onTap: () {
                    //                           setState(() {
                    //                             groupCheckedbox =
                    //                                 !groupCheckedbox;
                    //                           });
                    //                         },
                    //                         child: Icon(
                    //                           groupCheckedbox
                    //                               ? Icons.check_box_rounded
                    //                               : Icons
                    //                                   .check_box_outline_blank_rounded,
                    //                           size: 27,
                    //                           color: chechIcons,
                    //                         ),
                    //                       ),
                    //                     ]),
                    //               ],
                    //             ),
                    //           ),
                    //         )
                    //       : null,
                    //   height: _animatedHeight,
                    // ),
                    Expanded(
                        child: 1 == 0
                            ? Container(
                                child: Text(
                                  "No records found",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 102, 102, 102),
                                      fontSize: 14,
                                      letterSpacing: 1),
                                ),
                              )
                            : Container(
                                padding: EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                  ),
                                ),
                                child: FutureBuilder(
                                  future: newDataList,
                                  builder: (context, data) {
                                    if (data.hasError) {
                                      return Center(
                                          child: Text("${data.error}"));
                                    } else if (data.hasData) {
                                      var items = data.data as List<Userlist>;
                                      return ListView.builder(
                                          itemCount: items.length,
                                          itemBuilder: (context, index) {
                                            var data = items[index];

                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10,
                                                  right: 16,
                                                  bottom: 9),
                                              child: InkWell(
                                                onTap: () {
                                                  setState(() {
                                                    data.checked =
                                                        !(data.checked as bool);
                                                  });
                                                },
                                                child: ListTile(
                                                  dense: true,
                                                  leading: Container(
                                                    width: 37.0,
                                                    height: 37.0,
                                                    padding:
                                                        EdgeInsets.all(2.0),
                                                    decoration: BoxDecoration(
                                                      // color: data.fullName.toString(),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 100.0,
                                                      decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xff7c94b6),
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
                                                  ),
                                                  title: Text(
                                                    data.fullName.toString(),
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        color: Color.fromRGBO(
                                                            0, 0, 0, 0.8),
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  trailing: data.checked as bool
                                                      ? Icon(
                                                          Icons
                                                              .check_box_rounded,
                                                          size: 27,
                                                          color: chechIcons,
                                                        )
                                                      : Icon(
                                                          Icons
                                                              .check_box_outline_blank_rounded,
                                                          size: 27,
                                                          color: chechIcons,
                                                        ),
                                                ),
                                              ),
                                            );
                                          });
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  },
                                ))),

                    //   ListView.builder(
                    //       itemCount: newDataList.length,
                    //       itemBuilder: (context, index) {
                    //         var data = newDataList[index];

                    //         return Padding(
                    //           padding: const EdgeInsets.only(
                    //               left: 10, right: 16, bottom: 9),
                    //           child: ListTile(
                    //             dense: true,
                    //             leading: Container(
                    //               width: 37.0,
                    //               height: 37.0,
                    //               padding: EdgeInsets.all(2.0),
                    //               decoration: BoxDecoration(
                    //                 color: data.colorName,
                    //                 shape: BoxShape.circle,
                    //               ),
                    //               child: CircleAvatar(
                    //                   radius: 20.0,
                    //                   backgroundImage: data.id != -1
                    //                       ? AssetImage(
                    //                           'img/images/jitendra.jpeg')
                    //                       : AssetImage(
                    //                           'img/images/user.jpg')),
                    //             ),
                    //             title: Text(
                    //               data.name,
                    //               style: TextStyle(
                    //                   fontSize: 17,
                    //                   color:
                    //                       Color.fromRGBO(0, 0, 0, 0.8),
                    //                   fontWeight: FontWeight.w400),
                    //             ),
                    //             trailing: InkWell(
                    //               onTap: () {
                    //                 setState(() {
                    //                   data.checked = !data.checked;
                    //                 });
                    //                 listData(data, context);
                    //               },
                    //               child: data.checked
                    //                   ? Icon(
                    //                       Icons.check_box_rounded,
                    //                       size: 27,
                    //                       color: chechIcons,
                    //                     )
                    //                   : Icon(
                    //                       Icons
                    //                           .check_box_outline_blank_rounded,
                    //                       size: 27,
                    //                       color: chechIcons,
                    //                     ),
                    //             ),
                    //             onTap: () {
                    //               setState(() {
                    //                 data.checked = !data.checked;
                    //               });
                    //               listData(data, context);
                    //             },
                    //           ),
                    //         );
                    //       }),
                    // ),
                    // ),
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
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(15),
                      //   color: Colors.white,
                      // ),
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
