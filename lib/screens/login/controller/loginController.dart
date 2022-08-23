import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';
import 'package:login_sample/routes/route-list.dart';

class LoginController extends GetxController {
  var formKey = GlobalKey<FormState>();
  final email = TextEditingController();
  final password = TextEditingController();

  void goToHomepage() {
    if (formKey.currentState!.validate()) {
      Get.toNamed(RoutesList.HOME, arguments: {
        "email": email.text,
        "password": password.text,
      });
    }
  }

  String? emailValidation(value) {
    if (value!.isEmpty ||
        !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value)) {
      return "Enter Correct Email";
    } else {
      return null;
    }
  }

  String? passwordValidation(value) {
    if (value!.isEmpty) {
      return "Enter Password";
    } else {
      return null;
    }
  }
}
