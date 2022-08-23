import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:login_sample/screens/keyboard/view/keyboard.dart';

import '../../../components/input_field.dart';
import '../controller/keyboardController.dart';

class KeyboardPage extends GetView<KeyboardController> {
  const KeyboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 36, 42, 1),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
          title: const Text(
        "Keyboard",
      )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputField(
              labelText: "Type Here!!",
              hintTextHandler: "Type here",
              inputController: controller.textFieldController,
              validateHandler: controller.validateMessage,
              maxLinesHandler: 5,
              isEnabled: true,
            ),
            Obx(
              () => Visibility(
                child: CustomKeyboard(
                  onTextInput: (myText) {
                    controller.addTextMessage(myText);
                  },
                  onBackspace: controller.backspace,
                  onAddspace: controller.addspace,
                  onShift: controller.toggleShift,
                  onEnter: controller.addNewline,
                  isKeyboardLowerCase: controller.isKeyboardLowerCase.value,
                  computedWidth: (MediaQuery.of(context).size.width - 80) / 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
