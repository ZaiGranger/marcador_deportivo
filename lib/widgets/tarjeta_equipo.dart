
import 'package:flutter/material.dart';

// Widget reutilizable para mostrar la tarjeta de un equipo.
class TarjetaEquipo extends StatelessWidget {

  // Datos que recibe la tarjeta.
  final String nombre;
  final int puntos;
  final Color colorPrincipal;
  final Color colorOscuro;

  // Funciones que se ejecutarán al pulsar los botones.
  final VoidCallback alSumar;
  final VoidCallback alRestar;

  const TarjetaEquipo({
    super.key,
    required this.nombre,
    required this.puntos,
    required this.colorPrincipal,
    required this.colorOscuro,
    required this.alSumar,
    required this.alRestar,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),

      child: Column(
        children: [

          // ZONA SUPERIOR: botón para sumar.
          Expanded(
            flex: 2,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: alSumar,
              child: Container(
                width: double.infinity,
                color: colorPrincipal,
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 76,
                  ),
                ),
              ),
            ),
          ),

          // ZONA CENTRAL: puntuación del equipo.
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: colorOscuro,
              child: Center(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    '$puntos',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 96,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // ZONA INFERIOR: botón para restar.
          Expanded(
            flex: 2,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: alRestar,
              child: Container(
                width: double.infinity,
                color: colorPrincipal,
                child: const Center(
                  child: Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 76,
                  ),
                ),
              ),
            ),
          ),

          // PIE DE TARJETA: nombre del equipo.
          Container(
            width: double.infinity,
            height: 32,
            color: colorOscuro,
            alignment: Alignment.center,
            child: Text(
              nombre,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
