import 'package:agrogenesis/app/app_theme.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String label;
  final IconData iconData;
  const TextInputField({
    super.key,
    this.controller,
    required this.label,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(iconData, color: greenColor),
        hintText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: greenColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: greenColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: Color(0xFF4CAF50)),
        ),
      ),
    );
  }
}
