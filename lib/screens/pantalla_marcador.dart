
import 'package:flutter/material.dart';

import '../themes/tema_app.dart';
import '../widgets/marcador_superior.dart';
import '../widgets/tarjeta_equipo.dart';

// Esta es la pantalla principal de nuestra aplicación.
// Utilizamos StatefulWidget porque las puntuaciones van cambiando.
class PantallaMarcador extends StatefulWidget {
  const PantallaMarcador({super.key});

  // Creamos el estado donde guardaremos las puntuaciones
  // y las funciones que permiten modificarlas.
  @override
  State<PantallaMarcador> createState() {
    return _PantallaMarcadorState();
  }
}

// En esta clase controlamos los datos que pueden cambiar.
class _PantallaMarcadorState extends State<PantallaMarcador> {

  // Puntuaciones iniciales de los dos equipos.
  int puntosLocal = 10;
  int puntosVisitante = 21;

  // FUNCIÓN PARA SUMAR UN PUNTO AL EQUIPO LOCAL.
  void sumarLocal() {
    // setState avisa a Flutter de que ha cambiado la puntuación
    // y que debe actualizar los elementos que muestran ese valor.
    setState(() {
      puntosLocal++;
    });
  }

  // FUNCIÓN PARA RESTAR UN PUNTO AL EQUIPO LOCAL.
  void restarLocal() {
    // Comprobamos que los puntos sean mayores que cero
    // para evitar que la puntuación pueda ser negativa.
    if (puntosLocal > 0) {
      setState(() {
        puntosLocal--;
      });
    }
  }

  // FUNCIÓN PARA SUMAR UN PUNTO AL EQUIPO VISITANTE.
  void sumarVisitante() {
    setState(() {
      puntosVisitante++;
    });
  }

  // FUNCIÓN PARA RESTAR UN PUNTO AL EQUIPO VISITANTE.
  void restarVisitante() {
    // Solo restamos si la puntuación es mayor que cero.
    if (puntosVisitante > 0) {
      setState(() {
        puntosVisitante--;
      });
    }
  }

  // FUNCIÓN RESET: pone las dos puntuaciones a cero.
  void reiniciarMarcador() {
    setState(() {
      puntosLocal = 0;
      puntosVisitante = 0;
    });
  }

  // Construimos la interfaz de la pantalla principal.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SafeArea evita que el contenido quede debajo de zonas
      // reservadas del dispositivo, como la barra de estado.
      body: SafeArea(
        child: Padding(
          // Añadimos un margen de 16 píxeles alrededor del contenido.
          padding: const EdgeInsets.all(16),

          // Column organiza los elementos de arriba hacia abajo.
          child: Column(
            children: [

              // CABECERA: muestra el icono y el título.
              const Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.white,
                    size: 22,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'MARCADOR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),

              // Espacio entre la cabecera y el marcador superior.
              const SizedBox(height: 36),

              // MARCADOR SUPERIOR.
              // Le pasamos las mismas variables que utilizamos
              // en las tarjetas para mantener las puntuaciones sincronizadas.
              MarcadorSuperior(
                puntosLocal: puntosLocal,
                puntosVisitante: puntosVisitante,
              ),

              const SizedBox(height: 16),

              // TARJETAS DE LOS DOS EQUIPOS.
              // Expanded permite que las tarjetas ocupen el espacio disponible.
              // Row las coloca una al lado de la otra.
              Expanded(
                child: Row(
                  children: [

                    // TARJETA DEL EQUIPO LOCAL.
                    Expanded(
                      child: TarjetaEquipo(
                        nombre: 'EQUIPO LOCAL',
                        puntos: puntosLocal,
                        colorPrincipal: TemaApp.azul,
                        colorOscuro: TemaApp.azulOscuro,

                        // Enviamos las funciones que se ejecutan
                        // cuando pulsamos los botones de esta tarjeta.
                        alSumar: sumarLocal,
                        alRestar: restarLocal,
                      ),
                    ),

                    // Espacio de separación entre las tarjetas.
                    const SizedBox(width: 16),

                    // TARJETA DEL EQUIPO VISITANTE.
                    Expanded(
                      child: TarjetaEquipo(
                        nombre: 'EQUIPO VISITA',
                        puntos: puntosVisitante,
                        colorPrincipal: TemaApp.rojo,
                        colorOscuro: TemaApp.rojoOscuro,
                        alSumar: sumarVisitante,
                        alRestar: restarVisitante,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              // BOTÓN RESET: llama a la función que pone
              // las puntuaciones de ambos equipos a cero.
              SizedBox(
                width: 178,
                height: 40,
                child: OutlinedButton.icon(
                  onPressed: reiniciarMarcador,
                  icon: const Icon(
                    Icons.refresh,
                    size: 22,
                  ),
                  label: const Text(
                    'RESET',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: TemaApp.gris,
                    side: const BorderSide(
                      color: Colors.white60,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
