import '../multiselect/data.dart';
import '../singleselect/singleUserDialouge.dart';
import 'package:flutter/material.dart';

class SingleUserSelect extends StatefulWidget {
  const SingleUserSelect({Key? key}) : super(key: key);

  @override
  _SingleUserSelectState createState() => _SingleUserSelectState();
}

class _SingleUserSelectState extends State<SingleUserSelect> {
  ManageName selectedNames = new ManageName(-1, "", false, 0, Colors.red);

  void callback(ManageName selectedData, String action) {
    if (action == "cancel") {
      return;
    }
    selectedNames = selectedData;

    setState(() {
      textvalue = selectedNames.name;
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
                  mainList: mainDataList,
                  selected: selectedNames,
                  callback: (ManageName selectedData, String action) {
                    callback(selectedData, action);
                  },
                  unassignedValueSingle: unassignedData,
                  keyToDisplay: 'name',
                  type: 'user',
                  canShowProfilePic: true);
            });
      },
    );
  }
}
