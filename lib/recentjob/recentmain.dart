import 'package:demoapp/recentjob/secondaryDrawer.dart';
import 'package:flutter/material.dart';
import 'boxcontainer.dart';
import 'customer.dart';
import 'joboverview.dart';
import 'recentphoto.dart';
import 'recentpicturelist.dart';
import 'workflowpage.dart';
import '../quickactionsheet/list.dart';

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
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
              ),
              isScrollControlled: true,
              enableDrag: true,
              context: context,
              backgroundColor: Colors.white,
              builder: (context) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20.0, bottom: 2, left: 24, right: 24),
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Text(
                                "QUICK ACTIONS",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                            Container(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(
                                  Icons.clear,
                                  size: 25,
                                  // color: cancelIcons,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height - 200,
                      child: ListView.builder(
                          itemCount: quickActionList.length,
                          itemBuilder: (context, index) {
                            var data = quickActionList[index];
                            return ListTile(
                              leading: data.iconName,
                              title: Transform.translate(
                                offset: Offset(-28, -7),
                                child: Text(
                                  data.actionName,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                );
              });
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
            SecondaryDrawer(),
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
