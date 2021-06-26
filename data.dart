import 'package:flutter/material.dart';

class ManageName {
  int id;
  String fname;
  String lname;
  bool checked;
  int sort;
  dynamic colorName;

  ManageName(
      this.id, this.fname, this.lname, this.checked, this.sort, this.colorName);
}

List<ManageName> mainDataList = [
  new ManageName(1, "Ram kamlesh", "Singh", false, 0, Colors.red),
  new ManageName(2, "Rohit", "Singh", false, 1, Colors.yellow),
  new ManageName(3, "Amit ", "Singh", false, 2, Colors.purple),
  new ManageName(4, "Mohit ", "Rahu", false, 3, Colors.blue),
  new ManageName(5, "Neha ", "Sharma", false, 4, Colors.amberAccent),
  new ManageName(6, "Mohit ", "Sahu", false, 5, Colors.blueGrey),
  new ManageName(7, "Priya ", "Sharma", false, 6, Colors.teal),
  new ManageName(8, "Akhilesh ", "Arora", false, 7, Colors.blue.shade200),
  new ManageName(9, "Aditaya ", "Sahu", false, 8, Colors.red.shade300),
  new ManageName(10, "Narendra ", "Pal", false, 9, Colors.grey[600]),
  new ManageName(11, "Amrita ", "Singh", false, 10, Colors.yellow[800]),
];
