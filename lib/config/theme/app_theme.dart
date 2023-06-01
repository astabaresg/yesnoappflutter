import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFEE5622);
const List<Color> _colorThemes = [
  _customColor,
  Color(0xFF196774),
  Color(0xFF520120),
  Color(0xFF8C141E),
  Color(0xFF0D2723),
  Color(0xFF4C5A41),
  Color(0xFFB1DDA0),
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors most be between 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      // brightness: Brightness.dark
    );
  }
}
