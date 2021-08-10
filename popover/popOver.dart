import '../quickactionsheet/list.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'popoverList.dart';
import '../multiselect/showdialogue.dart';
import '../multiselect/data.dart';

class PopOverpage extends StatefulWidget {
  const PopOverpage({Key? key}) : super(key: key);
  @override
  _PopOverpageState createState() => _PopOverpageState();
}

class _PopOverpageState extends State<PopOverpage> {
  List<ManageName> selectedNames = [];
  List<QuichSheetData> newDataList = List.from(quickActionList);

  Color cancelIcons = const Color(0xF2347EBD);

  void callback(List<ManageName> selectedData, String action) {
    if (action == "cancel") {
      return;
    }
    selectedNames = selectedData;

    // setState(() {
    //   textvalue = " ";
    //   if (selectedNames.length > 0) {
    //     if (selectedNames.length > 0) {
    //       textvalue += (selectedNames.map((e) => (e.name))).join(", ");
    //     }
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: Offset(-180, 35),
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 3.0,
            ),
          ],
        ),
        child: Row(
          children: [
            Text(
              'ALL TRADES',
              style: TextStyle(
                  fontSize: 11, color: Colors.black, letterSpacing: 0),
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: 14,
            )
          ],
        ),
      ),
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<Widget>>[
          PopupMenuItem<Widget>(
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  decoration: BoxDecoration(
                      // color: Colors.blue[100],
                      ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text("ALL"),
                  ),
                ),
                Container(
                  width: 200,
                  height: 200,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                  child: Scrollbar(
                    child: ListView.builder(
                      itemCount: Constants.choices.length,
                      itemBuilder: (context, index) {
                        final trans = Constants.choices[index];
                        return ListTile(
                          title: Transform.translate(
                            offset: Offset(0, 0),
                            child: Container(
                              child: Text(
                                trans.toString(),
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                          trailing: Container(
                            padding: EdgeInsets.only(
                                top: 3, bottom: 3, left: 7, right: 7),
                            decoration: BoxDecoration(
                                color: Color(0xffB9D3EC),
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(20, 20))),
                            child: Text(
                              "70",
                              style: TextStyle(
                                  color: Colors.blue[400], fontSize: 15),
                            ),
                          ),
                          onTap: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return MultiselectedModel(
                                      mainList: mainDataList,
                                      selected: selectedNames,
                                      callback: (List<ManageName> selectedData,
                                          String action) {
                                        callback(selectedData, action);
                                      },
                                      unassignedValue: unassignedData,
                                      keyToDisplay: 'name',
                                      type: 'user',
                                      canShowProfilePic: true);
                                });
                            // Navigator.pop(context);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          )
        ];
      },
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Subscribe) {
      print('Subscribe');
    } else if (choice == Constants.SignOut) {
      print('SignOut');
    }
  }
}
