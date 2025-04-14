import 'package:flutter/material.dart';
import 'package:open_fashion/pages/cart_page.dart';

class FloatButton extends StatelessWidget {
  @override
  FloatingActionButton build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => CartPage())
        )
      },
      child: Icon(Icons.add_shopping_cart),);
  }

}