import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

class Favouritescreen extends StatelessWidget {
  const Favouritescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite', style: textStyle1()),
      ),
    );
  }
}
