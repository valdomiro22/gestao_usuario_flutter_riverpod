import 'package:flutter/material.dart';

class CustomTextfiewdSemIcone extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final String label;
  final bool obscureText;
  final bool? comBorda;
  final TextInputType inputType;
  final ValueChanged<String>? onChanged;

  const CustomTextfiewdSemIcone({
    super.key,
    required this.controller,
    required this.hint,
    this.comBorda,
    required this.label,
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
        hintText: hint,
        labelText: label,
        border: comBorda ?? true ? OutlineInputBorder() : null,
      ),
    );
  }
}
