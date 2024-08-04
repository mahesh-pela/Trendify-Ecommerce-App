import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

import '../../common/widgets/products/product_model.dart';

class Itemdetails extends StatelessWidget {
  final Product product;
  const Itemdetails({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(product.title, style: textStyle3(),),
        SizedBox(height: 5),
        Text("\$${product.price}", style: textStyle3()),
        SizedBox(height: 10),

        /// ----- for orange color container that contains the star and the rating-------
        Row(
          children: [
            Container(
              width: 48,
              height: 23,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kprimaryColor
              ),
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 14,
                    color: CupertinoColors.white,
                  ),
                  SizedBox(width: 3),
                  Text(product.rate.toString(), style: TextStyle(fontSize: 13, color: CupertinoColors.white, fontWeight: FontWeight.bold),),
                ],
              ),
            ),
            SizedBox(width: 5,),
            Text(product.review, style: TextStyle(fontSize: 13, color: Colors.grey),),
            Spacer(),
            RichText(
                text: TextSpan(
                  text: 'Seller : ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: product.seller,
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                    )
                  ]
                ),
            )
          ],
        )
      ],
    );
  }
}
