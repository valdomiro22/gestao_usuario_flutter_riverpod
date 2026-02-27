import 'package:flutter/material.dart';

class LinhaChaveValorWidget extends StatelessWidget {
  final String chave;
  final String valor;

  const LinhaChaveValorWidget({super.key, required this.valor, required this.chave});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(chave),
        const SizedBox(width: 4),
        Text(valor),
      ],
    );
  }
}
