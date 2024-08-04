import 'package:flutter/cupertino.dart';
import 'package:trendify/common/constants.dart';

class Detailimageslider extends StatelessWidget {
  final Function(int) onChange;
  final String image;

  const Detailimageslider({super.key, required this.onChange, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: PageView.builder(
        onPageChanged: onChange,
          itemBuilder: (context, index){
            return Image.asset('assets/images/products/wireless headphone.png');
          }
      ),
    );
  }
}
