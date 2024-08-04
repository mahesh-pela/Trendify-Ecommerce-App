import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  final String image;
  final String review;
  final String seller;
  final double price;
  final List<Color> colors;
  final String category;
  final double rate;
  int quantity;


  Product({
    required this.title,
    required this.description,
    required this.review,
    required this.seller,
    required this.image,
    required this.price,
    required this.colors,
    required this.category,
    required this.rate,
    required this.quantity
  });
}

final List<Product> products = [
  Product(title: "Nike Shoes",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      review: "(200 Reviews)",
      seller: "Tilak Joshi",
      image: 'assets/images/categories/shoes1.png',
      price: 700,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "Shoes",
      rate: 4.1,
      quantity: 1
  ),

  Product(title: "Denim Jacket",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      review: "(100 Reviews)",
      seller: "Tilak Pandey",
      image: 'assets/images/products/denim Jacket.png',
      price: 1700,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "Mens Fashion",
      rate: 4.8,
      quantity: 1
  ),

  Product(title: "Seiko Watch",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      review: "(80 Reviews)",
      seller: "Pradip Joshi",
      image: 'assets/images/products/watch.png',
      price: 800,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "Electronics",
      rate: 4.5,
      quantity: 1
  ),

  Product(title: "Wireless Headphones",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
      review: "(220 Reviews)",
      seller: "Deeya Malla",
      image: 'assets/images/products/wireless headphone.png',
      price: 2300,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "Electronics",
      rate: 5.0,
      quantity: 1
  ),



];