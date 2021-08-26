import 'package:flutter/material.dart';

class SecondaryDrawerData {
  int id;
  String name;
  dynamic iconName;
  dynamic colorName;
  bool isActivated;
  SecondaryDrawerData(
      this.id, this.name, this.iconName, this.colorName, this.isActivated);
}

List<SecondaryDrawerData> secondaryDataList = [
  new SecondaryDrawerData(1, "Job Overview", Icons.remove_red_eye_outlined,
      Colors.yellow[800], false),
  new SecondaryDrawerData(
      2, "Measurements", Icons.dehaze_rounded, Colors.yellow[800], false),
  new SecondaryDrawerData(
      3, "Estimatings", Icons.message, Colors.yellow[800], false),
  new SecondaryDrawerData(
      4, "Forms/Proposals", Icons.email, Colors.yellow[800], false),
  new SecondaryDrawerData(
      5, "Materials", Icons.notifications, Colors.yellow[800], false),
  new SecondaryDrawerData(
      6, "Work Orders", Icons.photo_album_sharp, Colors.yellow[800], false),
  new SecondaryDrawerData(
      7, "Photos & Documents", Icons.phone, Colors.yellow[800], false),
  new SecondaryDrawerData(
      8, "Financials", Icons.settings_suggest, Colors.yellow[800], false),
  new SecondaryDrawerData(
      9, "Follows-ups", Icons.description, Colors.yellow[800], false),
  new SecondaryDrawerData(10, "Work Crew Notes", Icons.workspaces_filled,
      Colors.yellow[800], false),
  new SecondaryDrawerData(
      11, "Job Notes", Icons.dehaze_outlined, Colors.yellow[800], false),
  new SecondaryDrawerData(
      12, "Tasks", Icons.description_rounded, Colors.yellow[800], false),
  new SecondaryDrawerData(
      12, "Tasks", Icons.description_rounded, Colors.yellow[800], false),
  new SecondaryDrawerData(
      12, "Tasks", Icons.description_rounded, Colors.yellow[800], false),
  new SecondaryDrawerData(
      12, "Tasks", Icons.description_rounded, Colors.yellow[800], false),
];
