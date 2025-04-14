import 'package:flutter/material.dart';
import 'package:open_fashion/models/item.dart';

class CartItem extends StatelessWidget {
  Item item;
  TextStyle titleStyle = TextStyle(fontSize: 26, fontWeight: FontWeight.bold);

  CartItem({required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            child: Text("CART", style: titleStyle),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: [Image.network(width: 120, item.imagePath)]),
              Column(
                children: [
                  Row(
                    children: [Text(item.title)]),
                  Row(children: [Text(item.subTitle)]),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
