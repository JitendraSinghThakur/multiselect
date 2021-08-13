class Userlist {
  int? id;
  String? firstName;
  String? lastName;
  String? fullName;
  String? fullNameMobile;
  String? email;
  int? companyId;
  String? company;
  bool? adminPrivilege;
  Group? group;
  List<Role>? role;
  String? addedDate;
  String? profilePic;
  bool? active;
  String? companyName;
  String? color;
  String? commissionPercentage;
  int? resourceId;
  int? dataMasking;
  int? multipleAccount;
  bool? allDivisionsAccess;
  int? createdBy;
  int? updatedBy;
  Profile? profile;
  List<Divisions>? divisions;
  List<Tags>? tags;
  bool? checked;

  Userlist(
      {this.id,
      this.firstName,
      this.lastName,
      this.fullName,
      this.fullNameMobile,
      this.email,
      this.companyId,
      this.company,
      this.adminPrivilege,
      this.group,
      this.role,
      this.addedDate,
      this.profilePic,
      this.active,
      this.companyName,
      this.color,
      this.commissionPercentage,
      this.resourceId,
      this.dataMasking,
      this.multipleAccount,
      this.allDivisionsAccess,
      this.createdBy,
      this.updatedBy,
      this.profile,
      this.divisions,
      this.tags,
      this.checked});

  Userlist.fromJson(Map<String, dynamic> json) {
    checked = false;
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    fullName = json['full_name'];
    fullNameMobile = json['full_name_mobile'];
    email = json['email'];
    companyId = json['company_id'];
    company = json['company'];
    adminPrivilege = json['admin_privilege'];
    group = json['group'] != null ? new Group.fromJson(json['group']) : null;
    if (json['role'] != null) {
      role = <Role>[];
      json['role'].forEach((v) {
        role!.add(new Role.fromJson(v));
      });
    }

    addedDate = json['added_date'];
    profilePic = json['profile_pic'];
    active = json['active'];
    companyName = json['company_name'];
    color = json['color'];
    commissionPercentage = json['commission_percentage'];
    resourceId = json['resource_id'];
    dataMasking = json['data_masking'];
    multipleAccount = json['multiple_account'];
    allDivisionsAccess = json['all_divisions_access'];
    createdBy = json['created_by'];
    updatedBy = json['updated_by'];

    profile =
        json['profile'] != null ? new Profile.fromJson(json['profile']) : null;
    if (json['divisions'] != null) {
      divisions = <Divisions>[];
      json['divisions'].forEach((v) {
        divisions!.add(new Divisions.fromJson(v));
      });
    }
    if (json['tags'] != null) {
      tags = <Tags>[];
      json['tags'].forEach((v) {
        tags!.add(new Tags.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['full_name'] = this.fullName;
    data['full_name_mobile'] = this.fullNameMobile;
    data['email'] = this.email;
    data['company_id'] = this.companyId;
    data['company'] = this.company;
    data['admin_privilege'] = this.adminPrivilege;
    if (this.group != null) {
      data['group'] = this.group!.toJson();
    }
    if (this.role != null) {
      data['role'] = this.role!.map((v) => v.toJson()).toList();
    }

    data['added_date'] = this.addedDate;
    data['profile_pic'] = this.profilePic;
    data['active'] = this.active;
    data['company_name'] = this.companyName;
    data['color'] = this.color;
    data['commission_percentage'] = this.commissionPercentage;
    data['resource_id'] = this.resourceId;
    data['data_masking'] = this.dataMasking;
    data['multiple_account'] = this.multipleAccount;
    data['all_divisions_access'] = this.allDivisionsAccess;
    data['created_by'] = this.createdBy;
    data['updated_by'] = this.updatedBy;
    if (this.profile != null) {
      data['profile'] = this.profile!.toJson();
    }
    if (this.divisions != null) {
      data['divisions'] = this.divisions!.map((v) => v.toJson()).toList();
    }
    if (this.tags != null) {
      data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Group {
  int? id;
  String? name;

  Group({this.id, this.name});

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

class Role {
  String? name;
  Pivot? pivot;

  Role({this.name, this.pivot});

  Role.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    if (this.pivot != null) {
      data['pivot'] = this.pivot!.toJson();
    }
    return data;
  }
}

class Pivot {
  int? userId;
  int? roleId;

  Pivot({this.userId, this.roleId});

  Pivot.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    roleId = json['role_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['role_id'] = this.roleId;
    return data;
  }
}

class Profile {
  int? id;
  int? userId;
  String? phone;
  List<AdditionalPhone>? additionalPhone;
  String? address;
  String? addressLine1;
  String? city;
  int? stateId;
  String? state;
  String? stateCode;
  int? countryId;
  String? country;
  String? zip;
  String? position;
  String? profilePic;

  Profile(
      {this.id,
      this.userId,
      this.phone,
      this.additionalPhone,
      this.address,
      this.addressLine1,
      this.city,
      this.stateId,
      this.state,
      this.stateCode,
      this.countryId,
      this.country,
      this.zip,
      this.position,
      this.profilePic});

  Profile.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    phone = json['phone'];
    if (json['additional_phone'] != null) {
      additionalPhone = <AdditionalPhone>[];
      json['additional_phone'].forEach((v) {
        additionalPhone!.add(new AdditionalPhone.fromJson(v));
      });
    }
    address = json['address'];
    addressLine1 = json['address_line_1'];
    city = json['city'];
    stateId = json['state_id'];
    state = json['state'];
    stateCode = json['state_code'];
    countryId = json['country_id'];
    country = json['country'];
    zip = json['zip'];
    position = json['position'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['phone'] = this.phone;
    if (this.additionalPhone != null) {
      data['additional_phone'] =
          this.additionalPhone!.map((v) => v.toJson()).toList();
    }
    data['address'] = this.address;
    data['address_line_1'] = this.addressLine1;
    data['city'] = this.city;
    data['state_id'] = this.stateId;
    data['state'] = this.state;
    data['state_code'] = this.stateCode;
    data['country_id'] = this.countryId;
    data['country'] = this.country;
    data['zip'] = this.zip;
    data['position'] = this.position;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}

class AdditionalPhone {
  int? id;
  String? label;
  String? phone;
  String? extension;

  AdditionalPhone({this.id, this.label, this.phone, this.extension});

  AdditionalPhone.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['label'];
    phone = json['phone'];
    extension = json['extension'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['label'] = this.label;
    data['phone'] = this.phone;
    data['extension'] = this.extension;
    return data;
  }
}

class Divisions {
  int? id;
  int? companyId;
  String? name;
  String? email;
  String? phone;
  String? phoneExt;
  String? color;
  String? code;

  Divisions(
      {this.id,
      this.companyId,
      this.name,
      this.email,
      this.phone,
      this.phoneExt,
      this.color,
      this.code});

  Divisions.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['company_id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    phoneExt = json['phone_ext'];
    color = json['color'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['company_id'] = this.companyId;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['phone_ext'] = this.phoneExt;
    data['color'] = this.color;
    data['code'] = this.code;
    return data;
  }
}

class Tags {
  int? id;
  String? name;
  String? type;
  String? updatedAt;

  Tags({this.id, this.name, this.type, this.updatedAt});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['type'] = this.type;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
