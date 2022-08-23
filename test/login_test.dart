import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

void main() {
  late LoginController loginController;
  setUpAll(() {
    loginController = LoginController();
  });

  group("Accepted Values", () {
    String testEmailValue = 'jett@outlook.com';
    String testPasswordValue = '1234567890';
    test("Valid Email", () {
      String? result = loginController.emailValidation(testEmailValue);
      expect(result, null);
    });

    test("Valid Password", () {
      String? result = loginController.passwordValidation(testPasswordValue);
      expect(result, null);
    });
  });

  group("Invalid Values", () {
    test("Invalid Email", () {
      String testEmailValue = 'jettparevive';
      var result = loginController.emailValidation(testEmailValue);
      expect(result, "Enter Correct Email");
    });

    test("Invalid Password", () {
      String testPasswordValue = '';
      String? result = loginController.passwordValidation(testPasswordValue);
      expect(result, "Enter Password");
    });

    tearDown(() {});
  });
}
