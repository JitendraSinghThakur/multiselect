import 'package:flutter/material.dart';
import 'package:demoapp/data.dart';

class OpenCustomerDetails extends StatefulWidget {
  const OpenCustomerDetails({Key? key}) : super(key: key);

  @override
  _OpenCustomerDetailsState createState() => _OpenCustomerDetailsState();
}

class _OpenCustomerDetailsState extends State<OpenCustomerDetails> {
  bool isChecked = false;
  int count = 0;

  void listData(id, fname, lname, sort, checked, BuildContext context) {
    // var mydata=
    //  print("element.id" +data);
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
    isChecked = count == newDataList.length;
  }

  void selectAll() {
    newDataList.forEach((element) {
      element.checked = isChecked;
    });
    count = 0;
    newDataList.forEach((element) {
      if (element.checked) count++;
    });
  }

  TextEditingController _textController = TextEditingController();

  List<ManageName> newDataList = List.from(mainDataList);
  List<ManageName> newDataList2 = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((managename) =>
              managename.fname.toLowerCase().contains(value.toLowerCase()) ||
              managename.lname.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  doneAll() {
    textvalue = '';
    setState(() {
      if (newDataList.length > 0) {
        newDataList.forEach((element) {
          if (element.checked) {
            textvalue +=
                " " + element.fname + " " + element.lname.toLowerCase();
          }
        });
      }
    });
    print(textvalue);
  }

  call() {
    print("kamlesh");
    // newDataList2 = newDataList;
    newDataList2 = List.from(newDataList);
    setState(() {
      newDataList = newDataList;
    });
  }

  cancel() {
    // newDataList = List.from(newDataList);
    newDataList2 = newDataList;
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
                child: Text(textvalue),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        call();
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return StatefulBuilder(builder: (context, setState) {
                return AlertDialog(
                  insetPadding: EdgeInsets.all(0),
                  backgroundColor: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                  content: Builder(
                    builder: (context) {
                      var height = MediaQuery.of(context).size.height * 0.85;
                      var width = MediaQuery.of(context).size.width * .95;

                      return Container(
                        height: height,
                        width: width - 70,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[100],
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    child: TextField(
                                      controller: _textController,
                                      decoration: InputDecoration(
                                        hintText: 'search user...',
                                        border: InputBorder.none,
                                        prefixIcon: Icon(
                                          Icons.search,
                                          size: 18,
                                        ),
                                      ),
                                      onChanged: onItemChanged,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        margin: new EdgeInsets.only(
                                          left: 32,
                                        ),
                                        child: Text(
                                          count.toString(),
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          "/",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Container(
                                        child: Text(
                                          newDataList.length.toString(),
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.black),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 170,
                                      ),
                                      Container(
                                        child: Material(
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
                                                    color: Colors.blue,
                                                  )
                                                : count == 0
                                                    ? Icon(
                                                        Icons
                                                            .check_box_outline_blank_outlined,
                                                        color: Colors.blue,
                                                      )
                                                    : Icon(
                                                        Icons
                                                            .indeterminate_check_box,
                                                        color: Colors.blue,
                                                      ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 1,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: ListView.builder(
                                  itemCount: newDataList.length,
                                  itemBuilder: (context, index) {
                                    var data = newDataList[index];
                                    var data2 = newDataList[index];
                                    return ListTile(
                                      leading: Container(
                                        width: 32.0,
                                        height: 32.0,
                                        padding:
                                            EdgeInsets.all(2.0), // borde width
                                        decoration: BoxDecoration(
                                          color: data.colorName, // border color
                                          shape: BoxShape.circle,
                                        ),
                                        child: CircleAvatar(
                                            radius: 14.0,
                                            backgroundImage: AssetImage(
                                                'img/images/jitendra.jpeg')),
                                      ),
                                      title: Text(
                                        data.fname + " " + data.lname,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                      trailing: InkWell(
                                        onTap: () {
                                          setState(() {
                                            data.checked = !data.checked;
                                          });
                                          listData(
                                              data.id,
                                              data.fname,
                                              data.lname,
                                              data.sort,
                                              data.checked,
                                              context);
                                        },
                                        child: data.checked
                                            ? Icon(
                                                Icons.check_box,
                                                color: Colors.blue,
                                              )
                                            : Icon(
                                                Icons.check_box_outline_blank,
                                                color: Colors.blue,
                                              ),
                                      ),
                                      onTap: () {
                                        setState(() {
                                          data.checked = !data.checked;
                                        });
                                        listData(
                                            data.id,
                                            data.fname,
                                            data.lname,
                                            data.sort,
                                            data.checked,
                                            context);
                                      },
                                    );
                                  }),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        color: Colors.grey, width: 0.4)),
                              ),
                              child: Material(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 18.0, top: 20),
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(6),
                                          ),
                                          color: Colors.grey,
                                          border:
                                              Border.all(color: Colors.grey),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            cancel();
                                            Navigator.pop(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 6,
                                                bottom: 6,
                                                left: 25,
                                                right: 25),
                                            child: Text(
                                              "Cancel",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white,
                                                letterSpacing: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(6),
                                          ),
                                          color: Colors.blue,
                                          border:
                                              Border.all(color: Colors.blue),
                                        ),
                                        child: InkWell(
                                          onTap: () {
                                            doneAll();
                                            Navigator.pop(context);
                                          },
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                top: 6,
                                                bottom: 6,
                                                left: 35,
                                                right: 35),
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
              });
            });
      },
    );
  }
}
