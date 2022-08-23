import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:login_sample/routes/route-list.dart';

class HomepageController extends GetxController {
  final email = Get.arguments['email'];
  final password = Get.arguments['password'];

  void goToKeyboard() {
    Get.toNamed(RoutesList.KEYBOARD);
  }

  void goToAnimeList() {
    Get.toNamed(RoutesList.ANIME_LIST);
  }
}
