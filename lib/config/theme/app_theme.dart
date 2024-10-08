import 'package:flutter/material.dart';


const colorList = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    this.selectedColor = 0
  }): assert (selectedColor >= 0, 'Selecter Color must Be greater then 0'  ),
   assert (selectedColor < colorList.length, 'Selecter Color must Be lower then ${colorList.length}'  );

  ThemeData getTheme()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
  );
}