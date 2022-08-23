import 'package:get/instance_manager.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
