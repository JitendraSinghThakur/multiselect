import 'package:flutter/material.dart';

class DrawerListColors {
  int id;
  String name;
  dynamic colorName;
  int selectedBox;

  DrawerListColors(this.id, this.name, this.colorName, this.selectedBox);
}

List<DrawerListColors> drawerDataListColors = [
  new DrawerListColors(1, "Stage 1", Colors.red, 1),
  new DrawerListColors(2, "Stage 2", Colors.yellow, 1),
  new DrawerListColors(3, "Staged 3", Colors.purple, 1),
  new DrawerListColors(4, "Stage 4", Colors.blue, 1),
  new DrawerListColors(5, "Stage 5", Colors.amberAccent, 1),
  new DrawerListColors(6, "Stage 6", Colors.teal, 1),
  new DrawerListColors(7, "Stage 7", Colors.blue, 2),
  new DrawerListColors(8, "Stage 8", Colors.deepOrange, 3),
  new DrawerListColors(9, "Stage 9", Colors.red.shade300, 3),
  new DrawerListColors(10, "Stage 10", Colors.grey[600], 3),
  new DrawerListColors(11, "Stage 11", Colors.yellow[800], 3),
];
