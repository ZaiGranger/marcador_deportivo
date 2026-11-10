
# Marcador Deportivo - Flutter

## Descripción

Aplicación de marcador deportivo desarrollada con Flutter y Dart para la práctica individual de Desarrollo de Interfaces (UD2).

Permite controlar la puntuación de dos equipos, uno local y otro visitante.

## Funcionalidades

- Aumentar un punto a cada equipo.
- Disminuir un punto sin permitir puntuaciones negativas.
- Actualizar simultáneamente el marcador superior y las tarjetas.
- Reiniciar las puntuaciones mediante el botón RESET.

## Estructura del proyecto

```text
lib/
├── main.dart
├── themes/
│   └── tema_app.dart
├── screens/
│   └── pantalla_marcador.dart
└── widgets/
    ├── marcador_superior.dart
    └── tarjeta_equipo.dart
```

## Tecnologías utilizadas

- Flutter
- Dart
- Visual Studio Code

## Ejecución

Instalar las dependencias:

```bash
flutter pub get
```

Ejecutar en Chrome:

```bash
flutter run -d chrome
```

Ejecutar las pruebas:

```bash
flutter test
```

## Autora

Zaida Aguilella

Práctica individual UD2 - Desarrollo de Interfaces.
