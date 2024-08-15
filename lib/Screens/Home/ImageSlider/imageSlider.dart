import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Imageslider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  final List<String> imagePaths;

  const Imageslider({super.key, required this.onChange, required this.currentSlide, required this.imagePaths});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 180,
          width: double.infinity,

          /// ------------ Image Slider--------
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView.builder(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              itemCount: imagePaths.length,
              itemBuilder: (context, index){
                return Image.asset(
                  imagePaths[index],
                  fit: BoxFit.fill,
                );
              },
            ),
          ),
        ),
        SizedBox(height: 5),

        ///------------scrolling circle------------
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) => AnimatedContainer(
              duration: Duration(microseconds: 300),
              width: currentSlide == index ?10:8,
              height: 8,
              margin: EdgeInsets.only(right: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentSlide == index ? Colors.black : Colors.transparent,
                border: Border.all(color: CupertinoColors.black)
              ),
            )
            )
        ),
      ],
    );
  }
}