

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trendify/Providers/cart_provider.dart';
import 'package:trendify/Screens/Cart/checkOutBox.dart';
import 'package:trendify/common/constants.dart';
import 'package:trendify/common/styles/textThemeStyles.dart';

import '../../nav_var_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final provider = CartProvider.of(context);
    final finalList = provider.cart;

    ///------ for quantity---------
    productQuantity(IconData icon, int index){
      return GestureDetector(
        onTap: (){
          setState(() {
            icon == Icons.add? provider.incrementQuantity(index): provider.decrementQuantity(index);
          });
        },
        child: Icon(icon, size: 20,),
      );
    }

    return Scaffold(
      bottomSheet: const CheckOutBox(),
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),

              ///----- AppBar------------
              child: cart_AppBar(context),
            ),

            ///------Cart Screen---------------
            Expanded(
                child: ListView.builder(
                    itemCount: finalList.length,
                    itemBuilder: (context, index) {
                      final cartItems = finalList[index];
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15, right: 15, top: 10, bottom: 10),

                            ///--------Main Outside Container------------
                            child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: CupertinoColors.white),
                                padding: EdgeInsets.all(10),

                                ///----------Contains the items in the container(image, title, category, price)
                                child: Row(
                                  children: [
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        color: kcontentColor,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      padding: EdgeInsets.all(10),
                                      child: Image.asset(
                                        cartItems.image,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),

                                    ///----- price, category and price-------------
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          cartItems.title,
                                          style: textStyle16(),
                                        ),
                                        // const SizedBox(height: 5,),
                                        Text(
                                          cartItems.category,
                                          style: grey_textStyle(),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "\$${cartItems.price}",
                                          style: textStyle2(),
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          ),

                          ///---------delete button--------
                          Positioned(
                              top: 20,
                              right: 25,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      finalList.removeAt(index);
                                      setState(() {
                                      });
                                    },
                                    icon: const Icon(
                                      Icons.delete,
                                      color: Colors.red,
                                      size: 22,
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      border: Border.all(
                                        color: Colors.grey.shade200,
                                        // width: 2
                                      ),
                                      borderRadius: BorderRadius.circular(20)
                                    ),

                                    ///-------Container that contains (+,-, quantity)
                                    child: Row(
                                      children: [
                                        SizedBox(width: 10,),
                                        productQuantity(Icons.add, index),
                                        SizedBox(width: 10,),
                                        Text(cartItems.quantity.toString(), style: textStyle2(),),
                                        SizedBox(width: 10,),
                                        productQuantity(Icons.remove, index),
                                        SizedBox(width: 10,)
                                      ],
                                    ),
                                  )

                                  
                                ],
                              )
                          )
                        ],
                      );
                    })
            ),
          ],
        ),
      ),
    );
  }

  Row cart_AppBar(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigationMenu()));
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: CupertinoColors.black,
            )),
        Text('My Cart', style: textStyle21()),
        Container()
      ],
    );
  }
}
