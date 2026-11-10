
import 'package:flutter/material.dart';

// Este widget construye la tarjeta de cada equipo.
// Lo utilizamos dos veces, una para el equipo local y otra para el visitante.
class TarjetaEquipo extends StatelessWidget {

  // Datos que recibe la tarjeta desde la pantalla principal.
  final String nombre;
  final int puntos;
  final Color colorPrincipal;
  final Color colorOscuro;

  // Recibimos las funciones que se ejecutarán al pulsar los botones.
  // VoidCallback representa una función sin parámetros ni resultado.
  final VoidCallback alSumar;
  final VoidCallback alRestar;

  // Constructor: recibe los datos necesarios para crear cada tarjeta.
  // required indica que estos parámetros son obligatorios.
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

    // ClipRRect permite redondear las esquinas de la tarjeta.
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),

      // Column organiza las cuatro zonas de la tarjeta verticalmente.
      child: Column(
        children: [

          // ZONA SUPERIOR: botón para sumar un punto.
          // Expanded permite repartir el espacio disponible.
          Expanded(
            flex: 2,
            child: GestureDetector(
              // Detectamos la pulsación del usuario.
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

          // ZONA CENTRAL: muestra la puntuación actual del equipo.
          // Esta zona ocupa más espacio que las de los botones.
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              color: colorOscuro,
              child: Center(

                // FittedBox adapta el tamaño del número si no cabe.
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

          // ZONA INFERIOR: botón para restar un punto.
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

          // PIE DE TARJETA: muestra el nombre del equipo.
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
