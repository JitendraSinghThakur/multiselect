import 'package:demoapp/customeDrawer/customedrawer.dart';

import '../recentjob/secondaryDrawer.dart';
import 'package:flutter/material.dart';
import 'boxcontainer.dart';
import 'customer.dart';
import 'fablist.dart';
import 'joboverview.dart';
import 'recentphoto.dart';
import 'recentpicturelist.dart';
import 'secondaryDrawerview.dart';
import 'workflowpage.dart';

class RecentMain extends StatefulWidget {
  const RecentMain({Key? key}) : super(key: key);

  @override
  _RecentMainState createState() => _RecentMainState();
}

class _RecentMainState extends State<RecentMain> {
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
                  '2105-85746 (simran bhardwaj)',
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
          child: SecondDrawerView(),
        ),
        endDrawer: CustomeDrawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                builder: (builder) {
                  return Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          topLeft: Radius.circular(10),
                        ),
                        color: Colors.white),
                    height: 430,
                    // height: MediaQuery.of(context).size.height -
                    //     (MediaQuery.of(context).size.height / 3),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent:
                                MediaQuery.of(context).size.width / 3,
                            childAspectRatio: 3 / 2,
                            crossAxisSpacing: 0,
                            mainAxisSpacing: 0),
                        itemCount: fabActionList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Icon(
                                    fabActionList[index].iconName,
                                    color: Color.fromARGB(255, 102, 102, 102),
                                    size: 20,
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    fabActionList[index].actionName,
                                    maxLines: 1,
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 102, 102, 102),
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    //  GridView.extent(
                    //   maxCrossAxisExtent: 130,
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
              SecondaryDrawer(
                callback: (String action) {
                  // Scaffold.of(context).openDrawer();
                  scaffoldKey.currentState!.openDrawer();
                  // callback(action);
                },
              ),
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
      ),
    );
  }
}
