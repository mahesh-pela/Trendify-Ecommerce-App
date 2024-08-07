import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';

import '../../nav_var_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationMenu()));
                      },
                      icon: Icon(Icons.arrow_back_ios,size: 20,color: CupertinoColors.black,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
