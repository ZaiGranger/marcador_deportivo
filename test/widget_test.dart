import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:marcador_deportivo/main.dart';

// Prueba automática del marcador deportivo.
void main() {
  testWidgets('El marcador muestra los puntos iniciales',
      (WidgetTester tester) async {

    // Cargamos nuestra aplicación.
    await tester.pumpWidget(const AplicacionMarcador());

    // Comprobamos las puntuaciones iniciales.
    expect(find.text('10'), findsNWidgets(2));
    expect(find.text('21'), findsNWidgets(2));

    // Comprobamos que existen los botones para sumar.
    expect(find.byIcon(Icons.add), findsNWidgets(2));
  });
}
