import 'dart:convert';
import 'package:demoapp/singleselect/singleUserDatalist.dart';
import 'package:demoapp/singleselect/singleUserDialouge.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SingleUserSelect extends StatefulWidget {
  const SingleUserSelect({Key? key}) : super(key: key);

  @override
  _SingleUserSelectState createState() => _SingleUserSelectState();
}

class _SingleUserSelectState extends State<SingleUserSelect> {
  SingleUserlist selectedNames = SingleUserlist(
      id: -5,
      firstName: null,
      lastName: null,
      fullName: null,
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
      checked: false);

  void callback(SingleUserlist selectedData, String action) {
    if (action == "cancel") {
      return;
    }
    selectedNames = selectedData;

    setState(() {
      textvalue = selectedNames.fullName!;
    });
  }

  String textvalue = "Dropbox user";
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
                  "Single User",
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
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      )
                    : Text(textvalue,
                        style: TextStyle(color: Colors.black, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return SingleSelectedModel(
                  mainList: ReadJsonDataSinglelist(),
                  selected: selectedNames,
                  callback: (SingleUserlist selectedData, String action) {
                    callback(selectedData, action);
                  },
                  unassignedValue: new SingleUserlist(
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
            });
      },
    );
  }

// ignore: non_constant_identifier_names
  Future<List<SingleUserlist>> ReadJsonDataSinglelist() async {
    final jsondata = await rootBundle.loadString('jsonfiles/userlist.json');
    final singleSelected = json.decode(jsondata) as List<dynamic>;
    final singleSelected2 =
        singleSelected.map((e) => SingleUserlist.fromJson(e)).toList();

    if (singleSelected2.where((element) => element.id == -1).length == 0) {
      singleSelected2.insert(
          0,
          new SingleUserlist(
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
              checked: false));
    }
    return singleSelected2;
  }
}
