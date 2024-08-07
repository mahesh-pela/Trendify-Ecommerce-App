import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/Screens/DetailScreen/detailScreen.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/shadows.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/common/widgets/products/product_model.dart';

class Productcard extends StatelessWidget {
  final Product product;
  const Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detailscreen(product: product,)));
      },
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: kcontentColor
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.favorite_outlined, color: kprimaryColor),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(product.image,
                    width: 130,
                    height: 130,
                    fit: BoxFit.cover
                    ),
                  ),
                ),
                SizedBox(height: 10),

                ///---------Popular Products Title-----------
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(product.title, style: textStyle3(),),
                ),
                SizedBox(height: 2),

                ///Price and Color------------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${product.price}", style: textStyle2(),),
                      Row(
                        children: List.generate(
                            product.colors.length,
                            (index) =>Container(
                              width: 14,
                              height: 14,
                              margin: EdgeInsets.only(right: 4),
                              decoration: BoxDecoration(
                                color: product.colors[index],
                                shape: BoxShape.circle,
                              ),
                            )
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          )
        ],

      ),
    );
  }
}
