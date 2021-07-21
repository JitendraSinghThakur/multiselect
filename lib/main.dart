import 'package:demoapp/workflow/tringle.dart';

import '../workflow/workflowpage.dart';
import '../customeDrawer/customedrawer.dart';
import '../quickactionsheet/quicksheet.dart';
import '../singleselect/singleselect.dart';
import 'package:flutter/material.dart';
import '../multiselect/multiselect.dart';
import '../multiselect/styles.dart';
import 'popover/popOver.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      // home: const Home(
      //   title: "PopOver",
      // ),
      routes: {
        "/": (context) => Home(title: "Popover"),
        "/workflowpage": (context) => WorkFlowPage(),
        "/tringlepage": (context) => StackAndPositionedDemo(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Task"),
        ),
      ),
      endDrawer: CustomeDrawer(),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.whiteColor,
                  AppColors.whiteColor,
                ],
                stops: [0.0, 1],
              ),
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PopOverpage(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OpenCustomerDetails(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: SingleUserSelect(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child: QuichActionSheet(),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/workflowpage');
                      },
                      child: Text("Open WorkFlow"),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/tringlepage');
                      },
                      child: Text("Open trinagle"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
