import 'package:get/route_manager.dart';
import 'package:login_sample/routes/route-list.dart';
import 'package:login_sample/screens/animelist/bindings/animelistBindings.dart';
import 'package:login_sample/screens/homepage/bindings/homepageBindings.dart';
import 'package:login_sample/screens/keyboard/view/keyboard_page.dart';
import 'package:login_sample/screens/login/bindings/loginBindings.dart';
import '../display_keyboard.dart';
import '../screens/animeDetails/bindings/animeDetailsBindings.dart';
import '../screens/animeDetails/views/anime_details.dart';
import '../screens/animelist/views/myAnimeListPage.dart';
import '../screens/homepage/view/homepage.dart';
import '../screens/keyboard/bindings/keyboardBindings.dart';
import '../screens/login/view/login_page.dart';

class Routes {
  static List<GetPage> routes = [
    GetPage(
        name: RoutesList.LOGIN,
        page: () => LoginPage(),
        binding: LoginBinding()),
    GetPage(
        name: RoutesList.HOME,
        page: () => HomepageScreen(),
        binding: HomepageBinding()),
    GetPage(
        name: RoutesList.KEYBOARD,
        page: () => KeyboardPage(),
        binding: KeyboardBinding()),
    GetPage(
        name: RoutesList.ANIME_LIST,
        page: () => myAnimeListPage(),
        binding: AnimelistBindings()),
    GetPage(
        name: RoutesList.ANIME_DETAILS,
        page: () => AnimeDetails(),
        binding: AnimeDetailsBindings()),
  ];
}
