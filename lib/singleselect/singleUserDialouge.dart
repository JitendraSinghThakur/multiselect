import 'dart:ui';
import 'package:flutter/material.dart';
import 'singleUserDatalist.dart';

class SingleSelectedModel extends StatefulWidget {
  final void Function(SingleUserlist selectedData, String action) callback;
  Future<List<SingleUserlist>> mainList;
  final SingleUserlist selected;
  final SingleUserlist? unassignedValue;
  SingleSelectedModel({
    Key? key,
    required this.mainList,
    required this.selected,
    required this.callback,
    required String keyToDisplay,
    required String type,
    required bool canShowProfilePic,
    this.unassignedValue,
  }) : super(key: key);

  @override
  _SingleSelectedModelState createState() => _SingleSelectedModelState();
}

class _SingleSelectedModelState extends State<SingleSelectedModel> {
  bool isChecked = false;

  int count = 0;
  bool user1 = false;
  bool user2 = false;
  Color chechIcons = const Color(0xF2347EBD);

  Color textColor = const Color(0xF2101010);

  Color cancelColor = const Color(0xF254627D);

  // void listData(data, BuildContext context) {
  //   newDataList.forEach((element) {
  //     element.checked = false;
  //     if (element.id == data.id) {
  //       element.checked = true;
  //       isChecked = true;
  //     }
  //   });
  //   SingleUserlist newSelected =
  //       newDataList.where((element) => element.checked).first;

  //   widget.callback(
  //       new SingleUserlist(
  //           newSelected.id,
  //           newSelected.name,
  //           newSelected.checked,
  //           newSelected.sort,
  //           newSelected.colorName,
  //           newSelected.groupName),
  //       "done");
  // }

  TextEditingController _textController = TextEditingController();

  void clearText() {
    _textController.clear();
    var list = onItemChanged(_textController.value.toString(), widget.mainList);
    setState(() {
      widget.mainList = list;
    });
    user1 = false;
    user2 = false;
  }

  late Future<List<SingleUserlist>> newDataList;

  onItemChanged(String txt, Future<List<SingleUserlist>> listSearch) {
    user1 = true;
    user2 = txt.trim().length > 0 ? true : false;
    return listSearch.then((value) => value
        .where((managename) => managename.fullName!.toLowerCase().contains(txt))
        .toList());
  }

  void submit(String action) {
    if (action == "cancel") {
      return;
    }
    widget.mainList.then((value) => {
          widget.callback(
              value.firstWhere((element) => element.checked as bool), action)
        });
  }

  selectedValue() {
    widget.mainList.then((value) => {
          value.forEach((element2) {
            element2.checked = false;
            if (widget.selected.id == element2.id) {
              element2.checked = true;
            }
          }),
        });

    // widget.mainList.then((value) => {
    //       value.forEach((element2) {
    //         element2.checked = false;
    //         if (widget.selected.id == element2.id) {
    //           element2.checked = true;
    //         }
    //       })
    //     });

    // widget.mainList.sort((a, b) {
    //   if (b.checked) {
    //     return 1;
    //   }
    //   return -1;
    // });
  }

  void initState() {
    super.initState();
    selectedValue();
  }

  @override
  Widget build(BuildContext context) {
    // newDataList = widget.mainList;
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          insetPadding: EdgeInsets.all(0),
          contentPadding: EdgeInsets.only(top: 10, left: 0, right: 0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Builder(
            builder: (context) {
              var height = MediaQuery.of(context).size.height * 0.85;
              var width = MediaQuery.of(context).size.width * 1;
              return Container(
                height: height,
                width: width - 45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 15, bottom: 10, left: 20, right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "SALESMAN/CUSTOMER",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2),
                                  ),
                                ),
                                Container(
                                  child: InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Icon(
                                        Icons.clear,
                                        size: 25,
                                        color: Colors.blue[700],
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: _textController,
                              decoration: InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 13),
                                  hintText: 'Search User...',
                                  hintStyle: TextStyle(
                                      fontSize: 16.0,
                                      color: Color.fromARGB(255, 102, 102, 102),
                                      fontWeight: FontWeight.w400),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 16,
                                    color: Color.fromARGB(255, 102, 102, 102),
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
                                  widget.mainList =
                                      onItemChanged(value, widget.mainList);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: 1 == 0
                          ? Container(
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 30.0),
                                child: Text(
                                  "No records found",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      letterSpacing: 1),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: FutureBuilder(
                                future: widget.mainList,
                                builder: (context, data) {
                                  if (data.hasError) {
                                    return Center(child: Text("${data.error}"));
                                  } else if (data.hasData) {
                                    var items =
                                        data.data as List<SingleUserlist>;
                                    return Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: ListView.builder(
                                          itemCount: items.length,
                                          itemBuilder: (context, index) {
                                            var dataitems = items[index];

                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10),
                                              child: ListTile(
                                                selectedTileColor: Colors.red,
                                                dense: true,
                                                contentPadding: EdgeInsets.only(
                                                    left: 0.0, right: 18),
                                                leading: Container(
                                                  width: 32.0,
                                                  height: 32.0,
                                                  padding: EdgeInsets.all(2.0),
                                                  decoration: BoxDecoration(
                                                    color: Colors.amberAccent,
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: CircleAvatar(
                                                      radius: 14.0,
                                                      backgroundImage: dataitems.id !=
                                                              -1
                                                          ? AssetImage(
                                                              'img/images/jitendra.jpeg')
                                                          : AssetImage(
                                                              'img/images/user.jpg')),
                                                ),
                                                title: Text(
                                                  dataitems.fullName as String,
                                                  style: TextStyle(
                                                      fontSize: 16,
                                                      color: Color.fromARGB(
                                                          255, 68, 68, 68)),
                                                ),
                                                trailing: dataitems.checked
                                                        as bool
                                                    ? Icon(
                                                        Icons.check,
                                                        color: dataitems.id !=
                                                                -2
                                                            ? Colors.blue[400]
                                                            : Colors.white,
                                                      )
                                                    : null,
                                                onTap: () {
                                                  setState(() {
                                                    items.forEach((element) {
                                                      element.checked = false;
                                                    });
                                                    dataitems.checked =
                                                        !(dataitems.checked
                                                            as bool);
                                                  });
                                                  submit("Done");
                                                  // listData(data, context);
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            );
                                          }),
                                    );
                                  } else {
                                    return Center(
                                      child: CircularProgressIndicator(),
                                    );
                                  }
                                },
                              )),
                      // Container(
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius:
                      //           BorderRadius.all(Radius.circular(25)),
                      //     ),
                      //     child: Padding(
                      //       padding: const EdgeInsets.all(18.0),
                      //       child: ListView.builder(
                      //           itemCount: newDataList.length,
                      //           itemBuilder: (context, index) {
                      //             var data = newDataList[index];

                      //             return Padding(
                      //               padding:
                      //                   const EdgeInsets.only(left: 10),
                      //               child: ListTile(
                      //                 selectedTileColor: Colors.red,
                      //                 dense: true,
                      //                 contentPadding: EdgeInsets.only(
                      //                     left: 0.0, right: 18),
                      //                 leading: Container(
                      //                   width: 32.0,
                      //                   height: 32.0,
                      //                   padding: EdgeInsets.all(2.0),
                      //                   decoration: BoxDecoration(
                      //                     color: data.colorName,
                      //                     shape: BoxShape.circle,
                      //                   ),
                      //                   child: CircleAvatar(
                      //                       radius: 14.0,
                      //                       backgroundImage: data.id != -1
                      //                           ? AssetImage(
                      //                               'img/images/jitendra.jpeg')
                      //                           : AssetImage(
                      //                               'img/images/user.jpg')),
                      //                 ),
                      //                 title: Text(
                      //                   data.name,
                      //                   style: TextStyle(
                      //                       fontSize: 16,
                      //                       color: Color.fromARGB(
                      //                           255, 68, 68, 68)),
                      //                 ),
                      //                 trailing: data.checked
                      //                     ? Icon(
                      //                         Icons.check,
                      //                         color: data.id != -1
                      //                             ? Colors.blue[400]
                      //                             : Colors.white,
                      //                       )
                      //                     : null,
                      //                 onTap: () {
                      //                   setState(() {
                      //                     data.checked = !data.checked;
                      //                   });
                      //                   listData(data, context);
                      //                   Navigator.of(context).pop();
                      //                 },
                      //               ),
                      //             );
                      //           }),
                      //     ),
                      //   ),
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
}
