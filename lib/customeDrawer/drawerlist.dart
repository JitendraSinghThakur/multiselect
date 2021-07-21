import 'package:flutter/material.dart';

class DrawerList {
  int id;
  String name;
  dynamic iconName;
  dynamic colorName;

  DrawerList(this.id, this.name, this.iconName, this.colorName);
}

List<DrawerList> drawerDataList = [
  new DrawerList(1, "Home", Icons.home, Colors.red),
  new DrawerList(2, "My Daily Plan", Icons.summarize, Colors.yellow),
  new DrawerList(3, "Clock In", Icons.watch_later_outlined, Colors.purple),
  new DrawerList(4, "Clock Summary", Icons.summarize_outlined, Colors.blue),
  new DrawerList(5, "Create An Appointment", Icons.calendar_view_month,
      Colors.amberAccent),
  new DrawerList(6, "Add Lead/ Prospect / Customer", Icons.person_add_alt_sharp,
      Colors.teal),
  new DrawerList(
      7, "Recent Jobs", Icons.watch_later_rounded, Colors.blue.shade200),
  new DrawerList(
      8, "Take Instant Photo", Icons.photo_camera, Colors.blue.shade200),
  new DrawerList(9, "Staff Calendar", Icons.perm_contact_calendar_rounded,
      Colors.red.shade300),
  new DrawerList(10, "Production Calendar", Icons.perm_contact_calendar_rounded,
      Colors.grey[600]),
  new DrawerList(11, "Refresh", Icons.refresh, Colors.yellow[800]),
];
