
import 'package:flutter/material.dart';

// Importamos el tema y la pantalla que vamos a mostrar al iniciar.
import 'themes/tema_app.dart';
import 'screens/pantalla_marcador.dart';

// Es la primera función que se ejecuta al iniciar la aplicación.
void main() {
  // Iniciamos la aplicación mostrando nuestro widget principal.
  runApp(const AplicacionMarcador());
}

// Widget principal que configura nuestra aplicación.
class AplicacionMarcador extends StatelessWidget {
  const AplicacionMarcador({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp permite configurar el nombre, los colores
    // y la pantalla inicial de nuestra aplicación.
    return MaterialApp(
      title: 'Marcador Deportivo',

      // Ocultamos la etiqueta DEBUG que aparece al desarrollar.
      debugShowCheckedModeBanner: false,

      // Aplicamos los colores y estilos definidos en TemaApp.
      theme: TemaApp.tema,

      // Indicamos que PantallaMarcador será la primera pantalla.
      home: const PantallaMarcador(),
    );
  }
}
