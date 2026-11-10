
import 'package:flutter/material.dart';
import '../themes/tema_app.dart';

// Este widget muestra las puntuaciones de los dos equipos
// en la parte superior de la pantalla.
class MarcadorSuperior extends StatelessWidget {

  // Recibimos las puntuaciones desde la pantalla principal.
  final int puntosLocal;
  final int puntosVisitante;

  // Constructor con las dos puntuaciones obligatorias.
  const MarcadorSuperior({
    super.key,
    required this.puntosLocal,
    required this.puntosVisitante,
  });

  @override
  Widget build(BuildContext context) {

    // Container crea el fondo y establece las dimensiones del marcador.
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16),

      // BoxDecoration permite configurar el fondo, los bordes
      // y las esquinas redondeadas del marcador.
      decoration: BoxDecoration(
        color: TemaApp.gris,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white54),
      ),

      // Row organiza los elementos horizontalmente.
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          // INDICADOR DEL EQUIPO LOCAL.
          const Row(
            children: [
              Icon(Icons.circle, color: TemaApp.azul, size: 9),
              SizedBox(width: 7),
              Text(
                'LOCAL',
                style: TextStyle(
                  color: TemaApp.azul,
                  fontSize: 12,
                ),
              ),
            ],
          ),

          // PUNTUACIONES CENTRALES.
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 7,
            ),
            decoration: BoxDecoration(
              color: TemaApp.fondo,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              children: [

                // Mostramos la puntuación del equipo local.
                // El símbolo $ permite introducir el valor de una variable
                // dentro de un texto.
                Text(
                  '$puntosLocal',
                  style: const TextStyle(
                    color: TemaApp.azul,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                // Texto que separa las puntuaciones.
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'VS',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 12,
                    ),
                  ),
                ),

                // Mostramos la puntuación del equipo visitante.
                Text(
                  '$puntosVisitante',
                  style: const TextStyle(
                    color: TemaApp.rojo,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          // INDICADOR DEL EQUIPO VISITANTE.
          const Row(
            children: [
              Text(
                'VISITA',
                style: TextStyle(
                  color: TemaApp.rojo,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 7),
              Icon(Icons.circle, color: TemaApp.rojo, size: 9),
            ],
          ),
        ],
      ),
    );
  }
}
