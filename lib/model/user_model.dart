// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:xablau/model/user_type.dart';

class UserModel {
  String? id;
  String? name;
  String? username;
  List<UserType>? types;

  UserModel({
    this.id,
    this.name,
    this.username,
    this.types,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'username': username,
      'types': types!.map((x) => x.toMap()).toList(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] != null ? map['id'] as String : null,
      name: map['name'] != null ? map['name'] as String : null,
      username: map['username'] != null ? map['username'] as String : null,
      types: map['types'] != null
          ? List<UserType>.from(
              (map['types'] as List<int>).map<UserType?>(
                (x) => UserType.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
