class ManageName {
  int id;
  String fname;
  String lname;
  bool checked;
  int sort;

  ManageName(this.id, this.fname, this.lname, this.checked, this.sort);
}

List<ManageName> mainDataList = [
  new ManageName(1, "Ram", "Singh", false, 0),
  new ManageName(2, "Rohit", "Singh", false,1),
  new ManageName(3, "Amit ", "Singh", false,2),
  new ManageName(4, "Mohit ", "Rahu", false,3),
  new ManageName(5, "Neha ", "Sharma", false,4),
  new ManageName(6, "Mohit ", "Sahu", false,5),
  new ManageName(7, "Priya ", "Sharma", false,6),
  new ManageName(8, "Akhilesh ", "Arora", false,7),
  new ManageName(9, "Aditaya ", "Sahu", false,8),
  new ManageName(10, "Narendra ", "Pal", false,9),
  new ManageName(11, "Amrita ", "Singh", false,10),
];
