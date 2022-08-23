// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, sort_child_properties_last, valid_regexps
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sample/screens/homepage/view/homepage.dart';
import 'package:login_sample/screens/login/controller/loginController.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(37, 36, 42, 1),
        body: loginContainer(context));
  }

  Container loginContainer(BuildContext context) {
    return Container(
      child: Form(
        key: controller.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/Mintly.png'),
            SizedBox(height: 50),
            //Email Textfield
            emailTextfield(),
            SizedBox(height: 0.74),
            //Password
            passwordText(),
            SizedBox(height: 30),
            loginButton(),
            SizedBox(height: 18),
            //Register
            registerRow(),
            SizedBox(height: 50),
            //Social Media
            socialMediaRow(),
            SizedBox(
              height: 40,
            ),
            //Terms & Conditions
            terms(),
          ],
        ),
      ),
    );
  }

  Widget loginButton() {
    return ElevatedButton(
      onPressed: controller.goToHomepage,
      child: Text('Log In'),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.all(11.0),
        backgroundColor: Color.fromRGBO(53, 52, 59, 1),
        fixedSize: Size(270, 48),
        textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
        elevation: 15,
      ),
    );
  }

  Widget emailTextfield() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(23, 23, 27, 1),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: TextFormField(
            style: GoogleFonts.exo(
              fontSize: 18,
              color: Colors.white,
            ),
            controller: controller.email,
            validator: (value) {
              return controller.emailValidation(value);
            },
            decoration: InputDecoration(
                prefixIcon: new Image.asset(
                  'assets/images/email.png',
                ),
                border: InputBorder.none,
                hintText: 'Email',
                hintStyle: GoogleFonts.exo(
                  fontSize: 18,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }

  Widget passwordText() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(23, 23, 27, 1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(left: 1.0),
          child: TextFormField(
            style: GoogleFonts.exo(
              fontSize: 18,
              color: Colors.white,
            ),
            obscureText: true,
            controller: controller.password,
            validator: (value) {
              return controller.passwordValidation(value);
            },
            decoration: InputDecoration(
                prefixIcon: new Image.asset(
                  'assets/images/password.png',
                ),
                border: InputBorder.none,
                hintText: 'Password',
                hintStyle: GoogleFonts.exo(
                  fontSize: 18,
                  color: Colors.white,
                )),
          ),
        ),
      ),
    );
  }

  Widget registerRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Not a member?',
          style: GoogleFonts.exo(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
        Text(
          ' Sign up now',
          style: GoogleFonts.exo(
            fontSize: 17,
            color: Color.fromRGBO(97, 219, 178, 1),
          ),
        ),
      ],
    );
  }

  Widget socialMediaRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Image.asset('assets/images/brandico_facebook.png'),
          style: ElevatedButton.styleFrom(
            side:
                BorderSide(width: 0.5, color: Color.fromRGBO(32, 171, 125, 1)),
            backgroundColor: Color.fromRGBO(53, 52, 59, 1),
            padding: EdgeInsets.all(11.0),
            fixedSize: Size(89, 63),
            textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
            elevation: 15,
          ),
        ),
        SizedBox(
          width: 25,
        ),
        ElevatedButton(
          onPressed: () {},
          child:
              Image.asset('assets/images/akar-icons_google-contained-fill.png'),
          style: ElevatedButton.styleFrom(
            side:
                BorderSide(width: 0.5, color: Color.fromRGBO(32, 171, 125, 1)),
            backgroundColor: Color.fromRGBO(53, 52, 59, 1),
            padding: EdgeInsets.all(11.0),
            fixedSize: Size(89, 63),
            textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
            elevation: 15,
          ),
        ),
        SizedBox(
          width: 25,
        ),
        ElevatedButton(
          onPressed: () {},
          child: Image.asset('assets/images/ic_baseline-mobile-friendly.png'),
          style: ElevatedButton.styleFrom(
            side:
                BorderSide(width: 0.5, color: Color.fromRGBO(32, 171, 125, 1)),
            backgroundColor: Color.fromRGBO(53, 52, 59, 1),
            padding: EdgeInsets.all(11.0),
            fixedSize: Size(89, 63),
            textStyle: GoogleFonts.exo(fontSize: 18, color: Colors.white),
            elevation: 15,
          ),
        )
      ],
    );
  }

  Widget terms() {
    return Column(
      children: [
        Text(
          'By using Mintly, you are agreeing to our',
          style: GoogleFonts.exo(
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        Text(
          'Terms of Service',
          style: GoogleFonts.exo(
            fontSize: 14,
            color: Color.fromRGBO(97, 219, 178, 1),
          ),
        ),
      ],
    );
  }
}
