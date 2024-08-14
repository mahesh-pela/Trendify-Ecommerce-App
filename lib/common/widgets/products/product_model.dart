import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product {
  final String id;
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
    required this.id,
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

final List<Product> all = [
  Product(
      id: '1',
      title: "Nike Shoes",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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

  Product(
      id: '2',
      title: "Denim Jacket",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
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

  Product(
      id: '3',
      title: "Seiko Watch",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(80 Reviews)",
      seller: "Pradip Joshi",
      image: 'assets/images/categories/electronics/watch.png',
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

  Product(
      id: '4',
      title: "Wireless Headphones",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(105 Reviews)",
      seller: "Deeya Malla",
      image: 'assets/images/categories/electronics/wireless headphone.png',
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

  Product(
      id: '5',
      title: "Women Chanderi Kurta Pant Dupatta Set",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(20 Reviews)",
      seller: "Deeya Malla",
      image: 'assets/images/categories/womensFashion/womens fashion 1.jpg',
      price: 1800,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 4.1,
      quantity: 1
  ),

  Product(
      id: '6',
      title: "Women Viscose Rayon Kurta Pant Dupatta Set",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(75 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/womensFashion/womens fashion3.jpg',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 4.7,
      quantity: 1
  ),



];


final List<Product> womensFashion =[
  Product(
      id: '7',
      title: "Women Chanderi Kurta Pant Dupatta Set",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(45 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/womensFashion/womens fashion 1.jpg',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 4.7,
      quantity: 1
  ),

  Product(
      id: '8',
      title: "Kurta Palazzo Set Embroidered Kurta, Palazzo & Dupatta Set",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(40 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/womensFashion/womens fashion 2.jpg',
      price: 2600,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 4.2,
      quantity: 1
  ),

  Product(
      id: '9',
      title: "Women Viscose Rayon Kurta Pant Dupatta Set",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(70 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/womensFashion/womens fashion3.jpg',
      price: 2900,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 3.9,
      quantity: 1
  ),

  Product(
      id: '10',
      title: "Unstitched Organza Salwar Suit Material Embroidered",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(130 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/womensFashion/womens fashion 4.jpg',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "womens Fashion",
      rate: 4.7,
      quantity: 1
  ),

];


final List<Product> mensFashion =[
  Product(
      id: '11',
      title: "Mens Plain Shirt",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(45 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/mensFashion/mens fashion 1.jpg',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "mens Fashion",
      rate: 4.7,
      quantity: 1
  ),

  Product(
      id: '12',
      title: "Mens Printed Shirt",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(40 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/mensFashion/mens fashion 2.jpg',
      price: 2600,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "mens Fashion",
      rate: 4.2,
      quantity: 1
  ),

  Product(
      id: '13',
      title: "Men Slim Fit Brown Cotton Blend Trousers",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(70 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/mensFashion/mens fashion 3.jpg',
      price: 2900,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "mens Fashion",
      rate: 3.9,
      quantity: 1
  ),

  Product(
      id: '14',
      title: "Men Regular, Super Slim Fit Printed Spread Collar Casual Shirt",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(130 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/mensFashion/mens fashion 4.jpg',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "mens Fashion",
      rate: 4.7,
      quantity: 1
  ),

];


final List<Product> electronics =[
  Product(
      id: '15',
      title: "Seiko Watch",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(45 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/electronics/watch.png',
      price: 2100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "electronics",
      rate: 4.7,
      quantity: 1
  ),

  Product(
      id: '16',
      title: "Samsung Refrigerator",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(40 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/electronics/Electronic.jpg',
      price: 2600,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "electronics",
      rate: 4.2,
      quantity: 1
  ),

  Product(
      id: '17',
      title: "Wireless Headphones",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(70 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/electronics/wireless headphone.png',
      price: 2900,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "electronics",
      rate: 3.9,
      quantity: 1
  ),

];


final List<Product> shoes =[
  Product(
      id: '18',
      title: "Sneaker Casual Shoes For Men",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(45 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/shoes/shoes1.jpg',
      price: 1100,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.7,
      quantity: 1
  ),

  Product(
      id: '19',
      title: "Athleisure Shoes for Men",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(40 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/shoes/shoes2.jpg',
      price: 2200,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.2,
      quantity: 1
  ),

  Product(
      id: '20',
      title: "Lifestyle Sneaker Shoes for Men",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(70 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/shoes/shoes3.jpg',
      price: 2900,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "shoes",
      rate: 3.9,
      quantity: 1
  ),

  Product(
      id: '21',
      title: "Fortune LUCIO-201 Oxford For Men",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(70 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/shoes/shoes4.jpg',
      price: 2500,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "shoes",
      rate: 4.3,
      quantity: 1
  ),

];


final List<Product> beauty = [
  Product(
      id: '22',
      title: "Women Beauty Products ",
      description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
          "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. "
          "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. "
          "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
      review: "(45 Reviews)",
      seller: "Mahesh Pela",
      image: 'assets/images/categories/beauty/beauty.jpg',
      price: 1300,
      colors: [
        CupertinoColors.black,
        Colors.blue,
        Colors.red,
      ],
      category: "beauty",
      rate: 4.5,
      quantity: 1
  ),
];