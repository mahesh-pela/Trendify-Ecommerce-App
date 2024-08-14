import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Screens/DetailScreen/addToCart.dart';
import 'package:trendify/Screens/DetailScreen/description.dart';
import 'package:trendify/Screens/DetailScreen/detailAppBar.dart';
import 'package:trendify/Screens/DetailScreen/detailImageSlider.dart';
import 'package:trendify/Screens/DetailScreen/itemDetails.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

import '../../common/widgets/products/product_model.dart';

class Detailscreen extends StatefulWidget {
  final Product product;

  const Detailscreen({super.key, required this.product});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int currentImage = 0;
  int currentColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,

      ///------for add to cart floating action Button-------------
      floatingActionButton: AddToCart(product: widget.product),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            ///-------AppBar(back, share, favourite)------------///
            DetailAppbar(product: widget.product),
            SizedBox(height: 20),

            /// Image Slider-----------
            Detailimageslider(
                image: widget.product.image,
                onChange: (index) {
                  setState(() {
                    currentImage = index;
                  });
                }),

            ///----------scrolling circle-----------
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    3,
                    (index) => AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          width: currentImage == index ? 10 : 8,
                          height: 8,
                          margin: EdgeInsets.only(right: 3),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentImage == index
                                  ? CupertinoColors.activeBlue
                                  : Colors.transparent,
                              border: Border.all(color: CupertinoColors.black)),
                        ))),

            ///--------Item Details--------
            SizedBox(height: 20),
            Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    ///------------price, title and reviews---------------
                    Itemdetails(product: widget.product),
                    SizedBox(height: 20),

                    ///----------Colors Details-----------
                    Text('Colors', style: textStyle21()),
                    SizedBox(height: 10),
                    Row(
                        children: List.generate(
                            widget.product.colors.length,
                            (index) => GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      currentColor = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(milliseconds: 300),
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: currentColor == index
                                          ? Colors.white
                                          : widget.product.colors[index],
                                      border: currentColor == index
                                          ? Border.all(
                                              color:
                                                  widget.product.colors[index],
                                            )
                                          : null,
                                    ),
                                    padding: currentColor == index
                                        ? EdgeInsets.all(2)
                                        : null,
                                    margin: EdgeInsets.only(right: 5),
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color: widget.product.colors[index],
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                ))),
                    SizedBox(height: 20),

                    ///-----------Description------------
                    Description(description: widget.product.description)
                  ],
                ),

            ),
            SizedBox(height: 10,),
          ],
        ),
      )),
    );
  }
}
