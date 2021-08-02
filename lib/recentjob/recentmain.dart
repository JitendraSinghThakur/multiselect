import 'package:flutter/material.dart';
import 'boxcontainer.dart';
import 'customer.dart';
import 'joboverview.dart';
import 'recentphoto.dart';
import 'recentpicturelist.dart';
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
        backgroundColor: Color.fromARGB(255, 200, 28, 28),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            JobOverview(),
            WorkFlowPage(),
            BoxContainer(),
            Customer(),
            RecentPhotoFile(
              keyToDisplay: 'RECENT PHOTO & DOCUMNETS',
              type: 'PHOTO',
              defaultMessage: 'No images/doc found',
              imageData: imageDataList,
            ),
            RecentPhotoFile(
              keyToDisplay: 'RECENT ESTIMATES',
              type: 'ESTIMATE',
              defaultMessage: 'No estimate found',
              imageData: [],
            ),
            RecentPhotoFile(
              keyToDisplay: 'RECENT FORM & PROPOSAL',
              type: 'FORM',
              defaultMessage: 'No form proposal found',
              imageData: [],
            ),
          ],
        ),
      ),
    );
  }
}
