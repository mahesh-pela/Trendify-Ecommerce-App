import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';
import '../../Providers/cart_provider.dart';

class CheckOutBox extends StatelessWidget {
  const CheckOutBox({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    return Container(
      height: 250,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: CupertinoColors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30)
        )
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Enter Discount Code',
              hintStyle: grey_textStyle(),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),
              suffixIcon: TextButton(
                onPressed: (){},
                child: Text('Apply', style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
              filled: true,
              fillColor: kcontentColor
            ),
          ),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Subtotal', style: grey_textStyle(),),
              Text("\$${provider.totalPrice()}", style: textStyle16(),),
            ],
          ),
          // SizedBox(height: 10,),
          Divider(),
          // SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Total', style: textStyle18(),),
              Text("\$${provider.totalPrice()}", style: textStyle18(),)
              
            ],
          ),
          SizedBox(height: 20,),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                minimumSize: const Size(double.infinity, 50)
              ),
              child: Text('CheckOut', style: textStyle18White(),)
          ),

        ],
      ),
    );
  }
}

