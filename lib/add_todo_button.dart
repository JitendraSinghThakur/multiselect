import 'package:flutter/material.dart';
import 'package:multiselected/data.dart';
import 'package:multiselected/listdart.dart';
import 'hero_dialog_route.dart';

class OpenCustomerDetails extends StatefulWidget {
  const OpenCustomerDetails({Key? key}) : super(key: key);

  @override
  _OpenCustomerDetailsState createState() => _OpenCustomerDetailsState();
}

class _OpenCustomerDetailsState extends State<OpenCustomerDetails> {
  List<ManageName> datatoParent3 = [];
  void onDataChange3(val3) {
    textvalue = '';
    setState(() {
      datatoParent3 = val3;
      if (datatoParent3.length > 0) {
        datatoParent3.forEach((element) {
          if (element.checked) {
            textvalue +=
                " " + element.fname + " " + element.lname.toLowerCase();
          }
        });
      }
    });
  }

  String textvalue = "0 seleceted";

  void initState() {
    datatoParent3 = mainDataList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(HeroDialogRoute(builder: (context) {
            return _OpenBox(
                datatoParent2: datatoParent3,
                callback2: (val3) => onDataChange3(val3));
          }));
        },
        child: Hero(
          tag: _heroAddTodo,
          child: GestureDetector(
            child: Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Material(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width * 1,
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
                      width: MediaQuery.of(context).size.width * 1,
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
          ),
        ),
      ),
    );
  }
}

const String _heroAddTodo = 'add-todo-hero';

// ignore: must_be_immutable
class _OpenBox extends StatefulWidget {
  _OpenBox({Key? key, required this.datatoParent2, this.callback2})
      : super(key: key);
  final callback2;
  List<ManageName> datatoParent2;

  @override
  __OpenBoxState createState() => __OpenBoxState();
}

class __OpenBoxState extends State<_OpenBox> {
  // String data = 'no';
  void bindData() {
    // print("bindData");
    datatoParent = widget.datatoParent2;
  }

  List<ManageName> datatoParent = <ManageName>[];
  void listData2(val2) {
    widget.callback2(val2);
  }

  void onDataChange(val) {
    print(val);
    listData2(val);
    setState(() {
      datatoParent = val;
    });
  }

  void initState() {
    bindData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Hero(
          tag: _heroAddTodo,
          child: Material(
            color: Colors.white,
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      // width: MediaQuery.of(context).size.width * 0.90,
                      height: MediaQuery.of(context).size.height * 0.70,
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: ListSearch(
                            datatoParent: datatoParent,
                            callback: (val) => onDataChange(val)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
