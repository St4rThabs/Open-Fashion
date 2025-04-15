import 'package:flutter/material.dart';
import 'package:open_fashion/theme_data/theme.dart';
import 'package:open_fashion/widgets/header.dart';
import 'package:open_fashion/widgets/float_action_button.dart';
import 'package:open_fashion/widgets/bottom_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeApp.getLight(),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  //index = index button clicked by the user
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List mainPages = <Widget>[
    Text("Página principal que a thabs ta desenvolvendo"),
    Text("Página de perfil"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(index: _selectedIndex,),
      body: mainPages[_selectedIndex],
      floatingActionButton: FloatButton(),
      bottomNavigationBar: BottomNav(
        currentIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}