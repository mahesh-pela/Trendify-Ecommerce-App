import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';
import '../../common/styles/textThemeStyles.dart';
import '../../common/widgets/products/product_model.dart';

class AddToCart extends StatefulWidget {
  final Product product;

  const AddToCart({super.key, required this.product});

  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  int currentValue = 0;

  void incrementValue(){
    setState(() {
      currentValue++;
    });
  }

  void decrementValue(){
    setState(() {
      if (currentValue >= 1){
        currentValue--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      ///------Outer Black Container-----------
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.shade400
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,

        ///-------Inner Container where -, + and Add to Card is present--------------
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 130,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(color: CupertinoColors.white, width: 2)
              ),

              ///-------- (-, + ) is present-------
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: decrementValue,
                      icon: Icon(Icons.remove, color: CupertinoColors.white,)
                  ),
                  Text(currentValue.toString(), style: textStyleWhite()),
                  IconButton(
                      onPressed: incrementValue,
                      icon: Icon(Icons.add, color: CupertinoColors.white,)
                  ),
                ],

              ),
            ),

            ///--------Add to Cart--------
            GestureDetector(
              onTap: (){

              },
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: kprimaryColor
                ),
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Text('Add to Cart', style: textStyle18White(),),
              ),
            )
          ],
        ),
      ),
    );
  }
}