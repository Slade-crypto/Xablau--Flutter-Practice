import 'package:xablau/model/user_model.dart';

abstract class IUserRepos {
  Future<List<UserModel>> findAllUsers();
}
