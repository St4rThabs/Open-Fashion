import 'package:flutter/material.dart';

class ItemSelectedPage extends StatelessWidget {
  final int idItem;
  const ItemSelectedPage({super.key, required this.idItem});

  static const TextStyle titleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle priceStyle = TextStyle(
    fontSize: 16,
    color: Colors.orange,
  );

  //Json api
  static const List<Map> itemJson = [
    {
      "id": 1344,
      "title": "21WN",
      "subtitle": "Reversible angora cardigan",
      "imagepath": "assets/blusa1344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 2344,
      "title": "lamerei",
      "subtitle": "Reversible angora cardigan",
      "imagepath": "assets/blusa2344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 4344,
      "title": "21WN",
      "subtitle": "Reversible angora cardigan",
      "imagepath": "assets/blusa4344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
    {
      "id": 3344,
      "title": "lamerei",
      "subtitle": "Reversible angora cardigan",
      "imagepath": "assets/blusa3344.png",
      "price": 120.00,
      "colors": ["black"],
      "sizes": ["P", "M"],
    },
  ];

  Map getItemSelected() {
    //firstWhere procura em um map
    return itemJson.firstWhere(
      (item) => item["id"] == idItem,
      orElse: () => {},
    );
  }

  @override
  Widget build(BuildContext context) {
    Map itemSelected = getItemSelected();
    return Scaffold(
      appBar: AppBar(title: Text("Store")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(6),
            width: double.infinity,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('assets/blusaSelected.png')],
                ),
                Padding(padding: EdgeInsets.all(6)),
                title(itemSelected),
                Padding(padding: EdgeInsets.all(2)),
                subtitle(itemSelected),
                Padding(padding: EdgeInsets.all(2)),
                price(itemSelected),
                Padding(padding: EdgeInsets.all(2)),
                ColorAndSize(itemSelected),
              ],
            ),
          ),
          Container(
              height: 60,
              width: double.infinity,
              color: Colors.black,
              child: TextButton(onPressed: () => {print("aa")}, child: Text("+ ADD CART", style: TextStyle(color: Colors.white),)),
            ),
        ],
      ),
    );
  }

  Container ColorAndSize(Map itemSelected) {
    return Container(
      padding: EdgeInsets.only(left: 29),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Row(children: [
            Text("Cores: "),
            Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.black,), width: 14, height: 14),
            Padding(padding: EdgeInsets.all(2)),
            Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.orange,), width: 14, height: 14),
            Padding(padding: EdgeInsets.all(2)),
            Container(decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blueGrey,), width: 14, height: 14),
            
          ])),
          Padding(padding: EdgeInsets.all(4)),
          Expanded(child: Row(children: [
            Text("Tamanho"),
            Padding(padding: EdgeInsets.all(2)),
            size("S"),
            Padding(padding: EdgeInsets.all(2)),
            size("L"),
             Padding(padding: EdgeInsets.all(2)),
            size("M"),
          ])),
        ],
      ),
    );
  }

  Container size(String size) {
    return Container(
            decoration: BoxDecoration(shape: BoxShape.circle, 
            border: Border.all(color: Colors.black)), 
            width: 20, 
            height: 20,
            child: Center(child: Text(size)),
            );
  }

  Container price(Map<dynamic, dynamic> itemSelected) {
    return Container(
      padding: EdgeInsets.only(left: 29),
      child: Row(
        children: [Text("R\$${itemSelected['price']}", style: priceStyle)],
      ),
    );
  }

  Container subtitle(Map<dynamic, dynamic> itemSelected) {
    return Container(
      padding: EdgeInsets.only(left: 29),
      child: Row(
        children: [
          Text(itemSelected['subtitle'], style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }

  Container title(Map<dynamic, dynamic> itemSelected) => Container(
    padding: EdgeInsets.only(left: 29),
    child: Row(children: [Text(itemSelected['title'], style: titleStyle)]),
  );
}
