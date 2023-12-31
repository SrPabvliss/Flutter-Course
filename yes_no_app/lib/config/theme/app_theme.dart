import 'package:flutter/material.dart';

const Color _customColor = Color(0xFF49149F);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor < _colorTheme.length && selectedColor >= 0,
            'Invalid theme selected ');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selectedColor],
    );
  }
}
