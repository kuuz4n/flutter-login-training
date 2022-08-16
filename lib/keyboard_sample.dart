import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KeyboardDisplay extends StatelessWidget {
  final double buttonSize;
  final Color buttonColor;
  final Color iconColor;
  final TextEditingController controller;
  final Function delete;
  final Function onSubmit;

  const KeyboardDisplay({
    Key? key,
    this.buttonSize = 3,
    this.buttonColor = Colors.black,
    this.iconColor = Colors.red,
    required this.delete,
    required this.onSubmit,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            //Keyboard Keys
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardKey(
                letter: 'q',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'w',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'e',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'r',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 't',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'y',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'u',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'i',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'o',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'p',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '{',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '}',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          // const SizedBox(height: 10),
          Row(
            //Keyboard Keys
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardKey(
                letter: 'a',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 's',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'd',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'f',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'g',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'h',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'j',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'k',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'l',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: ':',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '"',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '←',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
          Row(
            //Keyboard Keys
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              KeyboardKey(
                letter: 'z',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'x',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'c',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'v',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'b',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'n',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: 'm',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '<',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '>',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
              KeyboardKey(
                letter: '?',
                size: buttonSize,
                color: buttonColor,
                controller: controller,
              ),
            ],
          ),
        ],
      ),
      // const SizedBox(height: 20),
    );
  }
}

class KeyboardKey extends StatelessWidget {
  final String letter;
  final double size;
  final Color color;
  final TextEditingController controller;

  const KeyboardKey({
    Key? key,
    required this.letter,
    required this.size,
    required this.color,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 25,
      height: 30,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(0.0),
          primary: color,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.circular(size / 2),
          // ),
        ),
        onPressed: () {
          controller.text += letter.toString();
        },
        child: Text(
          letter.toString(),
          style: GoogleFonts.exo(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
