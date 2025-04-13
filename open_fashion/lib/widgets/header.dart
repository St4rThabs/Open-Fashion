import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Image.asset('header/Menu.png'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
