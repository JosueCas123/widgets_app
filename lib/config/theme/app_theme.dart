
import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue, // Blue
  Colors.teal, // Green
  Colors.green, // Yellow
  Colors.red, // Red
  Colors.deepPurple, // Purple
  Colors.pink, // Orange
];
 

class AppTheme {
  final int selectedColors;

  const AppTheme({
    required this.selectedColors,
  }):assert(
    selectedColors >= 0 && selectedColors < colorList.length,
    'selectedColors must be between 0 and ${colorList.length - 1}',
  );

  ThemeData gethemeData() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[ selectedColors ],
    appBarTheme: AppBarTheme(
      centerTitle: false,
    )
  );
}