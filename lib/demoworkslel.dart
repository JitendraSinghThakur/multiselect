import 'package:demoapp/multiselect/groupDatalist.dart';

import '../animations/animations.dart';
import 'package:flutter/material.dart';
import 'demowork.dart';
import 'multiselect/userDatalist.dart';
import 'dart:convert';
import 'package:flutter/services.dart' as rootBundle;

class Demoselect extends StatefulWidget {
  const Demoselect({Key? key}) : super(key: key);

  @override
  _DemoselectState createState() => _DemoselectState();
}

class _DemoselectState extends State<Demoselect> {
  List<Userlist> selectedNames = [];

  void callback(List<Userlist> selectedData, String action) {
    if (action == "cancel") {
      return;
    }
    selectedNames = selectedData;

    setState(() {
      textvalue = " ";
      if (selectedNames.length > 0) {
        if (selectedNames.length > 0) {
          textvalue += (selectedNames.map((e) => (e.fullName))).join(", ");
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
        showGeneralDialog(
          context: context,
          barrierLabel: '',
          barrierDismissible: true,
          transitionDuration: Duration(milliseconds: 300),
          transitionBuilder:
              (context, _animation, _secondaryAnimation, _child) {
            return Animations.fromBottom(
                _animation, _secondaryAnimation, _child);
          },
          pageBuilder: (_animation, _secondaryAnimation, _child) {
            return DemoselectModel(
                mainList: ReadJsonDataList(),
                groupLists: ReadJsonData(),
                selected: selectedNames,
                callback: (List<Userlist> selectedData, String action) {
                  callback(selectedData, action);
                },
                unassignedValue: new Userlist(
                    id: -1,
                    firstName: null,
                    lastName: null,
                    fullName: "Unassigned",
                    fullNameMobile: null,
                    email: null,
                    companyId: null,
                    company: null,
                    adminPrivilege: null,
                    group: null,
                    role: null,
                    addedDate: null,
                    profilePic: null,
                    active: null,
                    companyName: null,
                    color: null,
                    commissionPercentage: null,
                    resourceId: null,
                    dataMasking: null,
                    multipleAccount: null,
                    allDivisionsAccess: null,
                    createdBy: null,
                    updatedBy: null,
                    profile: null,
                    divisions: null,
                    tags: null,
                    checked: false),
                keyToDisplay: 'name',
                type: 'user',
                canShowProfilePic: true);
          },
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
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
