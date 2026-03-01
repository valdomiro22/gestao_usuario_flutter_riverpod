/*
import 'package:flutter/material.dart';

class AppTheme {
  // --- SUAS CORES (Extraídas da HomeScreen) ---

  // Azul Escuro (Usado nos títulos do Card) - Passa confiança
  static const Color _primary = Color(0xff223b7a);

  // Azul Vibrante (Usado no Turno Selecionado) - Para ações principais
  static const Color _secondary = Color(0xff3559fa);

  // Cinza Inativo (Usado no Turno não selecionado)
  static const Color _inactive = Color(0xffd2d6de);

  // Cores de Status
  static const Color statusSuccess = Color(0xFF22C55E); // Verde Produzido
  static const Color statusPending = Color(0xFFEF4444); // Vermelho Pendente
  static const Color statusScheduled = Color(0xFF2563EB); // Azul Programado

  // Fundo (Um tom muito leve derivado do seu azul escuro para harmonia)
  static const Color _background = Color(0xFFFCFCFC);
  static const Color _surface = Colors.white;

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      // Esquema de Cores Baseado na sua Identidade
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: _primary,          // Azul Escuro
        onPrimary: Colors.white,
        secondary: _secondary,      // Azul Vibrante
        onSecondary: Colors.white,
        tertiary: _inactive,        // Cinza dos botões
        onTertiary: Color(0xFF4B5563), // Cinza escuro para texto sobre cinza claro
        error: statusPending,       // Vermelho
        onError: Colors.white,
        surface: _surface,
        onSurface: _primary,        // Texto padrão na cor da marca
        surfaceContainerLowest: _background,
      ),

      scaffoldBackgroundColor: _background,

      // --- TIPOGRAFIA ---
      // Usando seu Azul Escuro para títulos, conforme o código original
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: _primary, fontWeight: FontWeight.bold),
        headlineMedium: TextStyle(color: _primary, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(color: _primary, fontWeight: FontWeight.w700),

        // BodyLarge para textos gerais
        bodyLarge: TextStyle(color: _primary, fontSize: 16),
        // BodyMedium para textos menores ou secundários
        bodyMedium: TextStyle(color: Color(0xFF555555)),
      ),

      // --- APP BAR ---
      appBarTheme: const AppBarTheme(
        backgroundColor: _primary, // Azul Escuro (padrão corporativo)
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
      ),

      // --- INPUTS ---
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        hintStyle: const TextStyle(color: Colors.grey),
        labelStyle: const TextStyle(color: _primary),

        // Bordas arredondadas (Radius 12 fica moderno e próximo do seu Radius 5)
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _inactive),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _inactive),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: _secondary, width: 2),
        ),
      ),

      // --- BOTÕES (ElevatedButton) ---
      // Reflete o estilo do seu botão "Turno Selecionado"
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: _secondary, // Azul Vibrante
          foregroundColor: Colors.white,
          elevation: 0, // Flat (como no seu código)
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),

      // --- CARDS ---
      // Baseado no seu: Card(elevation: 0.4, shape: ... radius 5)
      cardTheme: CardThemeData(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 1, // Um pouco mais visível que 0.4, mas sutil
        shadowColor: Colors.black.withOpacity(0.1),
        margin: const EdgeInsets.symmetric(vertical: 6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8), // Um pouco mais suave que 5
          side: BorderSide(color: Colors.grey.shade100), // Borda sutil
        ),
      ),

      // --- FLOATING ACTION BUTTON ---
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: _secondary,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),

      // --- POPUP MENU ---
      popupMenuTheme: PopupMenuThemeData(
        color: Colors.white,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        textStyle: const TextStyle(color: _primary),
      ),
    );
  }
}*/

import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  // Tema Claro Completo – Material 3 OTIMIZADO (Alto Contraste)
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryRed,
      onPrimary: Colors.white,
      secondary: AppColors.secondaryAccent,
      onSecondary: Colors.white,
      surface: AppColors.lightSurface,
      onSurface: AppColors.primaryDarkText,
      error: Colors.redAccent,
      onError: Colors.white,
    ),

    scaffoldBackgroundColor: AppColors.softBackground,

    // Configuração da AppBar (Sem alteração, funciona bem)
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.primaryRed,
      foregroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
    ),

    // Configuração dos Cards
    cardTheme: CardThemeData(
      color: AppColors.lightSurface, // Branco puro em fundo cinza claro para destaque
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: const BorderSide(color: AppColors.inputBorder, width: 0.4), // Borda sutil
      ),
    ),

    // Configuração dos Botões Elevados (Sem alteração, o vermelho é o foco)
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryRed,
        foregroundColor: Colors.white,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      ),
    ),

    // Configuração dos Botões de Texto
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryRed,
        textStyle: const TextStyle(fontWeight: FontWeight.w500),
      ),
    ),

    // Configuração da Tipografia (Melhor Contraste)
    textTheme: TextTheme(
      // displayLarge e headlineMedium agora usam AppColors.primaryDarkText
      displayLarge: TextStyle(
        fontWeight: FontWeight.bold,
        color: AppColors.primaryDarkText,
        fontSize: 32,
      ),
      headlineMedium: TextStyle(
        fontWeight: FontWeight.w600,
        color: AppColors.primaryDarkText,
        fontSize: 24,
      ),
      bodyLarge: TextStyle(color: AppColors.primaryDarkText, fontSize: 16),
      // Principal texto (escuro)
      bodyMedium: TextStyle(color: AppColors.secondaryText, fontSize: 14),
      // Texto secundário (cinza)
      labelLarge: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
    ),

    // Configuração dos Campos de Input (Text Fields)
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurface,
      // Fundo branco dentro do campo
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.inputBorder, width: 1.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.inputBorder, width: 1.0), // Borda cinza claro
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(
          color: AppColors.primaryRed,
          width: 2.0,
        ), // Foco com borda vermelha
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.redAccent, width: 1.5),
      ),
      labelStyle: const TextStyle(color: AppColors.secondaryText),
      hintStyle: const TextStyle(color: AppColors.secondaryText),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    ),
  );

  // O Tema Escuro precisaria ser revisado para ter o mesmo alto contraste,
  // mas o padrão de cores principais (vermelho, cinzas) continua válido.
  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    fontFamily: 'Roboto',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryRed,
      onPrimary: Colors.white,
      secondary: AppColors.inputBorder,
      onSecondary: Colors.black,
      surface: Color(0xFF263238),
      onSurface: Colors.white,
      error: Colors.redAccent,
      onError: Colors.white,
    ),

    scaffoldBackgroundColor: const Color(0xFF1E272C),
  );
}
