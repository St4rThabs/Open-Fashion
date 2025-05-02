import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  final int? category;

   List<Map> itensCategory = [
      {
        "idItem": 1, 
        "imagePath": "assets/blusa1.png",
        "title": "Roupa Feminina", 
        "subTitle": "Roupa de algodao", 
        "price": 120, 
        "colors": [Colors.black],
        "sizes": ["P", "M"]
      },
      {
        "idItem": 1, 
        "imagePath": "assets/blusa1.png",
        "title": "Roupa Feminina", 
        "subTitle": "Roupa de algodao", 
        "price": 120, 
        "colors": [Colors.black],
        "sizes": ["P", "M"]
      },
      {
        "idItem": 1, 
        "imagePath": "assets/blusa1.png",
        "title": "Roupa Feminina", 
        "subTitle": "Roupa de algodao", 
        "price": 120, 
        "colors": [Colors.black],
        "sizes": ["P", "M"]
      }
    ];

  GridViewPage({this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(children: [Text("Cabecalho"),Text(" aaa")],),
            Row(children: [Text("Filters")],),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  //Itens grid view
                  ...itensCategory.map((item) => Container(child: Text(item['title'].toString())))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
