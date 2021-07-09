import 'package:flutter/material.dart';

import 'popoverList.dart';

class PopOverpage extends StatefulWidget {
  const PopOverpage({Key? key}) : super(key: key);

  @override
  _PopOverpageState createState() => _PopOverpageState();
}

class _PopOverpageState extends State<PopOverpage> {
  final GlobalKey _menuKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    final button = new PopupMenuButton<String>(
      onSelected: choiceAction,
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem<String>(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );

    return PopupMenuButton(
      offset: Offset(-110, 50),
      onSelected: choiceAction,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(color: Colors.blueAccent),
        child: Text(
          'click here',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      itemBuilder: (BuildContext context) {
        return Constants.choices.map((String choice) {
          return PopupMenuItem(
            value: choice,
            child: Text(choice),
          );
        }).toList();
      },
    );
  }

  void choiceAction(String choice) {
    if (choice == Constants.Settings) {
      print('Settings');
    } else if (choice == Constants.Subscribe) {
      print('Subscribe');
    } else if (choice == Constants.SignOut) {
      print('SignOut');
    }
  }
}
