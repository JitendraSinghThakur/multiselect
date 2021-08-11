import 'dart:convert';

ManageName manageNameFromJson(String str) =>
    ManageName.fromJson(json.decode(str));

String manageNameToJson(ManageName data) => json.encode(data.toJson());

class ManageName {
  ManageName({
    required this.data,
    required this.status,
  });

  List<ManageNameDatum> data;
  int status;

  factory ManageName.fromJson(Map<String, dynamic> json) => ManageName(
        data: List<ManageNameDatum>.from(
            json["data"].map((x) => ManageNameDatum.fromJson(x))),
        status: json["status"],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status,
      };
}

class ManageNameDatum {
  ManageNameDatum({
    required this.id,
    required this.name,
    required this.type,
    required this.updatedAt,
    required this.users,
  });

  int id;
  String name;
  String type;
  DateTime updatedAt;
  Users users;

  factory ManageNameDatum.fromJson(Map<String, dynamic> json) =>
      ManageNameDatum(
        id: json["id"],
        name: json["name"],
        type: json["type"],
        updatedAt: DateTime.parse(json["updated_at"]),
        users: Users.fromJson(json["users"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "type": type,
        "updated_at": updatedAt.toIso8601String(),
        "users": users.toJson(),
      };
}

class Users {
  Users({
    required this.data,
  });

  List<UsersDatum> data;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        data: List<UsersDatum>.from(
            json["data"].map((x) => UsersDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class UsersDatum {
  UsersDatum({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.fullName,
    required this.groupId,
  });

  int id;
  String firstName;
  String lastName;
  String fullName;
  int groupId;

  factory UsersDatum.fromJson(Map<String, dynamic> json) => UsersDatum(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        fullName: json["full_name"],
        groupId: json["group_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "full_name": fullName,
        "group_id": groupId,
      };
}
