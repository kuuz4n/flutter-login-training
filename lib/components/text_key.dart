import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextKey extends StatelessWidget {
  final String keyText;
  final ValueSetter<String> onTextInput;
  final bool setLowerCase;
  final double computedWidth;

  const TextKey({
    Key? key,
    required this.keyText,
    required this.onTextInput,
    required this.setLowerCase,
    required this.computedWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2, bottom: 2, left: 1, right: 1),
      child: Material(
        child: setLowerCase
            ? InkWell(
                onTap: () => onTextInput.call(keyText),
                child: textContainer(keyText),
              )
            : InkWell(
                onTap: () => onTextInput.call(keyText.toUpperCase()),
                child: textContainer(keyText.toUpperCase()),
              ),
      ),
    );
  }

  Container textContainer(text) {
    return Container(
      color: Color.fromRGBO(23, 23, 27, 1),
      width: computedWidth,
      child: Center(
        child: Text(
          text,
          style: GoogleFonts.exo(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
