import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imageslider extends StatelessWidget {
  // final Function(int) onChange;
  // final int currentSlide;
  const Imageslider({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 180,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              // onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                Image.asset(
                  'assets/images/slider.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/slider2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/images/slider3.png',
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),

        // Positioned(
        //     child: Align(
        //       alignment: Alignment.bottomCenter,
        //       child: Row(
        //           mainAxisAlignment: MainAxisAlignment.center,
        //           children: List.generate(5, (index) => AnimatedContainer(
        //             duration: Duration(microseconds: 300),
        //             width: currentSlide == index ?15:0,
        //             height: 8,
        //             margin: EdgeInsets.only(right: 3),
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: currentSlide == index ? CupertinoColors.black : Colors.transparent, border: Border.all(color: CupertinoColors.black)
        //             ),
        //           )
        //           )
        //       ),
        //     )
        // ),
      ],
    );
  }
}
