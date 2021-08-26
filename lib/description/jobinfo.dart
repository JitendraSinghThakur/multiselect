import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class JobInfoPage extends StatefulWidget {
  const JobInfoPage({Key? key}) : super(key: key);

  @override
  _JobInfoPageState createState() => _JobInfoPageState();
}

class _JobInfoPageState extends State<JobInfoPage> {
  bool valueNull = true;
  bool valueNull2 = true;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        if (selectedDate == picked) {
          valueNull = false;
        } else {
          valueNull = true;
        }
      });
  }

  DateTime selectedDateSigned = DateTime.now();

  Future<void> _selectDateSigned(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDateSigned,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDateSigned)
      setState(() {
        selectedDateSigned = picked;
        if (selectedDateSigned == picked) {
          valueNull2 = false;
        } else {
          valueNull2 = true;
        }
      });
  }
final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10, bottom: 10),
          padding: EdgeInsets.only(left: 10, right: 10, top: 2, bottom: 2),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "JOB INFO",
                  style: TextStyle(
                      color: Color.fromARGB(255, 196, 28, 26),
                      letterSpacing: .5,
                      fontSize: 13),
                ),
              ],
            ),
          ),
        ),
        ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            ListTile(
              title: Text(
                "Lead #",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "a998- 1070",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text(
                "Job #",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "asa- 132",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Divider(
              height: 5,
            ),
            ListTile(
                title: Text(
                  "Job Name",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  "...",
                  style: TextStyle(fontSize: 15),
                ),
                trailing: InkWell(
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return StatefulBuilder(
                                builder: (context, setState) {
                              return AlertDialog(
                                contentPadding: EdgeInsets.zero,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                                content: Builder(builder: (context) {
                                  return Container(
                                    height: 130,
                                    width:
                                        MediaQuery.of(context).size.width - 40,
                                    child: Column(
                                      children: [
                                        // Top
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              40,
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10, top: 10),
                                          height: 40,
                                          color: Color(0xff357ebd),
                                          child: Text(
                                            "JOB NAME",
                                            style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        // middle

                                        Container(
                                          padding: EdgeInsets.only(left: 30),
                                          height: 50,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                border: InputBorder.none,
                                                hintText: 'Enter Job Name'),
                                          ),
                                        ),
                                        // bottom
                                        Container(
                                          padding: EdgeInsets.only(
                                              left: 10, right: 10),
                                          height: 40,
                                          color: Color.fromARGB(
                                              255, 241, 241, 241),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Container(
                                                  child: Text(
                                                    "CANCEL",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                child: Container(
                                                  child: Text(
                                                    "SAVE",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }),
                              );
                            });
                          });
                    },
                    child: Icon(
                      Icons.note_alt_outlined,
                      size: 20,
                      color: Colors.black,
                    ))),
            Divider(
              height: 5,
            ),
            ListTile(
                title: Text(
                  "Job Contract Signed Date",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  valueNull2
                      ? "..."
                      : "${selectedDateSigned.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 15),
                ),
                trailing: InkWell(
                    onTap: () => _selectDateSigned(context),
                    child: Icon(
                      Icons.note_alt_outlined,
                      color: Colors.black,
                      size: 20,
                    ))),
            Divider(
              height: 5,
            ),
            ListTile(
                title: Text(
                  "Job Completion Date",
                  style: TextStyle(fontSize: 15),
                ),
                subtitle: Text(
                  valueNull ? "..." : "${selectedDate.toLocal()}".split(' ')[0],
                  style: TextStyle(fontSize: 15),
                ),
                trailing: InkWell(
                    onTap: () => _selectDate(context),
                    child: Icon(
                      Icons.note_alt_outlined,
                      size: 20,
                      color: Colors.black,
                    ))),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text(
                "Job Address",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "1554 Ashton Old Road M11 1HJ",
                style: TextStyle(fontSize: 15),
              ),
            ),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text(
                "Stage",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "Second Last Stage",
                style: TextStyle(
                    fontSize: 15, color: Color.fromARGB(255, 102, 102, 0)),
              ),
            ),
            Divider(
              height: 5,
            ),
            ListTile(
              title: Text(
                "In Stage Since",
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(
                "04/21/2021 02:55 AM",
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        )
      ],
    );
  }
}
