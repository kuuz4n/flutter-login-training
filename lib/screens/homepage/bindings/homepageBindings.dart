import 'package:get/instance_manager.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

import '../controller/homepageController.dart';

class HomepageBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomepageController>(() => HomepageController());
  }
}
