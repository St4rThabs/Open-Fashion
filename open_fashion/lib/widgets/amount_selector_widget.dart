import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AmountSelector extends StatefulWidget {
  int amount;
  AmountSelector({super.key, required this.amount});
  @override
  State<AmountSelector> createState() {
    return _AmountSelectorState();
  }
}

class _AmountSelectorState extends State<AmountSelector> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: SizedBox(
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
      ),
    );
  }
}
