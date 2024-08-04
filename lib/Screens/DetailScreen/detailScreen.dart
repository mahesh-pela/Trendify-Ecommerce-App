import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Screens/DetailScreen/detailAppBar.dart';
import 'package:trendify/Screens/DetailScreen/detailImageSlider.dart';
import 'package:trendify/Screens/DetailScreen/itemDetails.dart';
import 'package:trendify/common/constants.dart';

import '../../common/widgets/products/product_model.dart';

class Detailscreen extends StatefulWidget {
  final Product product;
  const Detailscreen({super.key, required this.product});

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  int currentImage = 0;
  int currentSlide = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcontentColor,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DetailAppbar(),
                SizedBox(height: 20),

                /// Image Slider-----------
                Detailimageslider(image: widget.product.image, onChange: (index){
                  setState(() {
                    currentImage = index;
                  });
                }),

                ///----------scrolling circle-----------
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) => AnimatedContainer(
                      duration: Duration(microseconds: 1000),
                      width: currentImage == index ?10:8,
                      height: 8,
                      margin: EdgeInsets.only(right: 3),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: currentImage == index ? CupertinoColors.activeBlue : Colors.transparent,
                          border: Border.all(color: CupertinoColors.black)
                      ),
                    )
                    )
                ),

                ///--------detailed screen--------
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 20,
                    bottom: 100
                  ),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Itemdetails(product: widget.product)
                    ],
                  )
                )
              ],
            ),
          )),
    );
  }
}
