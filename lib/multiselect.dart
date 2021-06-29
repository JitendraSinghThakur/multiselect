import 'package:demoapp/showdialogue.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/data.dart';

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
    textvalue = " ";
    setState(() {
      if (selectedNames.length > 0) {
        selectedNames.forEach((element) {
          if (element.checked) {
            textvalue += element.name + ",";
          }
        });
      }
    });
  }

  String textvalue = "0 selceted";
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
                child: Text(
                  textvalue,
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Showdialogue(
                  mainList: mainDataList,
                  selected: selectedNames,
                  callback: (List<ManageName> selectedData, String action) {
                    callback(selectedData, action);
                  },
                  keyToDisplay: 'name',
                  type: 'user',
                  canShowProfilePic: true);
            });
      },
    );
  }
}
