import 'package:flutter/material.dart';
import 'package:meu_livro_de_receitas/storage/cookbook.dart';
import '../components/recipe.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController _name;
  TextEditingController _ingredients;
  TextEditingController _prepare;

  String recipeName;
  String recipeIngredients;
  String recipePrepare;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu livro de receitas',
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.red[900],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (context) {
              return Container(
                color: Colors.white70,
                child: ListView(
                  children: <Widget>[
                    TextField(
                      controller: _name,
                      decoration: InputDecoration(
                        hintText: 'Digite o nome da receita',
                      ),
                      onChanged: (String value) {
                        recipeName = value;
                      },
                    ),
                    TextField(
                      controller: _ingredients,
                      decoration: InputDecoration(
                        hintText: 'Digite os ingredientes',
                      ),
                      onChanged: (String value) {
                        recipeIngredients = value;
                      },
                    ),
                    TextField(
                      controller: _prepare,
                      decoration: InputDecoration(
                        hintText: 'Digite o modo de preparo',
                      ),
                      onChanged: (String value) {
                        recipePrepare = value;
                        print(recipePrepare);
                      },
                    ),
                    FloatingActionButton(
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                      ),
                      backgroundColor: Colors.red[100],
                      onPressed: () {
                        setState(() {
                          cookBook.add(
                            Recipe(
                              name: recipeName,
                              ingredients: <String>[recipeIngredients],
                              prepare: <String>[recipePrepare],
                            ),
                          );
//                          _name.clear();
//                          _ingredients.clear();
//                          _prepare.clear();
                        });
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
        tooltip: 'Increment',
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        backgroundColor: Colors.red[100],
      ),
      body: SafeArea(
        child: Container(
          color: Colors.redAccent,
          child: ListView(
            children: ListOfRecipes(),
          ),
        ),
      ),
    );
  }
}
