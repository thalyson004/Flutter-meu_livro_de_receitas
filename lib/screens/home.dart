import 'package:flutter/material.dart';

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
        onPressed: () {},
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
        ),
      ),
    );
  }
}