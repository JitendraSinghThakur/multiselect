import 'package:flutter/material.dart';

import 'list.dart';

class QuichActionSheet extends StatefulWidget {
  const QuichActionSheet({Key? key}) : super(key: key);

  @override
  _QuichActionSheetState createState() => _QuichActionSheetState();
}

class _QuichActionSheetState extends State<QuichActionSheet> {
  List<QuichSheetData> newDataList = List.from(mainDataList);

  Color cancelIcons = const Color(0xF2347EBD);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "MODAL BOTTOM SHEET EXAMPLE",
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  letterSpacing: 0.4,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                          color: cancelIcons,
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
                                  itemCount: newDataList.length,
                                  itemBuilder: (context, index) {
                                    var data = newDataList[index];
                                    return ListTile(
                                      leading: data.iconName,
                                      title: Transform.translate(
                                        offset: Offset(-28, -7),
                                        child: Text(
                                          data.actionName,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                      // minVerticalPadding: 0,
                                    );
                                  }),
                            ),
                          ],
                        );
                      });
                },
                child: Text("Open Model Sheet")),
          ],
        ),
      ),
    );
  }
}
