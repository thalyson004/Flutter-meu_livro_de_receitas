import 'package:flutter/material.dart';
import 'screens/recipe_screen.dart';
import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/recipe',
      routes: {
        '/': (context) => Home(),
        '/recipe': (context) => RecipeScreen(),
      },
    );
  }
}
