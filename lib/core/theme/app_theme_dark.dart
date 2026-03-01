import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppThemeDark {
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryRed,
      onPrimary: Colors.white,

      secondary: AppColors.inputBorder, // cinza claro como acento
      onSecondary: Colors.black,

      surface: Color(0xFF263238),
      onSurface: Colors.white,

      error: Colors.redAccent,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(0xFF1E272C),
  );
}