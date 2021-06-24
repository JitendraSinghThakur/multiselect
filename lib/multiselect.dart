import 'package:flutter/material.dart';
import 'package:demoapp/data.dart';

class OpenCustomerDetails extends StatefulWidget {
  const OpenCustomerDetails({Key? key}) : super(key: key);

  @override
  _OpenCustomerDetailsState createState() => _OpenCustomerDetailsState();
}

class _OpenCustomerDetailsState extends State<OpenCustomerDetails> {
  List<ManageName> newDataList = List.from(mainDataList);
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
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

    return InkWell(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                //  height: MediaQuery.of(context).size.height * 1,
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border(
                      top: BorderSide(width: 1.2),
                      left: BorderSide(width: 1.2),
                      right: BorderSide(width: 1.2)),
                ),
                child: Text(
                  "Selected Values",
                  style: TextStyle(letterSpacing: 0.5),
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
                child: Text("0"),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                backgroundColor: Colors.grey[100],
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                content: Builder(
                  builder: (context) {
                    var height = MediaQuery.of(context).size.height;
                    var width = MediaQuery.of(context).size.width;

                    return Container(
                      height: height - 200,
                      width: width - 70,
                      child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  // controller: _textController,
                                  decoration: InputDecoration(
                                    hintText: 'search user...',
                                    border: InputBorder.none,
                                    prefixIcon: Icon(
                                      Icons.search,
                                      size: 18,
                                    ),
                                  ),
                                  // onChanged: onItemChanged,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13.0),
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.09,
                                            child: Text("100")),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.01,
                                            child: Text("/")),
                                      ),
                                      Flexible(
                                        flex: 1,
                                        child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.09,
                                            child: Text("100")),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 138.0),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.60,
                                            child: Checkbox(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                  side: BorderSide(
                                                      color: Colors.red)),
                                              value: isChecked,
                                              onChanged: (bool? value) {
                                                setState(() {
                                                  value = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.all(12.0),
                              children: newDataList.map((data) {
                                return ListTile(
                                  leading: Container(
                                    width: 32.0,
                                    height: 32.0,
                                    padding: EdgeInsets.all(2.0), // borde width
                                    decoration: BoxDecoration(
                                      color: Colors.red, // border color
                                      shape: BoxShape.circle,
                                    ),
                                    child: CircleAvatar(
                                        radius: 17.0,
                                        backgroundImage: AssetImage(
                                            'img/images/jitendra.jpeg')),
                                  ),
                                  title: Text(
                                    data.fname + " " + data.lname,
                                    style: TextStyle(fontSize: 14),
                                  ),
                                  trailing: Checkbox(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        side: BorderSide(color: Colors.red)),
                                    checkColor: Colors.white,
                                    fillColor: MaterialStateColor.resolveWith(
                                        getColor),
                                    value: data.checked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        data.checked = !data.checked;
                                      });
                                    },
                                  ),
                                  onTap: () {
                                    setState(() {
                                      data.checked = !data.checked;
                                    });
                                  },
                                );
                              }).toList(),
                            ),
                          ),
                          // ListTile(
                          //   leading: CircleAvatar(
                          //       radius: 17.0,
                          //       backgroundImage:
                          //           AssetImage('img/images/jitendra.jpeg')),
                          //   title: Text(
                          //     "Sanjay",
                          //     style: TextStyle(fontSize: 14),
                          //   ),
                          //   trailing: Checkbox(
                          //     checkColor: Colors.white,
                          //     fillColor:
                          //         MaterialStateProperty.resolveWith(getColor),
                          //     value: isChecked,
                          //     onChanged: (bool? value) {
                          //       setState(() {
                          //         isChecked = value!;
                          //       });
                          //     },
                          //   ),
                          // ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border(
                                  top: BorderSide(
                                      color: Colors.grey, width: 0.4)),
                            ),
                            child: Row(
                              children: [
                                // SizedBox(width: 40),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 20.0, left: 20),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black38),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.all(2)),
                                        textStyle: MaterialStateProperty.all(
                                          TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Cancel"),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 40),
                                Padding(
                                  padding: const EdgeInsets.only(top: 20.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.lightBlueAccent),
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.all(2)),
                                        textStyle: MaterialStateProperty.all(
                                          TextStyle(fontSize: 15),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text("Done"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            });
      },
    );
  }
}
