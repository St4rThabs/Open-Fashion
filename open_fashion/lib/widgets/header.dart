import 'package:flutter/material.dart';

class Header extends StatelessWidget implements PreferredSizeWidget{
  final int index;
  const Header({super.key, required this.index});

  Color setBackground(){
    if(index == 0){
      return Color.fromARGB(255, 231, 234, 239);
    }
    else{
      return Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: setBackground(),
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: Image.asset('assets/Menu.png'),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      centerTitle: true,
      title: Image.asset('assets/Logo.png'),
      actions: [
        IconButton(
        icon: Image.asset('assets/Search.png'),
        onPressed: () =>{

        }, )
      ],
    );
  }
  
  @override
  Size get preferredSize =>  const Size.fromHeight(kToolbarHeight);
}
