import 'package:flutter/material.dart';
import 'package:open_fashion/theme_data/theme_settings.dart';
import 'package:open_fashion/pages/drawer_page.dart';
import 'package:open_fashion/widgets/header_widget.dart';
import 'package:open_fashion/widgets/float_action_button_widget.dart';
import 'package:open_fashion/widgets/bottom_navigator_widget.dart';
import 'package:open_fashion/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Fashion',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.getLight(),
      home: const Main(),
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  late int _selectedIndex = 0;

  List<Widget> mainPages = [
      const HomePage(),
      const Center(child: Text("Página de perfil")),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: Header(index: _selectedIndex),
      body: mainPages[_selectedIndex],
      floatingActionButton: const FloatButton(),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}
