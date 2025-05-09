import 'package:flutter/material.dart';

const primaryColor = Colors.red;
final themeData = ThemeData(
  dividerTheme: DividerThemeData(color: Colors.grey.shade400),
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Color(0xffF2EFE7),
  colorScheme: ColorScheme.fromSeed(
    seedColor: primaryColor,
    brightness: Brightness.dark,
  ),
  appBarTheme: AppBarTheme(color: Color(0xff948979)),
  useMaterial3: true,
);
