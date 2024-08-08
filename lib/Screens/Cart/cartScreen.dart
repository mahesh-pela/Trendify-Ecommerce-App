import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

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

              ///----- AppBar------------
              child: cart_AppBar(context),
            )
          ],
        ),
      ),
    );
  }

  Row cart_AppBar(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavigationMenu()));
                    },
                    icon: Icon(Icons.arrow_back_ios,size: 20,color: CupertinoColors.black,)
                ),
                Text('My Cart', style: textStyle21()),
                Container()
              ],
            );
  }
}
