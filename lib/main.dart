import 'package:demoapp/quickactionsheet/quicksheet.dart';
import 'package:demoapp/singleselect/singleselect.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/multiselect/multiselect.dart';
import 'package:demoapp/multiselect/styles.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                children: [
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
