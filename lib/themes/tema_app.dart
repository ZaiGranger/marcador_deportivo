import 'package:flutter/material.dart';

// Clase que contiene los colores y el tema de nuestra aplicación.
class TemaApp {

  // Colores generales de la interfaz.
  static const Color fondo = Color(0xFF101114);
  static const Color gris = Color(0xFF292A2C);
  static const Color blanco = Colors.white;

  // Colores del equipo local (azul).
  static const Color azul = Color(0xFF3982F6);
  static const Color azulOscuro = Color(0xFF305EAD);

  // Colores del equipo visitante (rojo).
  static const Color rojo = Color(0xFFE12428);
  static const Color rojoOscuro = Color(0xFF991E22);

  // Tema visual general de la aplicación.
  static ThemeData get tema {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: fondo,
      colorScheme: ColorScheme.fromSeed(
        seedColor: azul,
        brightness: Brightness.dark,
      ),
    );
  }
}
