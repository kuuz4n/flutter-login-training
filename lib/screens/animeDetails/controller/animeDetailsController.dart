import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:login_sample/routes/route-list.dart';

class AnimeDetailsController extends GetxController {
  final title = Get.arguments['title'];
  final synopsis = Get.arguments['synopsis'];
  final String imageUrl = Get.arguments['imageUrl'].toString();
}
