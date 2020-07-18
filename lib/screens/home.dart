import 'package:flutter/material.dart';
import 'package:meu_livro_de_receitas/storage/cookbook.dart';

class Home extends StatelessWidget {
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
                      decoration: InputDecoration(
                        hintText: 'Digite o nome da receita',
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite os ingredientes',
                      ),
                      maxLines: 5,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Digite o modo de preparo',
                      ),
                      maxLines: 5,
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
