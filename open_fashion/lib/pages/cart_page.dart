import 'package:flutter/material.dart';
import 'package:open_fashion/models/item.dart';
import 'package:open_fashion/widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  
  List<CartItem> cartItens = [
    CartItem(
      item: Item(
        imagePath: "https://picsum.photos/200/300",
        title: "Roupa feminina",
        subTitle: "Roupa Feminina para o verao",
        price: 130,
        colors: [Colors.black],
        sizes: ['M'],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("")),
      body: Column(children: cartItens,
      ),
    );
  }
}
