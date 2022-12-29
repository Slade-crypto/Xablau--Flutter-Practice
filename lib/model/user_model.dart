// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}
