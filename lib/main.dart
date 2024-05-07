import 'package:ecommerce_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'screens/welcome_screen.dart';
import 'themes/light_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      routes: {
        '/': (context) => WelcomeScreen(),
        '/main_screen': (context) => MainScreen(),
      },
    );
  }
}
