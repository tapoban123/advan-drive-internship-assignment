import 'package:flutter/material.dart';

class ChooseUserButton extends StatelessWidget {
  final String text;
  final Color bgColor;
  final VoidCallback onTap;

  const ChooseUserButton({
    super.key,
    required this.text,
    required this.bgColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(320, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        backgroundColor: bgColor,
      ),
      child: Text(text, style: TextStyle(fontSize: 18, color: Colors.white)),
    );
  }
}
