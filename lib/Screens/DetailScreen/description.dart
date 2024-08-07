import 'package:flutter/cupertino.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: kprimaryColor
              ),
              alignment: Alignment.center,
              child: Text('Description', style: textStyleWhite(),),
            ),
            Text('Specifications', style: textStyle2(),),
            Text('Reviews', style: textStyle2(),),
          ],
        ),
        SizedBox(height: 10),
        Text(description, style: grey_textStyle(),)
      ],
    );
  }
}
