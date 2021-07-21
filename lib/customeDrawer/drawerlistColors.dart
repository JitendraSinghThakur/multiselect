import 'package:flutter/material.dart';

class DrawerListColors {
  int id;
  String name;
  dynamic colorName;

  DrawerListColors(this.id, this.name, this.colorName);
}

List<DrawerListColors> drawerDataListColors = [
  new DrawerListColors(1, "Stage 1", Colors.red),
  new DrawerListColors(2, "Stage 2", Colors.yellow),
  new DrawerListColors(3, "Stage 3", Colors.purple),
  new DrawerListColors(4, "Stage 4", Colors.blue),
  new DrawerListColors(5, "Stage 5", Colors.amberAccent),
  new DrawerListColors(6, "Stage 6", Colors.teal),
  new DrawerListColors(7, "Stage 7", Colors.blue),
  new DrawerListColors(8, "Stage 8", Colors.deepOrange),
  new DrawerListColors(9, "Stage 9", Colors.red.shade300),
  new DrawerListColors(10, "Stage 10", Colors.grey[600]),
  new DrawerListColors(11, "Stage 11", Colors.yellow[800]),
];
