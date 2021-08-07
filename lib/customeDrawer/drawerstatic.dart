import 'package:flutter/material.dart';

class DrawerListStatic {
  int id;
  String name;
  dynamic iconName;
  dynamic colorName;
  bool isActivated;

  DrawerListStatic(
      this.id, this.name, this.iconName, this.colorName, this.isActivated);
}

List<DrawerListStatic> drawerDataListStatic = [
  new DrawerListStatic(
      1, "Appointments", Icons.calendar_today, Colors.yellow[800], false),
  new DrawerListStatic(
      2, "Task", Icons.dehaze_rounded, Colors.yellow[800], false),
  new DrawerListStatic(
      3, "Messaging", Icons.message, Colors.yellow[800], false),
  new DrawerListStatic(4, "Email", Icons.email, Colors.yellow[800], false),
  new DrawerListStatic(
      5, "Notofications", Icons.notifications, Colors.yellow[800], false),
  new DrawerListStatic(6, "Instant Photo Gallary", Icons.photo_album_sharp,
      Colors.yellow[800], false),
  new DrawerListStatic(
      7, "Company Contacts", Icons.phone, Colors.yellow[800], false),
  new DrawerListStatic(8, "Third Party Tools", Icons.settings_suggest,
      Colors.yellow[800], false),
  new DrawerListStatic(
      9, "Templates", Icons.description, Colors.yellow[800], false),
  new DrawerListStatic(
      10, "Workflow", Icons.workspaces_filled, Colors.yellow[800], false),
  new DrawerListStatic(
      11, "Support", Icons.dehaze_outlined, Colors.yellow[800], false),
  new DrawerListStatic(
      12, "About", Icons.description_rounded, Colors.yellow[800], false),
  new DrawerListStatic(
      13, "My Profile", Icons.person, Colors.yellow[800], false),
  new DrawerListStatic(
      14, "Settings", Icons.toc_outlined, Colors.yellow[800], false),
  new DrawerListStatic(
      15, "Uploads", Icons.upload_rounded, Colors.yellow[800], false),
  new DrawerListStatic(
      16, "Logout", Icons.settings_power_outlined, Colors.yellow[800], false),
];
