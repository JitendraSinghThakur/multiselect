import 'package:flutter/material.dart';

class ManageName {
  int id;
  String name;
  bool checked;
  int sort;
  dynamic colorName;

  ManageName(this.id, this.name, this.checked, this.sort, this.colorName);
}

ManageName unassignedData =
    ManageName(-1, "unassigned", false, -1, Colors.blue);

List<ManageName> mainDataList = [
  new ManageName(1, "Ram Singh", false, 0, Colors.red),
  new ManageName(2, "Pawan Arora Dev", false, 1, Colors.yellow),
  new ManageName(3, "Amit Singh", false, 2, Colors.purple),
  new ManageName(4, "Mohit Rahu ", false, 3, Colors.blue),
  new ManageName(5, "Neha Sharma ", false, 4, Colors.amberAccent),
  new ManageName(6, "Mohit Sahu", false, 5, Colors.blueGrey),
  new ManageName(7, "Priya Sharma", false, 6, Colors.teal),
  new ManageName(8, "Akhilesh Arora", false, 7, Colors.blue.shade200),
  new ManageName(9, "Aditaya Sahu", false, 8, Colors.red.shade300),
  new ManageName(10, "Narendra Pal", false, 9, Colors.grey[600]),
  new ManageName(11, "Amrita Singh", false, 10, Colors.yellow[800]),
  new ManageName(12, "Ram Singh", false, 11, Colors.red),
  new ManageName(13, "Amit Singh", false, 12, Colors.purple),
  new ManageName(14, "Mohit Rahu ", false, 13, Colors.blue),
  new ManageName(15, "Neha Sharma ", false, 14, Colors.amberAccent),
  new ManageName(16, "Mohit Sahu", false, 15, Colors.blueGrey),
  new ManageName(17, "Priya Sharma", false, 16, Colors.teal),
  new ManageName(18, "Akhilesh Arora", false, 17, Colors.blue.shade200),
  new ManageName(19, "Aditaya Sahu", false, 18, Colors.red.shade300),
  new ManageName(20, "Narendra Pal", false, 19, Colors.grey[600]),
  new ManageName(21, "Ram Singh", false, 20, Colors.red),
  new ManageName(22, "Rohit Singh", false, 21, Colors.yellow),
  new ManageName(23, "Amit Singh", false, 22, Colors.purple),
  new ManageName(24, "Mohit Rahu ", false, 23, Colors.blue),
  new ManageName(25, "Neha Sharma ", false, 24, Colors.amberAccent),
  new ManageName(26, "Mohit Sahu", false, 25, Colors.blueGrey),
  new ManageName(27, "Priya Sharma", false, 26, Colors.teal),
  new ManageName(28, "Akhilesh Arora", false, 27, Colors.blue.shade200),
  new ManageName(29, "Aditaya Sahu", false, 28, Colors.red.shade300),
  new ManageName(30, "Narendra Pal", false, 29, Colors.grey[600]),
  new ManageName(31, "Ram Singh", false, 30, Colors.red),
  new ManageName(32, "Rohit Singh", false, 31, Colors.yellow),
  new ManageName(33, "Amit Singh", false, 32, Colors.purple),
  new ManageName(34, "Mohit Rahu ", false, 33, Colors.blue),
  new ManageName(35, "Neha Sharma ", false, 34, Colors.amberAccent),
  new ManageName(36, "Mohit Sahu", false, 35, Colors.blueGrey),
  new ManageName(37, "Priya Sharma", false, 36, Colors.teal),
  new ManageName(38, "Akhilesh Arora", false, 37, Colors.blue.shade200),
  new ManageName(39, "Aditaya Sahu", false, 38, Colors.red.shade300),
  new ManageName(40, "Narendra Pal", false, 39, Colors.grey[600]),
  new ManageName(41, "Ram Singh", false, 40, Colors.red),
  new ManageName(42, "Rohit Singh", false, 41, Colors.yellow),
  new ManageName(43, "Amit Singh", false, 42, Colors.purple),
  new ManageName(44, "Mohit Rahu ", false, 43, Colors.blue),
  new ManageName(45, "Neha Sharma ", false, 44, Colors.amberAccent),
  new ManageName(46, "Mohit Sahu", false, 45, Colors.blueGrey),
  new ManageName(47, "Priya Sharma", false, 46, Colors.teal),
  new ManageName(48, "Akhilesh Arora", false, 47, Colors.blue.shade200),
  new ManageName(49, "Aditaya Sahu", false, 48, Colors.red.shade300),
  new ManageName(50, "Narendra Pal", false, 49, Colors.grey[600]),
];
