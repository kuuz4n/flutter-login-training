// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import our custom number keyboard
import './keyboard_sample.dart';

class KeyboardWidget extends StatelessWidget {
  final TextEditingController _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Keyboard'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // display the entered numbers
          Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 70,
              child: Center(
                  child: TextField(
                controller: _myController,
                textAlign: TextAlign.center,
                showCursor: false,
                style: GoogleFonts.exo(fontSize: 25),
                // Disable the default soft keybaord
                keyboardType: TextInputType.none,
              )),
            ),
          ),
          // implement the custom NumPad
          KeyboardDisplay(
            buttonSize: 25,
            buttonColor: Colors.white,
            iconColor: Colors.deepOrange,
            controller: _myController,
            delete: () {
              _myController.text = _myController.text
                  .substring(0, _myController.text.length - 1);
            },
            // do something with the input numbers
            onSubmit: () {
              debugPrint('Your code: ${_myController.text}');
              showDialog(
                  context: context,
                  builder: (_) => AlertDialog(
                        content: Text(
                          "You code is ${_myController.text}",
                          style: const TextStyle(fontSize: 30),
                        ),
                      ));
            },
          ),
        ],
      ),
    );
  }
}
