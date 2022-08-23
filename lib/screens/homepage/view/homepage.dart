// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sample/screens/animelist/views/myAnimeListPage.dart';
import 'package:login_sample/screens/homepage/controller/homepageController.dart';
import 'package:login_sample/waifu.dart';
import '../../../display_keyboard.dart';

// ignore: must_be_immutable
class HomepageScreen extends GetView<HomepageController> {
  // ignore: use_key_in_widget_constructors
  // HomepageScreen({required this.email, required this.password});

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Homepage!'),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(37, 36, 42, 1),
      body: homepageContainer());

  Widget homepageContainer() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            controller.email.toString(),
            style: TextStyle(color: Colors.white),
          ),
          Text(
            controller.password.toString(),
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 50,
          ),
          keyboardButton(),
          SizedBox(
            height: 20,
          ),
          animelistButton(),
        ],
      ),
    );
  }

  Widget keyboardButton() {
    return ElevatedButton(
      onPressed: controller.goToKeyboard,
      child: Text('Show Keyboard'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(11.0),
        backgroundColor: Color.fromRGBO(53, 52, 59, 1),
        fixedSize: Size(270, 48),
        textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
        elevation: 15,
      ),
    );
  }

  Widget animelistButton() {
    return ElevatedButton(
      onPressed: controller.goToAnimeList,
      child: Text('Show Animelist!'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(11.0),
        backgroundColor: Color.fromRGBO(53, 52, 59, 1),
        fixedSize: Size(270, 48),
        textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
        elevation: 15,
      ),
    );
  }
}
