import 'package:flutter/material.dart';

class JobOverview extends StatefulWidget {
  const JobOverview({Key? key}) : super(key: key);

  @override
  _JobOverviewState createState() => _JobOverviewState();
}

class _JobOverviewState extends State<JobOverview> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
          color: Color.fromARGB(255, 238, 238, 238),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "JOB OVERVIEW",
                style: TextStyle(
                    color: Color.fromARGB(255, 196, 28, 26),
                    letterSpacing: .5,
                    fontSize: 13),
              ),
              Container(
                padding:
                    EdgeInsets.only(top: 3, bottom: 3, left: 10, right: 10),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 196, 28, 26),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text(
                  "VIEW MORE",
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 0,
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            print("ontap");
          },
          onLongPress: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return StatefulBuilder(builder: (context, setState) {
                    return AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.zero,
                      backgroundColor: Colors.white,
                      content: Builder(builder: (context) {
                        return Container(
                          height: 380,
                          width: MediaQuery.of(context).size.width - 40,
                          child: Column(
                            children: [
                              // Top
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 40,
                                color: Color(0xff357ebd),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(
                                        "JOB DESCRIPTION",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Text(
                                        "Trade Scripts",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromARGB(
                                                255, 200, 27, 27)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // middle

                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.all(8.0),
                                  child: TextField(
                                    maxLines: 99,
                                    decoration: InputDecoration(
                                      alignLabelWithHint: mounted,
                                      hintText: "Comment!",
                                      border: OutlineInputBorder(),
                                    ),
                                  ),
                                ),
                              ),
                              // bottom
                              Container(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                height: 40,
                                color: Color.fromARGB(255, 241, 241, 241),
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
          child: Container(
            padding: EdgeInsets.all(15),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/descriptionpage');
              },
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Description",
                          style: TextStyle(
                              color: Color(0xff444444),
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1),
                        ),
                      )),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("xyhx",
                          style: TextStyle(
                              color: Color(0xff444444),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 1)))
                ],
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                  color: Color.fromARGB(206, 206, 206, 255), width: 2),
              // bottom: BorderSide(
              //     color: Color.fromARGB(206, 206, 206, 255), width: 2),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  color: Color.fromARGB(255, 60, 135, 171),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 15,
                    ),
                    Text(
                      "Added in Progress Board(4)",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
