import 'package:flutter/material.dart';

class DrawerList {
  int id;
  String name;
  dynamic iconName;
  dynamic colorName;

  DrawerList(this.id, this.name, this.iconName, this.colorName);
}

List<DrawerList> drawerDataListColors = [
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
  new DrawerList(-1, "Divider", null, null),
  new DrawerList(12, "Appointments", Icons.calendar_today, Colors.yellow[800]),
  new DrawerList(13, "Task", Icons.dehaze_rounded, Colors.yellow[800]),
  new DrawerList(14, "Messaging", Icons.message, Colors.yellow[800]),
  new DrawerList(15, "Email", Icons.email, Colors.yellow[800]),
  new DrawerList(16, "Notofications", Icons.notifications, Colors.yellow[800]),
  new DrawerList(
      17, "Instant Photo Gallary", Icons.photo_album_sharp, Colors.yellow[800]),
  new DrawerList(18, "Company Contacts", Icons.phone, Colors.yellow[800]),
  new DrawerList(
      19, "Third Party Tools", Icons.settings_suggest, Colors.yellow[800]),
  new DrawerList(20, "Templates", Icons.description, Colors.yellow[800]),
  new DrawerList(21, "Workflow", Icons.workspaces_filled, Colors.yellow[800]),
  new DrawerList(22, "Support", Icons.dehaze_outlined, Colors.yellow[800]),
  new DrawerList(23, "About", Icons.description_rounded, Colors.yellow[800]),
  new DrawerList(24, "My Profile", Icons.person, Colors.yellow[800]),
  new DrawerList(25, "Settings", Icons.toc_outlined, Colors.yellow[800]),
  new DrawerList(26, "Uploads", Icons.upload_rounded, Colors.yellow[800]),
  new DrawerList(
      27, "Logout", Icons.settings_power_outlined, Colors.yellow[800]),
];
