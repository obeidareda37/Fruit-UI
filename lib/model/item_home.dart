import 'package:flutter/material.dart';

class Product {
  String title;
  Color color;
  String price;
  String info;
  String imageUrl;
  String description;

  Product(this.title, this.color, this.price, this.info, this.imageUrl,
      this.description);
}

List<Product> getProductsList() {
  return <Product>[
    Product(
      'Bananas',
      Color(0xFFF4E389),
      '1.15',
      'per kg',
      'assets/images/bananas.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Blueberries',
      Color(0xFFDFDFF8),
      '12.20',
      'per kg',
      'assets/images/blueberry.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Dragon Fruit',
      Color(0xFFEAB9E7),
      '7.15',
      'per kg',
      'assets/images/dragon_fruit.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Lychee',
      Color(0xFFB4E0AA),
      '9.15',
      'per kg',
      'assets/images/lychee.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Mango',
      Color(0xFFF8DA8A),
      '11.15',
      'per kg',
      'assets/images/mango.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Papaya',
      Color(0xFFFFB570),
      '8.15',
      'per kg',
      'assets/images/papaya.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Pineapple',
      Color(0xFFFCF8D5),
      '5.15',
      'per kg',
      'assets/images/pineapple.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
    Product(
      'Strawberries',
      Color(0xFFFCE0E2),
      '8.15',
      'per kg',
      'assets/images/strawberry.png',
      "Mango's tropical taste has a universal appeal. The meat has the sweetness of a peach. This cocricot colored fruit has just enough fiber to give it some chewiness.",
    ),
  ];
}
