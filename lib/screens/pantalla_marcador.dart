
import 'package:flutter/material.dart';

import '../themes/tema_app.dart';
import '../widgets/marcador_superior.dart';
import '../widgets/tarjeta_equipo.dart';

// Pantalla principal del marcador deportivo.
class PantallaMarcador extends StatefulWidget {
  const PantallaMarcador({super.key});

  @override
  State<PantallaMarcador> createState() {
    return _PantallaMarcadorState();
  }
}

// Estado de la pantalla: almacena las puntuaciones.
class _PantallaMarcadorState extends State<PantallaMarcador> {

  // Puntuaciones iniciales de los equipos.
  int puntosLocal = 10;
  int puntosVisitante = 21;

  // Sumar un punto al equipo local.
  void sumarLocal() {
    setState(() {
      puntosLocal++;
    });
  }

  // Restar un punto al local sin permitir negativos.
  void restarLocal() {
    if (puntosLocal > 0) {
      setState(() {
        puntosLocal--;
      });
    }
  }

  // Sumar un punto al equipo visitante.
  void sumarVisitante() {
    setState(() {
      puntosVisitante++;
    });
  }

  // Restar un punto al visitante sin permitir negativos.
  void restarVisitante() {
    if (puntosVisitante > 0) {
      setState(() {
        puntosVisitante--;
      });
    }
  }


  // Reinicia las puntuaciones de ambos equipos.
  void reiniciarMarcador() {
    setState(() {
      puntosLocal = 0;
      puntosVisitante = 0;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [

              // CABECERA DE LA APLICACIÓN.
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

              const SizedBox(height: 36),

              // MARCADOR SUPERIOR.
              MarcadorSuperior(
                puntosLocal: puntosLocal,
                puntosVisitante: puntosVisitante,
              ),

              const SizedBox(height: 16),

              // TARJETAS DE LOS DOS EQUIPOS.
              Expanded(
                child: Row(
                  children: [

                    // Equipo local.
                    Expanded(
                      child: TarjetaEquipo(
                        nombre: 'EQUIPO LOCAL',
                        puntos: puntosLocal,
                        colorPrincipal: TemaApp.azul,
                        colorOscuro: TemaApp.azulOscuro,
                        alSumar: sumarLocal,
                        alRestar: restarLocal,
                      ),
                    ),

                    const SizedBox(width: 16),

                    // Equipo visitante.
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


              // BOTÓN RESET: reinicia los dos equipos.
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
