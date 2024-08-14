import 'package:flutter/cupertino.dart';

class Category {
  final String image;
  final String title;

  Category({
    required this.image,
    required this.title
  });
}

  final List<Category> categories=[
    Category(
      image: 'assets/images/categories/all.png',
      title: 'All'
    ),

    Category(
        image: 'assets/images/categories/shoes1.png',
        title: 'Shoes'
    ),

    Category(
        image: 'assets/images/products/wireless headphone.png',
        title: 'Electronics'
    ),

    Category(
        image: 'assets/images/products/denim Jacket.png',
        title: "Men's Fashion"
    ),

    Category(
        image: 'assets/images/categories/beauty.jpg',
        title: 'Beauty'
    ),

    Category(
        image: 'assets/images/categories/luggage.jpg',
        title: 'Luggage'
    ),

    Category(
        image: 'assets/images/categories/jewellery.jpg',
        title: 'Jewellery'
    ),

  ];

