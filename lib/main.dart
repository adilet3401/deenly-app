import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sabr/widgets/logo_page.dart';
import 'theme/theme.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => ThemeProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      theme: themeProvider.lightTheme,
      darkTheme: themeProvider.darkTheme,
      themeMode: themeProvider.themeMode, // Управление темой
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
