import 'package:flutter/material.dart';
import 'package:open_fashion/models/item.dart';


// ignore: must_be_immutable
class CartItem extends StatefulWidget {
  final Item item;
  int amount;
  
  CartItem({super.key, required this.item, required this.amount});

  double getTotalPrice() {
    return item.price * amount;
  }

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  TextStyle titleStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  TextStyle priceStyle = TextStyle(fontSize: 16, color: Colors.orange);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(right: 12),
            child: Image.network(widget.item.imagePath),
          ),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 6),
                  child: Text(
                    widget.item.title.toUpperCase(),
                    style: titleStyle,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: Text(widget.item.subTitle),
                ),
                switchAmout(),
                Text("${widget.item.price}R\$", style: priceStyle),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SizedBox switchAmout() {
    return SizedBox(
      child: Row(
        children: [
          IconButton(
            onPressed:
                () => {
                  if (widget.amount > 0)
                    {
                      setState(() {
                        widget.amount--;
                      }),
                    },
                },
            icon: Image.asset('assets/Minus.png'),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 6),
            child: Text(widget.amount.toString()),
          ),
          IconButton(
            onPressed:
                () => setState(() {
                  widget.amount++;
                }),
            icon: Image.asset('assets/Plus.png'),
          ),
        ],
      ),
    );
  }
}
