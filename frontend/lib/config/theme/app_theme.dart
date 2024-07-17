import 'package:flutter/material.dart';

class AppTheme {

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: Colors.purple,
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 2
      ),
    );
  }
}