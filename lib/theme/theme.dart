import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  ThemeMode get themeMode => _themeMode;

  void toggleTheme() {
    _themeMode =
        _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ThemeData get lightTheme => ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff16423C),
      foregroundColor: Colors.black, // Цвет текста AppBar
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff16423C)),
    scaffoldBackgroundColor: Colors.white, // Цвет фона Scaffold
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black), // Цвет текста
    ),
  );

  ThemeData get darkTheme => ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xff191b1e),
      foregroundColor: Colors.white, // Цвет текста AppBar
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff191b1e)),

    scaffoldBackgroundColor: Color(0xff1f2023), // Цвет фона Scaffold
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white), // Цвет текста
    ),
  );
}
