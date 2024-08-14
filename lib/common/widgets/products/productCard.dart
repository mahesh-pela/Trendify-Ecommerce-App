import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/Screens/DetailScreen/detailScreen.dart';
import 'package:trendify/Screens/Favourite/favourite_provider.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/shadows.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import 'package:trendify/common/widgets/products/product_model.dart';

class Productcard extends StatelessWidget {
  final Product product;
  const Productcard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
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
                const SizedBox(height: 15,),
                Center(
                  child: Hero(
                    tag: product.image,
                    child: Image.asset(product.image,
                    width: 140,
                    height: 140,
                    // fit: BoxFit.cover
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                ///---------Popular Products Title-----------
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(product.title, style: textStyle3(),),
                ),
                const SizedBox(height: 2),

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
          ),

          ///------ favourite Icon------------
           Positioned(
              child: Align(
               alignment: Alignment.topRight,
                  child: Container(
                    width: 37,
                      height: 37,
                      decoration: const BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(12),
                        )
                      ),
                      // padding: const EdgeInsets.only(top: 10, right: 20),
                      child: GestureDetector(
                        onTap: (){
                          provider.toggleFavourite(product);
                          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Added to Favourite')));
                        },
                          child: Icon(
                              provider.isExist(product)?Icons.favorite: Icons.favorite_border, color: CupertinoColors.white, size: 22))
                  )
              )
          )
        ],

      ),
    );
  }
}
