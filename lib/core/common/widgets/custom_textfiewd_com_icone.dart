import 'package:flutter/material.dart';

class CustomTextfiewdConIcone extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final bool obscureText;
  final IconData icone;
  final TextInputType inputType;
  final ValueChanged<String>? onChanged;

  const CustomTextfiewdConIcone({
    super.key,
    required this.controller,
    required this.hint,
    required this.label,
    required this.icone,
    required this.inputType,
    this.obscureText = false,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: inputType,
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
        prefixIcon: Icon(icone),
        hintText: hint,
        labelText: label,
        border: OutlineInputBorder()
      ),
    );
  }
}
