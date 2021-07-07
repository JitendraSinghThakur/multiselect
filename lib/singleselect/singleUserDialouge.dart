import 'package:demoapp/multiselect/data.dart';
import 'package:flutter/material.dart';

class SingleSelectedModel extends StatefulWidget {
  void Function(ManageName selectedData, String action) callback;
  final List<ManageName> mainList;

  final ManageName selected;
  SingleSelectedModel({
    Key? key,
    required this.mainList,
    required this.selected,
    required this.callback,
    required String keyToDisplay,
    required String type,
    required bool canShowProfilePic,
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

  void listData(data, BuildContext context) {
    newDataList.forEach((element) {
      element.checked = false;
      if (element.id == data.id) {
        element.checked = true;
      }
    });
    ManageName newSelected =
        newDataList.where((element) => element.checked).first;

    widget.callback(
        new ManageName(newSelected.id, newSelected.name, newSelected.checked,
            newSelected.sort, newSelected.colorName),
        "done");
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

  List<ManageName> newDataList = [];

  onItemChanged(String value, List<ManageName> listSearch) {
    user1 = true;
    user2 = value.trim().length > 0 ? true : false;
    return listSearch
        .where((managename) =>
            managename.name.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  void submit(String action) {
    if (action == "cancel") {
      return;
    }
  }

  selectedValue() {
    widget.mainList.forEach((element2) {
      element2.checked = false;
      if (widget.selected.id == element2.id) {
        element2.checked = true;
      }
    });
    widget.mainList.sort((a, b) {
      if (b.checked) {
        return 1;
      }
      return -1;
    });
  }

  void initState() {
    super.initState();
    selectedValue();
  }

  @override
  Widget build(BuildContext context) {
    newDataList = widget.mainList;
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          backgroundColor: Color(0xffEEEEEE),
          insetPadding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          content: Builder(
            builder: (context) {
              var height = MediaQuery.of(context).size.height * 0.85;
              var width = MediaQuery.of(context).size.width * .95;
              return Container(
                height: height,
                width: width - 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(
                                    "SELECT USER",
                                    style: TextStyle(fontSize: 17),
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
                                      color: Colors.blue[400],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: TextField(
                              controller: _textController,
                              decoration: InputDecoration(
                                  hintText: 'Search User...',
                                  hintStyle: TextStyle(
                                      fontSize: 17.0,
                                      color: Colors.grey,
                                      letterSpacing: 1),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 18,
                                    color: Colors.grey,
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
                        ],
                      ),
                    ),
                    Expanded(
                      child: newDataList.length == 0
                          ? Container(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: Text(
                                  "No records found",
                                  style: TextStyle(
                                      color: Colors.black38,
                                      fontSize: 14,
                                      letterSpacing: 1),
                                ),
                              ),
                            )
                          : Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: ListView.builder(
                                    itemCount: newDataList.length,
                                    itemBuilder: (context, index) {
                                      var data = newDataList[index];

                                      return ListTile(
                                        selectedTileColor: Colors.red,
                                        dense: true,
                                        contentPadding: EdgeInsets.only(
                                            left: 0.0, right: 18),
                                        leading: Container(
                                          width: 32.0,
                                          height: 32.0,
                                          padding: EdgeInsets.all(2.0),
                                          decoration: BoxDecoration(
                                            color: data.colorName,
                                            shape: BoxShape.circle,
                                          ),
                                          child: CircleAvatar(
                                              radius: 14.0,
                                              backgroundImage: AssetImage(
                                                  'img/images/jitendra.jpeg')),
                                        ),
                                        title: Text(
                                          data.name,
                                          style: TextStyle(
                                              fontSize: 15.2,
                                              color: Colors.black),
                                        ),
                                        trailing: data.checked
                                            ? Icon(
                                                Icons.check,
                                                color: Colors.blue[400],
                                              )
                                            : null,
                                        onTap: () {
                                          setState(() {
                                            data.checked = !data.checked;
                                          });
                                          listData(data, context);
                                          Navigator.of(context).pop();
                                        },
                                      );
                                    }),
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
}
