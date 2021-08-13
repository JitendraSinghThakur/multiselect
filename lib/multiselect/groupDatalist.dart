class GroupList {
  int? id;
  String? name;
  String? type;
  String? updatedAt;
  List<Users>? users;

  GroupList({this.id, this.name, this.type, this.updatedAt, this.users});

  GroupList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    updatedAt = json['updated_at'];
    if (json['users'] != null) {
      users = <Users>[];
      json['users'].forEach((v) {
        users!.add(new Users.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['updated_at'] = this.updatedAt;
    if (this.users != null) {
      data['users'] = this.users!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Users {
  int? id;
  String? firstName;
  String? lastName;
  String? fullName;
  int? groupId;

  Users({this.id, this.firstName, this.lastName, this.fullName, this.groupId});

  Users.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    groupId = json['group_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['full_name'] = this.fullName;
    data['group_id'] = this.groupId;
    return data;
  }
}
