import 'package:flutter/material.dart';

class DrawerListColors {
  int id;
  String name;
  dynamic colorName;
  String selectedBox;

  DrawerListColors(this.id, this.name, this.colorName, this.selectedBox);
}

List<DrawerListColors> drawerDataListColors = [
  new DrawerListColors(1, "Stage 1", Colors.red, "no selected"),
  new DrawerListColors(2, "Stage 2", Colors.yellow, "selected"),
  new DrawerListColors(3, "Staged 3", Colors.purple, "no selected"),
  new DrawerListColors(4, "Stage 4", Colors.blue, "selected"),
  new DrawerListColors(5, "Stage 5", Colors.amberAccent, " no selected"),
  new DrawerListColors(6, "Stage 6", Colors.teal, "selected"),
  new DrawerListColors(7, "Stage 7", Colors.blue, "selected"),
  new DrawerListColors(8, "Stage 8", Colors.deepOrange, "selected"),
  new DrawerListColors(9, "Stage 9", Colors.red.shade300, "selected"),
  new DrawerListColors(10, "Stage 10", Colors.grey[600], "selected"),
  new DrawerListColors(11, "Stage 11", Colors.yellow[800], " no selected"),
];
