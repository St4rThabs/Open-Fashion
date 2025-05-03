class Item {
  final int? id;
  final String imagePath;
  final String title;
  final String subTitle;
  final double price;
  final List<String> colors;
  final List<String> sizes;

  Item({
    this.id, 
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