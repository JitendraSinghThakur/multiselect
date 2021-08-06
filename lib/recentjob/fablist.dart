import 'package:flutter/material.dart';

class QuichSheetData {
  int id;
  String actionName;
  dynamic iconName;

  QuichSheetData(this.id, this.actionName, this.iconName);
}

List<QuichSheetData> fabActionList = [
  new QuichSheetData(
    1,
    "Call",
    Icons.call,
  ),
  new QuichSheetData(
    2,
    "Text",
    Icons.text_fields,
  ),
  new QuichSheetData(
    3,
    "Email",
    Icons.email,
  ),
  new QuichSheetData(
    4,
    "Job Note",
    Icons.notes,
  ),
  new QuichSheetData(
    5,
    "Follow-up",
    Icons.follow_the_signs,
  ),
  new QuichSheetData(
    6,
    "Appointment",
    Icons.schedule,
  ),
  new QuichSheetData(
    7,
    "Message",
    Icons.message,
  ),
  new QuichSheetData(
    8,
    "Photo",
    Icons.photo,
  ),
  new QuichSheetData(
    9,
    "Measurement",
    Icons.nat,
  ),
  new QuichSheetData(
    10,
    "Estimating",
    Icons.ev_station,
  ),
  new QuichSheetData(
    11,
    "Form/ Proposal",
    Icons.work,
  ),
  new QuichSheetData(
    12,
    "Job Price",
    Icons.format_align_center,
  ),
  new QuichSheetData(
    13,
    "Form/ Proposal",
    Icons.work_off,
  ),
  new QuichSheetData(
    14,
    "Work crew",
    Icons.work_off_outlined,
  ),
  new QuichSheetData(
    15,
    "Job Invoice",
    Icons.format_align_justify,
  ),
  new QuichSheetData(
    16,
    "Bill",
    Icons.blur_circular,
  ),
  new QuichSheetData(
    17,
    "Refund",
    Icons.rule_folder_rounded,
  ),
  new QuichSheetData(
    18,
    "Clock In",
    Icons.watch,
  ),
];
