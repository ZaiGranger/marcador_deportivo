import 'package:flutter/material.dart';

// Importamos el tema y la pantalla principal.
import 'themes/tema_app.dart';
import 'screens/pantalla_marcador.dart';

// Función principal que inicia la aplicación.
void main() {
  runApp(const AplicacionMarcador());
}

// Widget principal de nuestra aplicación.
class AplicacionMarcador extends StatelessWidget {
  const AplicacionMarcador({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Marcador Deportivo',

      // Oculta la etiqueta DEBUG.
      debugShowCheckedModeBanner: false,

      // Utiliza nuestro tema de colores.
      theme: TemaApp.tema,

      // Establece la pantalla inicial.
      home: const PantallaMarcador(),
    );
  }
}