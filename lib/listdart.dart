import 'package:flutter/material.dart';
import 'package:multiselected/data.dart';

// ignore: must_be_immutable
class ListSearch extends StatefulWidget {
  ListSearch({Key? key, required this.datatoParent, this.callback})
      : super(key: key);
  final callback;
  List<ManageName> datatoParent;

  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {
  bool isChecked = false;
  int count = 0;
  void sortData() {
    List<ManageName> tempDataToParent = widget.datatoParent;
    print("sortData");
    if (tempDataToParent.length > 0) {
      newDataList = tempDataToParent;
    }
    // int index = 1;
    // newDataList.forEach((element) {
    //   element.checked = false;
    //   if (tempDataToParent.length > 0) {
    //     var tempdata = tempDataToParent.where((e) => e.id == element.id).first;
    //     if (element.id == tempdata.id) {
    //       // element.sort = 0;
    //       print("element.id" + element.id.toString());
    //       element.checked = tempdata.checked;
    //       print("element.checked temdata" + tempdata.checked.toString());
    //     } else {
    //       element.sort = index++;
    //     }
    //   }
    // });
    // newDataList.sort((a, b) => a.sort.compareTo(b.sort));
    count = 0;
    newDataList.forEach((element) {
      if (element.checked) count++;
    });
  }

  void listData(id, fname, lname, sort, checked, BuildContext context) {
    // print("checked" + checked.toString());
    newDataList.forEach((element) {
      if (element.id == id) {
        element.checked = checked;
        print("element.id" + element.id.toString());
      }
    });
    count = 0;
    newDataList.forEach((element) {
      if (element.checked) count++;
    });
    widget.datatoParent = newDataList;

    _flag = count == newDataList.length;
  }

  TextEditingController _textController = TextEditingController();

  List<ManageName> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((managename) =>
              managename.fname.toLowerCase().contains(value.toLowerCase()) ||
              managename.lname.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  void initState() {
    sortData();
    super.initState();
  }

  Color getTextColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };

    if (states.any(interactiveStates.contains)) {
      return Colors.black;
    }
    return Colors.blueAccent;
  }

  void selectAll() {
    // setState(() => _flag = !_flag);
    newDataList.forEach((element) {
      element.checked = _flag;
    });
    count = 0;
    newDataList.forEach((element) {
      if (element.checked) count++;
    });
    widget.datatoParent = newDataList;
  }

  bool _flag = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(count.toString()),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text("/"),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(widget.datatoParent.length.toString()),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.50,
                ),
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateColor.resolveWith(getTextColor),
                  value: _flag,
                  onChanged: (bool? value) {
                    setState(() {
                      _flag = !_flag;
                    });

                    selectAll();
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: TextField(
            controller: _textController,
            decoration: InputDecoration(
              hintText: 'Search Here...',
            ),
            onChanged: onItemChanged,
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.all(12.0),
            children: newDataList.map((data) {
              return ListTile(
                leading: CircleAvatar(
                    backgroundImage: AssetImage('img/images/jitendra.jpeg')),
                title: Text(data.fname + " " + data.lname),
                trailing: Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateColor.resolveWith(getTextColor),
                  value: data.checked,
                  onChanged: (bool? value) {
                    setState(() {
                      data.checked = !data.checked;
                    });

                    listData(data.id, data.fname, data.lname, data.sort, value,
                        context);
                  },
                ),
                onTap: () {
                  setState(() {
                    data.checked = !data.checked;
                  });

                  listData(data.id, data.fname, data.lname, data.sort,
                      data.checked, context);
                },
              );
            }).toList(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 55),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black38),
                  padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancel"),
              ),
              SizedBox(width: 50),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightBlueAccent),
                  padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 15),
                  ),
                ),
                onPressed: () {
                  widget.callback(widget.datatoParent);
                  Navigator.pop(context);
                },
                child: Text("Done"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
