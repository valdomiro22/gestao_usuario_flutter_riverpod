import 'package:flutter/material.dart';

class CustomButtomWidget extends StatelessWidget {
  final String texto;
  final VoidCallback clique;
  const CustomButtomWidget({super.key, required this.texto, required this.clique});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: clique,
      child: Text(texto),
    );
  }
}
