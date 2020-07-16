import 'package:flutter/material.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Card(
              child: Text('Minha receita'),
            ),
            Card(
              child: Text('Vídeo'),
            ),
            Card(
              child: Text('Ingredientes'),
            ),
            Card(
              child: Text('Modo de Preparo'),
            ),
          ],
        ),
      ),
    );
  }
}
