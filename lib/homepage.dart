// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_sample/myAnimeListPage.dart';
import 'package:login_sample/waifu.dart';
import './display_keyboard.dart';

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
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Test",
                  labelText: "Type Here!",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              child: const Text('Show Keyboard!'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KeyboardWidget()));
              },
            ),
            ElevatedButton(
              child: const Text('Waifu!'),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Waifu()));
              },
            ),
            ElevatedButton(
              child: const Text('My Anime List!'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAnimeListPage()));
              },
            ),
          ],
        )),
      );
}
