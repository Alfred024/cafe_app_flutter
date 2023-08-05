import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFFFF7F50);
const Color _bgPrimaryColor = Color(0xFFFF7F50);
const Color _secondaryColor = Color(0xFF4CAF50);
const Color _accentColor = Color(0xFFFFD700);
const Color _backgroundColor = Color(0xFFF7F7F7);

const List<Color> _colorThemes = [
  _primaryColor,
  _bgPrimaryColor,
  _secondaryColor,
  _accentColor,
  _backgroundColor,
];

class AppTheme {
  final int colorSelcted;

  AppTheme({this.colorSelcted = 0})
      : assert(colorSelcted >= 0 && colorSelcted <= _colorThemes.length - 1,
            'Please choose a valid theme [0 - 3]');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[colorSelcted]);
  }
}
