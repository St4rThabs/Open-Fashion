import 'package:flutter/material.dart';

class Item {
  final String imagePath;
  final String title;
  final String subTitle;
  final double price;
  final List<Color> colors;
  final List<String> sizes;

  Item({
    required this.imagePath, 
    required this.title, 
    required this.subTitle, 
    required this.price, 
    required this.colors, 
    required this.sizes});

  String getImagePath() => imagePath; 
  String getTitle() => title; 
  String getSubtitle() => subTitle; 
  double getPrice() => price; 
}