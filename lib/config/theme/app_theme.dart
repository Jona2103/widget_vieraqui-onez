import 'package:flutter/material.dart';

const List<Color> colorList = <Color>[
  Colors.red,
  Colors.black,
  Colors.blue,
  Colors.green,
  Colors.yellow,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0 
    }) : assert(selectedColor >= 0, 'The color must be greater than or equal to 0'),
        assert(selectedColor < colorList.length, 'The color index must be less than the color list length');   

  ThemeData themeData() =>ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    appBarTheme: AppBarTheme(
      centerTitle: true,
    ),
  );
}