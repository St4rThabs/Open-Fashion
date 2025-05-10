import 'package:flutter/material.dart';
import 'package:open_fashion/models/item.dart';
import 'package:open_fashion/pages/item_selected_page.dart';
import 'package:open_fashion/widgets/store_item_widget.dart';

class GridViewPage extends StatelessWidget {
  final int? category;

  //Json api
  final List<Map> itemJson = [
    {
      "id": 1344,
      "title": "21WN",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa1344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 2344,
      "title": "lamerei",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa2344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 4344,
      "title": "21WN",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa4344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 3344,
      "title": "lamerei",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa3344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 1344,
      "title": "21WN",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa1344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 2344,
      "title": "lamerei",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa2344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 4344,
      "title": "21WN",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa4344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 3344,
      "title": "lamerei",
      "subtitle": "reversible angora cardigan",
      "imagepath": "assets/blusa3344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
  ];

  GridViewPage({this.category, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(children: [Text("Cabecalho"), Text(" aaa")]),
          Row(children: [Text("Filters")]),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: (1 / 2), //1 = width, 2.2 height
              children: [
                //Itens grid view da lista de itensCategory
                ...itemJson.map(
                  (item) => (StoreItemWidget(
                    onPressed:
                        () => {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder:
                                  (context) =>
                                      ItemSelectedPage(idItem: item['id']),
                            ),
                          ),
                        },
                    item: Item(
                      id: item['id'],
                      imagePath: item['imagepath'],
                      title: item["title"],
                      subTitle: item["subtitle"],
                      price: item["price"],
                      colors: item["colors"],
                      sizes: item["sizes"],
                    ),
                  )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
