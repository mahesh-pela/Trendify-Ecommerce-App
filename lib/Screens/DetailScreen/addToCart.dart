import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Providers/cart_provider.dart';
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
  int currentValue = 1;

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
    final provider = CartProvider.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      ///------Outer Black Container-----------
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.blueGrey.shade200
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
                border: Border.all(color: CupertinoColors.black, width: 2)
              ),

              ///-------- (-, + ) is present-------
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: decrementValue,
                      icon: Icon(Icons.remove, color: CupertinoColors.black,)
                  ),
                  Text(currentValue.toString(), style: welcomeStyle2()),
                  IconButton(
                      onPressed: incrementValue,
                      icon: Icon(Icons.add, color: CupertinoColors.black,)
                  ),
                ],

              ),
            ),

            ///--------Add to Cart--------
            GestureDetector(
              onTap: (){
                provider.toggleAddToCart(widget.product);
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Successfully Added', style: TextStyle(fontSize: 16, color: CupertinoColors.white, fontWeight: FontWeight.bold),),
                  duration: Duration(seconds: 1),));
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
