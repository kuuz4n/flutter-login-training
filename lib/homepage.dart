import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomepageScreen extends StatelessWidget {
  String email, password;

  // ignore: use_key_in_widget_constructors
  HomepageScreen({required this.email, required this.password});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Homepage!'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email: $email'),
            Text('Password: $password'),
          ],
        )),
      );
}
