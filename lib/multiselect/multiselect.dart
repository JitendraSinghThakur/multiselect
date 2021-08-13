import '../multiselect/data.dart';
import '../multiselect/showdialogue.dart';
import 'package:flutter/material.dart';
import 'groupDatalist.dart';
import 'userDatalist.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

class OpenCustomerDetails extends StatefulWidget {
  const OpenCustomerDetails({Key? key}) : super(key: key);

  @override
  _OpenCustomerDetailsState createState() => _OpenCustomerDetailsState();
}

class _OpenCustomerDetailsState extends State<OpenCustomerDetails> {
  List<ManageName> selectedNames = [];

  void callback(List<ManageName> selectedData, String action) {
    if (action == "cancel") {
      return;
    }
    selectedNames = selectedData;

    setState(() {
      textvalue = " ";
      if (selectedNames.length > 0) {
        if (selectedNames.length > 0) {
          textvalue += (selectedNames.map((e) => (e.name))).join(", ");
        }
      }
    });
  }

  String textvalue = "0 Selected";
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1.2),
                      left: BorderSide(width: 1.2),
                      right: BorderSide(width: 1.2)),
                ),
                child: Text(
                  "Selected Values",
                  style: TextStyle(letterSpacing: 0.5, color: Colors.black),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.2),
                    left: BorderSide(width: 1.2),
                    right: BorderSide(width: 1.2),
                  ),
                ),
                child: textvalue == " "
                    ? Text(
                        "0 Selected",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      )
                    : Text(textvalue),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return MultiselectedModel(
                  mainList: ReadJsonDataList(),
                  selected: selectedNames,
                  callback: (List<ManageName> selectedData, String action) {
                    callback(selectedData, action);
                  },
                  unassignedValue: unassignedData,
                  keyToDisplay: 'name',
                  type: 'user',
                  canShowProfilePic: true);
            });
      },
    );
  }

  Future<List<GroupList>> ReadJsonData() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfiles/grouplist.json');
    final list = json.decode(jsondata) as List<dynamic>;
    final list2 = list.map((e) => GroupList.fromJson(e)).toList();
    return list2;
  }

  // ignore: non_constant_identifier_names
  Future<List<Userlist>> ReadJsonDataList() async {
    final jsondata =
        await rootBundle.rootBundle.loadString('jsonfiles/userlist.json');
    final listmultiselected = json.decode(jsondata) as List<dynamic>;
    final listmultiselected2 =
        listmultiselected.map((e) => Userlist.fromJson(e)).toList();
    return listmultiselected2;
  }
}
