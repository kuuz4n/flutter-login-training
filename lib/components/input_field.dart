import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String hintTextHandler;
  final inputController;
  final String? Function(String? value) validateHandler;

  final inputFormatterHandler;
  final int? maxLinesHandler;
  final bool? isEnabled;

  const InputField({
    Key? key,
    required this.labelText,
    required this.hintTextHandler,
    required this.inputController,
    required this.validateHandler,
    this.inputFormatterHandler,
    this.maxLinesHandler,
    this.isEnabled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 28,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            child: Text(
              labelText.toUpperCase(),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          TextFormField(
            style: TextStyle(color: Colors.white),
            controller: inputController,
            validator: validateHandler,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            inputFormatters: inputFormatterHandler,
            minLines: 1,
            maxLines: maxLinesHandler,
            enabled: isEnabled,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color.fromRGBO(23, 23, 27, 1),
              hintText: hintTextHandler,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              contentPadding: const EdgeInsets.only(
                  top: 15, right: 20, bottom: 15, left: 20),
            ),
          ),
        ],
      ),
    );
  }
}
