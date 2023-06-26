import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F); // We have tu use 0xFF and the hex code

const List<Color> _colorThemes = [
  _customColor, // My custom color is by default
  Colors.blue,
  Colors.yellow,
  Colors.orange,
  Colors.teal,
  Colors.red,
  Colors.brown,
  Colors.blueGrey,
  Colors.pink,
];


class AppTheme {
  final int selectedColor;

  AppTheme ({
    this.selectedColor = 0
  }) : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1, 'Selected color mus be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor]
    );
  }
}