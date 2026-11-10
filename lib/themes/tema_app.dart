
import 'package:flutter/material.dart';

// En esta clase guardamos los colores que utilizamos
// en las diferentes partes de nuestra aplicación.
class TemaApp {

  // Colores del fondo y elementos generales.
  static const Color fondo = Color(0xFF101114);
  static const Color gris = Color(0xFF292A2C);
  static const Color blanco = Colors.white;

  // Colores utilizados para el equipo local.
  static const Color azul = Color(0xFF3982F6);
  static const Color azulOscuro = Color(0xFF305EAD);

  // Colores utilizados para el equipo visitante.
  static const Color rojo = Color(0xFFE12428);
  static const Color rojoOscuro = Color(0xFF991E22);

  // Configuramos el tema general de la aplicación.
  static ThemeData get tema {
    return ThemeData(
      // Utilizamos el diseño Material 3 de Flutter.
      useMaterial3: true,

      // Establecemos el color de fondo de las pantallas.
      scaffoldBackgroundColor: fondo,

      // Configuramos una apariencia oscura.
      colorScheme: ColorScheme.fromSeed(
        seedColor: azul,
        brightness: Brightness.dark,
      ),
    );
  }
}
