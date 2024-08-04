import 'package:flutter/cupertino.dart';
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
      onTap: (){},
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
                Center(
                  child: Image.asset(product.image,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(product.title, style: textStyle3(),),
                ),
              ],
            ),
          )
        ],

      ),
    );
  }
}
