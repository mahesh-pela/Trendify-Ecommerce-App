import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TShadowStyle{
  static final verticalProductShadow = BoxShadow(
    color: Colors.grey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: Offset(0,2)
  );
}