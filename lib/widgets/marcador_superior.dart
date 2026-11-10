
import 'package:flutter/material.dart';
import '../themes/tema_app.dart';

// Widget que muestra las puntuaciones de los dos equipos.
class MarcadorSuperior extends StatelessWidget {
  final int puntosLocal;
  final int puntosVisitante;

  const MarcadorSuperior({
    super.key,
    required this.puntosLocal,
    required this.puntosVisitante,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: TemaApp.gris,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white54),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Indicador del equipo local.
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

          // Puntuaciones centrales.
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
                Text(
                  '$puntosLocal',
                  style: const TextStyle(
                    color: TemaApp.azul,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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

          // Indicador del equipo visitante.
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
