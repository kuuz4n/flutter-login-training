import 'package:get/instance_manager.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

import '../controller/animeDetailsController.dart';

class AnimeDetailsBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AnimeDetailsController>(() => AnimeDetailsController());
  }
}
