import 'package:get/instance_manager.dart';
import '../controller/keyboardController.dart';

class KeyboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KeyboardController>(() => KeyboardController());
  }
}
