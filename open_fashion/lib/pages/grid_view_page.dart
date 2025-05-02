import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget{
  int? category;

  GridViewPage({ this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Voltar"),),
      body: Text(category.toString()),
    );
  }
}