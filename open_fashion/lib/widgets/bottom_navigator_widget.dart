import 'package:flutter/material.dart';


class BottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onItemTapped;

  const BottomNav({super.key, required this.currentIndex, required this.onItemTapped});
  @override
  BottomNavigationBar build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: "Store"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box), label: "Meus dados"),
      ],
      onTap: onItemTapped,
    );
  }
}
