import 'package:flutter/material.dart';

ThemeData estilo() {
  // No lugar de dark podemos colocar tema claro tbm
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: Colors.grey.shade300),

    // Botao flutuante
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.orange.shade800,
        foregroundColor: Colors.white,
        hoverColor: Colors.orange.shade200),
  );
}
