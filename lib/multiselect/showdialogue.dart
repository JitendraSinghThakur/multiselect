import 'package:demoapp/multiselect/data.dart';
import 'package:flutter/material.dart';

class MultiselectedModel extends StatefulWidget {
  void Function(List<ManageName> selectedData, String action) callback;
  final List<ManageName> mainList;
  final List<ManageName> selected;
  MultiselectedModel({
    Key? key,
    required this.mainList,
    required this.selected,
    required this.callback,
    required String keyToDisplay,
    required String type,
    required bool canShowProfilePic,
  }) : super(key: key);

  @override
  _MultiselectedModelState createState() => _MultiselectedModelState();
}

class _MultiselectedModelState extends State<MultiselectedModel> {
  bool isChecked = false;

  int count = 0;
  bool user1 = false;
  bool user2 = false;
  Color chechIcons = const Color(0xF2347EBD);

  Color textColor = const Color(0xF2101010);

  Color cancelColor = const Color(0xF254627D);

  void listData(data, BuildContext context) {
    newDataList.forEach((element) {
      if (element.id == data.id) {
        element.checked = data.checked;
      }
    });
    count = 0;
    newDataList.forEach((element) {
      if (element.checked) count++;
    });
    isChecked = count == newDataList.length;
  }

  void selectAll() {
    newDataList.forEach((element) {
      element.checked = isChecked;
    });
    actualDataList.forEach((element) {
      element.checked = isChecked;
    });
    count = 0;
    actualDataList.forEach((element) {
      if (element.checked) count++;
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

  List<ManageName> newDataList = [];
  List<ManageName> actualDataList = [];

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
      widget.callback([], action);
      return;
    }

    List<ManageName> data =
        actualDataList.where((element) => element.checked).toList();
    widget.callback(data, action);
  }

  getSelectedCount() {
    return actualDataList.where((element) => element.checked).length;
  }

  selectedValue() {
    widget.mainList.forEach((element2) {
      element2.checked = false;
      if (widget.selected.where((element) => element.id == element2.id).length >
          0) {
        element2.checked = true;
      }
    });
    widget.mainList.sort((a, b) {
      if (b.checked) {
        return 1;
      }
      return -1;
    });
    isChecked = widget.mainList.length == widget.selected.length;
    count = widget.selected.length;
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
          insetPadding: EdgeInsets.all(0),
          // backgroundColor: Colors.grey[100],
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
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 18.0),
                                  child: Container(
                                    child: Text(
                                      '${getSelectedCount()}/${actualDataList.length}',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.grey),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: newDataList.length == 0 || user2
                                    ? Container()
                                    : Container(
                                        child: InkWell(
                                          onTap: () {
                                            setState(() {
                                              isChecked = !isChecked;
                                            });
                                            selectAll();
                                          },
                                          child: isChecked
                                              ? Icon(
                                                  Icons.check_box,
                                                  color: chechIcons,
                                                )
                                              : count == 0
                                                  ? Icon(
                                                      Icons
                                                          .check_box_outline_blank_outlined,
                                                      color: chechIcons,
                                                    )
                                                  : Icon(
                                                      Icons
                                                          .indeterminate_check_box,
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
                          : ListView.builder(
                              itemCount: newDataList.length,
                              itemBuilder: (context, index) {
                                var data = newDataList[index];

                                return ListTile(
                                  dense: true,
                                  contentPadding:
                                      EdgeInsets.only(left: 0.0, right: 18),
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
                                        fontSize: 15.2, color: Colors.black),
                                  ),
                                  trailing: InkWell(
                                    onTap: () {
                                      setState(() {
                                        data.checked = !data.checked;
                                      });
                                      listData(data, context);
                                    },
                                    child: data.checked
                                        ? Icon(
                                            Icons.check_box,
                                            color: chechIcons,
                                          )
                                        : Icon(
                                            Icons.check_box_outline_blank,
                                            color: chechIcons,
                                          ),
                                  ),
                                  onTap: () {
                                    setState(() {
                                      data.checked = !data.checked;
                                    });
                                    listData(data, context);
                                  },
                                );
                              }),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(color: Colors.grey, width: 0.4)),
                      ),
                      child: Material(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
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
                                    padding: const EdgeInsets.only(
                                        top: 6, bottom: 6, left: 25, right: 25),
                                    child: Text(
                                      "Cancel",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
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
                                    padding: const EdgeInsets.only(
                                        top: 6, bottom: 6, left: 35, right: 35),
                                    child: Text(
                                      "Done",
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
