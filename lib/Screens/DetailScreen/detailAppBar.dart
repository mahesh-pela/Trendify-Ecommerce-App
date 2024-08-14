import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trendify/Screens/Favourite/favourite_provider.dart';
import 'package:trendify/Screens/Home/homeScreen.dart';
import 'package:trendify/common/widgets/products/product_model.dart';

class DetailAppbar extends StatelessWidget {
  final Product product;
  const DetailAppbar({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final provider = FavouriteProvider.of(context);
    return Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            IconButton(
            style:IconButton.styleFrom(
              backgroundColor: CupertinoColors.white
            ),
            onPressed: () {
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_back_ios)),
            Spacer(),
            IconButton(style: IconButton.styleFrom(backgroundColor: CupertinoColors.white), onPressed: (){}, icon: Icon(Icons.share)),
            IconButton(
                style: IconButton.styleFrom(
                backgroundColor: CupertinoColors.white),
                onPressed: (){
                  provider.toggleFavourite(product);
            }, icon: Icon(
                provider.isExist(product)?Icons.favorite: Icons.favorite_border, color: Colors.red,))
        ]
    ,
    )
    ,
    );
  }
}
