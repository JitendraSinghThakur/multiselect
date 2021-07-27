import 'package:flutter/material.dart';

import 'boxcontainer.dart';
import 'customer.dart';
import 'joboverview.dart';
import 'workflowpage.dart';

class RecentMain extends StatefulWidget {
  const RecentMain({Key? key}) : super(key: key);

  @override
  _RecentMainState createState() => _RecentMainState();
}

class _RecentMainState extends State<RecentMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recent Job"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [JobOverview(), WorkFlowPage(), BoxContainer(), Customer()],
        ),
      ),
    );
  }
}
