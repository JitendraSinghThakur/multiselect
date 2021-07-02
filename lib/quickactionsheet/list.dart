import 'package:flutter/material.dart';

class QuichSheetData {
  int id;
  String actionName;
  dynamic iconName;

  QuichSheetData(this.id, this.actionName, this.iconName);
}

List<QuichSheetData> mainDataList = [
  new QuichSheetData(
      1, "Edit Job", Icon(Icons.edit, color: Colors.red, size: 15)),
  new QuichSheetData(
      2, "Edit Customer", Icon(Icons.edit, color: Colors.red, size: 15)),
  new QuichSheetData(
      3, "View", Icon(Icons.view_agenda, color: Colors.red, size: 15)),
  new QuichSheetData(
      4, "Email", Icon(Icons.email, color: Colors.red, size: 15)),
  new QuichSheetData(
      5, "Follow-up Call Notes", Icon(Icons.call, color: Colors.red, size: 15)),
  new QuichSheetData(
      6, "Job Flags", Icon(Icons.flag, color: Colors.red, size: 15)),
  new QuichSheetData(7, "Share Customer Web Page",
      Icon(Icons.share, color: Colors.red, size: 15)),
  new QuichSheetData(8, "Add to Progress Board",
      Icon(Icons.add_box_outlined, color: Colors.red, size: 15)),
  new QuichSheetData(
      9, "Job Schedule", Icon(Icons.schedule, color: Colors.red, size: 15)),
  new QuichSheetData(
      10, "Job Price", Icon(Icons.money, color: Colors.red, size: 15)),
  new QuichSheetData(
      11, "Delete", Icon(Icons.delete, color: Colors.red, size: 15)),
  new QuichSheetData(
      12, "Delete", Icon(Icons.delete, color: Colors.red, size: 15)),
  new QuichSheetData(
      13, "Delete", Icon(Icons.delete, color: Colors.red, size: 15)),
  new QuichSheetData(
      14, "Delete", Icon(Icons.delete, color: Colors.red, size: 15)),
];
