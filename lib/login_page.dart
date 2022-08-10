// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, sort_child_properties_last, valid_regexps
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_sample/homepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController _email = new TextEditingController();
  final TextEditingController _password = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(37, 36, 42, 1),
        body: SafeArea(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Hello World!
                  Image.asset('assets/images/Mintly.png'),
                  SizedBox(height: 50),
                  //Email Textfield
                  Padding(
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
                          controller: _email,
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                              return "Enter Correct Email";
                            } else {
                              return null;
                            }
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
                  ),
                  SizedBox(height: 0.74),
                  //Password
                  Padding(
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
                          controller: _password,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Enter Password";
                            } else {
                              return null;
                            }
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
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    child: Text('Log In'),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomepageScreen(
                                    email: _email.text,
                                    password: _password.text)));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(11.0),
                      fixedSize: Size(270, 48),
                      textStyle:
                          GoogleFonts.exo(fontSize: 18, color: Colors.white),
                      elevation: 15,
                      primary: Color.fromRGBO(53, 52, 59, 1),
                    ),
                  ),
                  SizedBox(height: 18),
                  //Register
                  Row(
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
                  ),
                  SizedBox(height: 50),
                  //Social Media
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child:
                            Image.asset('assets/images/brandico_facebook.png'),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1.0,
                              color: Color.fromRGBO(32, 171, 125, 1)),
                          padding: EdgeInsets.all(11.0),
                          fixedSize: Size(89, 63),
                          textStyle: GoogleFonts.exo(
                              fontSize: 18, color: Colors.white),
                          elevation: 15,
                          primary: Color.fromRGBO(53, 52, 59, 1),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                            'assets/images/akar-icons_google-contained-fill.png'),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1.0,
                              color: Color.fromRGBO(32, 171, 125, 1)),
                          padding: EdgeInsets.all(11.0),
                          fixedSize: Size(89, 63),
                          textStyle: GoogleFonts.exo(
                              fontSize: 18, color: Colors.white),
                          elevation: 15,
                          primary: Color.fromRGBO(53, 52, 59, 1),
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                            'assets/images/ic_baseline-mobile-friendly.png'),
                        style: ElevatedButton.styleFrom(
                          side: BorderSide(
                              width: 1.0,
                              color: Color.fromRGBO(32, 171, 125, 1)),
                          padding: EdgeInsets.all(11.0),
                          fixedSize: Size(89, 63),
                          textStyle: GoogleFonts.exo(
                              fontSize: 18, color: Colors.white),
                          elevation: 15,
                          primary: Color.fromRGBO(53, 52, 59, 1),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  //Terms & Conditions
                  Column(
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
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
