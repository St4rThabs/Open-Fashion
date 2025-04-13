import 'package:flutter/material.dart';
import 'package:open_fashion/theme_data/theme.dart';
import 'package:open_fashion/widgets/header.dart';
import 'widgets/bottom_navigator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeLight.get(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      body: Text("Open fashion Body"),
      bottomNavigationBar: BottomNav(), //Bottom bar
    );
  }

}