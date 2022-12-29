import 'dart:convert';

import 'package:xablau/model/user_model.dart';
import 'package:xablau/repository/i_user_repos.dart';
import 'package:http/http.dart' as http;

class UserHttpRepos implements IUserRepos {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response = await http.get(
        Uri.parse('https://63ad923c3e465169165df234.mockapi.io/api/v1/user'));
    final List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap
        .map<UserModel>((resp) => UserModel.fromMap(resp))
        .toList();
  }
}
