import 'package:flutter/material.dart';
import '../../../components/icon_key.dart';
import '../../../components/text_key.dart';

class CustomKeyboard extends StatelessWidget {
  final ValueSetter<String> onTextInput;
  final VoidCallback onBackspace;
  final VoidCallback onAddspace;
  final VoidCallback onShift;
  final VoidCallback onEnter;
  final double computedWidth;
  const CustomKeyboard({
    Key? key,
    required this.onTextInput,
    required this.onBackspace,
    required this.onAddspace,
    required this.onShift,
    required this.onEnter,
    required this.isKeyboardLowerCase,
    required this.computedWidth,
  }) : super(key: key);

  final bool isKeyboardLowerCase;

  static List<String> firstRowKey = [
    "q",
    "w",
    "e",
    "r",
    "t",
    "y",
    "u",
    "i",
    "o",
    "p"
  ];
  static List<String> secondRowKey = [
    "a",
    "s",
    "d",
    "f",
    "g",
    "h",
    "j",
    "k",
    "l"
  ];

  static List<String> thirdRowKey = ["z", "x", "c", "v", "b", "n", "m"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: double.infinity,
      color: Color.fromRGBO(23, 23, 27, 1),
      child: Column(
        children: [
          firstRow(),
          secondRow(),
          thirdRow(),
          fourthRowKeyboard(),
        ],
      ),
    );
  }

  Expanded firstRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...firstRowKey.map((text) {
            return TextKey(
              keyText: text,
              onTextInput: onTextInput,
              setLowerCase: isKeyboardLowerCase,
              computedWidth: computedWidth,
            );
          }),
        ],
      ),
    );
  }

  Expanded secondRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...secondRowKey.map((text) {
            return TextKey(
              keyText: text,
              onTextInput: onTextInput,
              setLowerCase: isKeyboardLowerCase,
              computedWidth: computedWidth,
            );
          }),
        ],
      ),
    );
  }

  Expanded thirdRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconKey(
              iconKey: Icons.keyboard_capslock, onKeyHandler: onShift, flex: 1),
          ...thirdRowKey.map((text) {
            return TextKey(
              keyText: text,
              onTextInput: onTextInput,
              setLowerCase: isKeyboardLowerCase,
              computedWidth: computedWidth,
            );
          }),
          IconKey(
              iconKey: Icons.keyboard_backspace_outlined,
              onKeyHandler: onBackspace,
              flex: 1)
        ],
      ),
    );
  }

  Expanded fourthRowKeyboard() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconKey(iconKey: Icons.space_bar, onKeyHandler: onAddspace, flex: 4),
          TextKey(
            keyText: ".",
            onTextInput: onTextInput,
            setLowerCase: isKeyboardLowerCase,
            computedWidth: computedWidth,
          ),
          IconKey(
            iconKey: Icons.keyboard_arrow_left_sharp,
            onKeyHandler: onEnter,
            flex: 1,
          )
        ],
      ),
    );
  }
}
