import 'package:flutter_test/flutter_test.dart';
import 'package:login_sample/screens/keyboard/controller/keyboardController.dart';

void main() {
  late KeyboardController keyController;

  setUpAll(() {
    keyController = KeyboardController();
  });

  test("Type text", () {
    String currentText = keyController.textFieldController.text;
    String value = "Z";
    keyController.addTextMessage(value);
    String textValue = currentText + value;
    expect(keyController.textFieldController.text, textValue);
  });
}
