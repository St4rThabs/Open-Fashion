import 'package:flutter/material.dart';
import 'package:open_fashion/pages/drawer_page.dart';
import 'package:open_fashion/pages/grid_view_page.dart';
import 'package:open_fashion/pages/home_page.dart';
import 'package:open_fashion/widgets/bottom_navigator_widget.dart';
import 'package:open_fashion/widgets/float_action_button_widget.dart';
import 'package:open_fashion/widgets/header_widget.dart';

class Main extends StatefulWidget {
  final int? categoryGrid;
  const Main({super.key, this.categoryGrid});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late int _selectedIndex = 0;
  late int? categoryId;

  //Chamado uma unica vez quando o widget é carregado - Inicializa as variaveis
  @override
  void initState() {
    super.initState();
    categoryId = widget.categoryGrid;
    _selectedIndex =
        categoryId != null ? 1 : 0; //Define o valor inicial de _selectedIndex
  }

  //Executa quando o usuario clica em um botao do bottom nav
  void _onItemTapped(int index) {
    setState(() {
      if(index == 1) {categoryId = 0;}
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    //Páginas
    List<Widget> mainPages = [
      const HomePage(),
      GridViewPage(category: categoryId),
      const Center(child: Text("Página de perfil")),
    ];

    return Scaffold(
      drawer: DrawerWidget(),
      appBar: Header(index: _selectedIndex),
      body: Stack(
        children: [
          mainPages[_selectedIndex],
          Align(
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
      floatingActionButton: const FloatButton(),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
