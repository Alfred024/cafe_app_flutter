import 'package:flutter/material.dart';

const Color _primaryColor = Color(0xFFFF7F50);
const Color _secondaryColor = Color.fromARGB(255, 243, 126, 80);
// const Color _secondaryColor = Color(0xFF4CAF50);
// const Color _accentColor = Color(0xFFFFD700);
// const Color _backgroundColor = Color(0xFFF7F7F7);

const List<Color> _colorThemes = [
  _primaryColor,
  // _bgPrimaryColor,
  // _secondaryColor,
  // _accentColor,
  // _backgroundColor,
];

class AppTheme {
  final int colorSelcted;

  AppTheme({this.colorSelcted = 0})
      : assert(colorSelcted >= 0 && colorSelcted <= _colorThemes.length - 1,
            'Please choose a valid theme [0 - 1]');

  static InputDecorationTheme textFieldsFormsDecoration = InputDecorationTheme(
    labelStyle: const TextStyle(color: Colors.red, fontSize: 15),
    hintStyle: const TextStyle(
        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
    contentPadding: const EdgeInsets.all(10),
    prefixIconColor: _primaryColor,
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _primaryColor),
        borderRadius: BorderRadius.circular(20)),
    focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: _secondaryColor, width: 1.6),
        borderRadius: BorderRadius.circular(20)),
  );

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        //primaryColor: Color,
        colorSchemeSeed: _colorThemes[colorSelcted],
        inputDecorationTheme: textFieldsFormsDecoration);
  }

  //const inputsDecoratio = I
}
