import 'package:get/get.dart';
import 'package:xablau/repository/i_user_repos.dart';

class HttpController extends GetxController with StateMixin {
  final IUserRepos _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findUsers();
  }

  Future<void> findUsers() async {
    change([], status: RxStatus.loading());
    try {
      final dados = await _httpRepository.findAllUsers();
      change(dados, status: RxStatus.success());
    } on Exception catch (e) {
      change([], status: RxStatus.error('Erro ao buscar usuarios'));
    }
  }
}
