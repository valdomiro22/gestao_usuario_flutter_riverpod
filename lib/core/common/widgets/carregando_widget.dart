import 'package:flutter/material.dart';

class CarregandoWidget extends StatelessWidget {
  const CarregandoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Center(
          child: CircularProgressIndicator()
      ),
    );
  }
}
