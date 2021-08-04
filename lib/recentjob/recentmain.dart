import '../recentjob/secondaryDrawer.dart';
import 'package:flutter/material.dart';
import 'boxcontainer.dart';
import 'customer.dart';
import 'fablist.dart';
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
        backgroundColor: Color.fromARGB(255, 200, 27, 27),
        title: Text("Recent Job"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (builder) {
                return Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(3))),
                  height: 500,

                  child: GridView.extent(
                    maxCrossAxisExtent: 130,
                    // crossAxisCount: 3,
                    // // padding: EdgeInsets.all(5),
                    // crossAxisSpacing: 90,
                    // // mainAxisSpacing: 100,
                    children: fabActionList.map((data) {
                      return Column(
                        children: [
                          Container(
                            child: data.iconName,
                          ),
                          Container(
                            child: Text(
                              data.actionName,
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(205, 102, 102, 102)),
                            ),
                          ),
                        ],
                      );
                    }).toList(),
                  ),

                  //  GridView.count(
                  //   crossAxisCount: 3,
                  //   // padding: EdgeInsets.all(5),
                  //   crossAxisSpacing: 90,
                  //   // mainAxisSpacing: 100,
                  //   children: fabActionList.map((data) {
                  //     return Column(
                  //       children: [
                  //         Container(
                  //           child: data.iconName,
                  //         ),
                  //         Container(
                  //           child: Text(
                  //             data.actionName,
                  //             maxLines: 1,
                  //             softWrap: false,
                  //             overflow: TextOverflow.visible,
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(
                  //                 fontSize: 14,
                  //                 color: Color.fromARGB(205, 102, 102, 102)),
                  //           ),
                  //         ),
                  //       ],
                  //     );
                  //   }).toList(),
                  // ),
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
