import 'package:demoapp/description/jobinfo.dart';
import 'package:demoapp/dragabledemo.dart';

import '../description/contactperson.dart';
import '../description/secondaryDrawerdes.dart';
import '../recentjob/secondaryDrawerview.dart';
import '../recentjob/secondaryData.dart';
import '../customeDrawer/customedrawer.dart';
import 'package:flutter/material.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({Key? key}) : super(key: key);

  @override
  _DescriptionPageState createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  SecondaryDrawerData selectedMenuValue = new SecondaryDrawerData(
      -1, "", Icons.access_alarm_rounded, Colors.yellow[800], false);
  void callback(SecondaryDrawerData selectedMenuValue1, String action) {
    setState(() {
      selectedMenuValue = selectedMenuValue1;
    });
  }

  var scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44),
            child: AppBar(
              automaticallyImplyLeading: false,
              actions: <Widget>[
                Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: GestureDetector(
                      onTap: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                      child: Icon(Icons.menu),
                    )),
              ],
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 16,
                    ),
                  ),
                  Text(
                    'yrtxyrx (anuj doing firebase)',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  )
                  // Your widgets here
                ],
              ),
              titleSpacing: 0,
              backgroundColor: Colors.red[900],
              centerTitle: false,
            ),
          ),
          drawer: Container(
            width: 273,
            margin: EdgeInsets.only(
              top: 44,
            ),
            child: SecondDrawerView(
              selectedMenu: selectedMenuValue,
              callback: (SecondaryDrawerData selectedMenuData, String action) {
                callback(selectedMenuData, action);
              },
            ),
          ),
          endDrawer: CustomeDrawer(),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SecondaryDrawerDes(
                      callback: (String action) {
                        // Scaffold.of(context).openDrawer();
                        scaffoldKey.currentState!.openDrawer();
                        // callback(action);
                      },
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
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
                    ContactPerson(),
                    JobInfoPage(),
                  ],
                ),
              ),
              DemodragablePage()
            ],
          )),
    );
  }
}
