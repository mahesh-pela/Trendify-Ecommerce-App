import 'package:flutter/cupertino.dart';
import 'package:trendify/common/constants.dart';

class Detailimageslider extends StatelessWidget {
  final Function(int) onChange;
  final String image;

  const Detailimageslider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: PageView.builder(
        onPageChanged: onChange,
          itemBuilder: (context, index){
            return Hero(
              tag: image,
                child: Image.asset('assets/images/products/wireless headphone.png'));
          }
      ),
    );
  }
}
