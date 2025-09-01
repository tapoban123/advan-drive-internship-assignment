import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String heading;
  final String hintText;
  final TextEditingController textControlller;
  final bool isPassword;

  const AuthTextField({
    super.key,
    required this.heading,
    required this.hintText,
    required this.textControlller,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    final FocusNode focus = FocusNode();
    final ValueNotifier<bool> showPassword = ValueNotifier(false);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(heading, style: TextStyle(fontSize: 16)),
        ValueListenableBuilder(
          valueListenable: showPassword,
          builder: (context, showPassValue, child) => TextFormField(
            focusNode: focus,
            decoration: InputDecoration(
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              hintText: hintText,
              suffixIcon: isPassword
                  ? IconButton(
                      onPressed: () {
                        showPassword.value = !showPassword.value;
                      },
                      icon: showPassValue
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                    )
                  : null,
            ),
            keyboardType: isPassword
                ? TextInputType.visiblePassword
                : TextInputType.emailAddress,
            controller: textControlller,
            obscureText: isPassword && showPassValue,
            onTapOutside: (event) {
              focus.unfocus();
            },
          ),
        ),
      ],
    );
  }
}
