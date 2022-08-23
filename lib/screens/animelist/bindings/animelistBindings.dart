import 'package:get/instance_manager.dart';
import 'package:login_sample/screens/animelist/controller/animelistController.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

class AnimelistBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyAnimelistController>(() => MyAnimelistController());
  }
}
