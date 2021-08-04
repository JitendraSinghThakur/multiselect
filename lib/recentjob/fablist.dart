import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class QuichSheetData {
  int id;
  String actionName;
  dynamic iconName;

  QuichSheetData(this.id, this.actionName, this.iconName);
}

// CupertinoIcons
List<QuichSheetData> fabActionList = [
  new QuichSheetData(1, "Call",
      Icon(Icons.call, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      2,
      "Text",
      Icon(Icons.text_fields,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(3, "Email",
      Icon(Icons.email, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(4, "Job Note",
      Icon(Icons.notes, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      5,
      "Follow-up",
      Icon(Icons.follow_the_signs,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      6,
      "Appointment",
      Icon(Icons.schedule,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(7, "Message",
      Icon(Icons.message, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(8, "Photo",
      Icon(Icons.photo, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(9, "Measurement",
      Icon(Icons.nat, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      10,
      "Estimating",
      Icon(Icons.ev_station,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(11, "Form/ Proposal",
      Icon(Icons.work, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      12,
      "Job Price",
      Icon(Icons.format_align_center,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      13,
      "Form/ Proposal",
      Icon(Icons.work_off,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      14,
      "Work crew",
      Icon(Icons.work_off_outlined,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      15,
      "Job Invoice",
      Icon(Icons.format_align_justify,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      16,
      "Bill",
      Icon(Icons.blur_circular,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(
      17,
      "Refund",
      Icon(Icons.rule_folder_rounded,
          color: Color.fromARGB(205, 102, 102, 102), size: 20)),
  new QuichSheetData(18, "Clock In",
      Icon(Icons.watch, color: Color.fromARGB(205, 102, 102, 102), size: 20)),
];
