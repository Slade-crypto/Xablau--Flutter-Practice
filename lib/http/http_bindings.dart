import 'package:get/get.dart';
import 'package:xablau/http/http_controller.dart';
import 'package:xablau/http/repository/user_http_repos.dart';
import 'package:xablau/repository/i_user_repos.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IUserRepos>(UserHttpRepos());
    Get.put(HttpController(Get.find()));
  }
}
