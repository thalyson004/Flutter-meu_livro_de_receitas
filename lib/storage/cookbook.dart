import 'package:flutter/cupertino.dart';
import '../components/recipe.dart';

List<Widget> ListOfRecipes() {
  List<Widget> list = [];

  for (int i = 0; i < cookBook.length; i++) {
    print('Vai colocar' + cookBook[i].name);
    list.add(Text(cookBook[i].name));
  }

  return list;
}

List<Recipe> cookBook = [
  Recipe(
    name: 'Receita Teste 1',
    ingredients: ['Ingrediente 1', 'Ingrediente 2'],
    prepare: ['Passo 1', 'Passo 2'],
  ),
  Recipe(
    name: 'Receita Teste 2',
    ingredients: ['Ingrediente 1', 'Ingrediente 2'],
    prepare: ['Passo 1', 'Passo 2'],
  ),
];
