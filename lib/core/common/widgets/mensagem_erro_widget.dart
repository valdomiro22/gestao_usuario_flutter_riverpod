import 'package:flutter/material.dart';

class MensagemErroWidget extends StatelessWidget {
  final String? mensagem;

  const MensagemErroWidget({super.key, required this.mensagem});

  @override
  Widget build(BuildContext context) {
    return Text(mensagem ?? '' , style: TextStyle(color: Colors.red));
  }
}
