import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeDark {
  // O Tema Escuro precisaria ser revisado para ter o mesmo alto contraste,
  // mas o padrão de cores principais (vermelho, cinzas) continua válido.
  static ThemeData get darkTheme => ThemeData(
    // ... (Manter lógica do dark mode anterior com primaryRed e cores escuras)
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryRed,
      onPrimary: Colors.white,
      secondary: AppColors.inputBorder,
      // Cinza claro como acento
      onSecondary: Colors.black,
      surface: Color(0xFF263238),
      onSurface: Colors.white,
      background: Color(0xFF1E272C),
      onBackground: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFF1E272C),
  );
}
