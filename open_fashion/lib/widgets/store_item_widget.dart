import 'package:flutter/material.dart';
import 'package:open_fashion/models/item.dart';

class StoreItemWidget extends StatefulWidget{
  final Item item;
  final VoidCallback onPressed;
  const StoreItemWidget({super.key, required this.onPressed, required this.item});

  @override
  State<StoreItemWidget> createState() => _StoreItemWidgetState();
}

class _StoreItemWidgetState extends State<StoreItemWidget> {
  TextStyle titleStyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle priceStyle = TextStyle(fontSize: 16, color: Colors.orange);


  @override
  Widget build(BuildContext context) {
    return GestureDetector( //Permite utilizar a propriedade, quano o usuario clicar sobre o item
      onTap: widget.onPressed, //Executa a função passada
      child: Column(
            children: [
              Image.asset(
                width: double.infinity,
                widget.item.getImagePath()
              ),
              Row(children: [Text(widget.item.getTitle(), style: titleStyle,)]),
              Wrap(children: [Text(widget.item.getSubtitle())],),
              Row(children: [Text('R\$${widget.item.getPrice()}', style: priceStyle,)],)
            ],
          ),
    );
  }
}