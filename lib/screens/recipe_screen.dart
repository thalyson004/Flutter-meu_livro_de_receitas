import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeScreen extends StatefulWidget {
  @override
  _RecipeScreenState createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Column(
//        mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Card(
                child: Text('Minha receita'),
              ),
            ),
//           Vídeo aq ui
            Expanded(
              flex: 3,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text('Ingredientes'),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                          Text('Ingrediente x'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Text('Modo de preparo'),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                          Text('Faça X'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
