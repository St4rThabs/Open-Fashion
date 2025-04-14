import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 231, 234, 239),
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
      centerTitle: true,
      title: Image.asset('header/Logo.png'),
      actions: [
        IconButton(
        icon: Image.asset('header/Search.png'),
        onPressed: () =>{

        }, )
      ],
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
