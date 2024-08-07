/*
This code containes the slider
 */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';

class Detailimageslider extends StatelessWidget {
  final Function(int) onChange;
  final String image;
  final currentImage =0;

  const Detailimageslider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: 220,
          child: PageView.builder(
            onPageChanged: onChange,
              itemBuilder: (context, index){
                return Hero(
                  tag: image,
                    child: Image.asset(image));
              }
          ),
    );
  }
}
