import 'package:flutter/material.dart';

class ItemSelectedPage extends StatelessWidget{
  final int idItem;

  const ItemSelectedPage({super.key, required this.idItem});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Store"),),
      body: Column(
        children: [Text(idItem.toString())],
      ),
    );
  }

}