import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController textControlller;
  final TextInputType? keyboardType;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.textControlller,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    final FocusNode focus = FocusNode();

    return TextFormField(
      focusNode: focus,
      decoration: InputDecoration(
        filled: true,
        label: Text(labelText),
        labelStyle: TextStyle(color: Colors.white70),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.red),
        ),
      ),
      keyboardType: keyboardType ?? TextInputType.text,

      controller: textControlller,
      cursorColor: Colors.white70,
      validator: (value) {
        if (value != null && value.isEmpty) {
          return "Field cannot be empty.";
        }
        return null;
      },
      onTapOutside: (event) {
        focus.unfocus();
      },
    );
  }
}
