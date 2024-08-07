import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../common/widgets/products/product_model.dart';

class CartProvider extends ChangeNotifier{
  // private list to hold the product added to the cart
  final List<Product> _cart = [];
  // getter for _cart list so that other part of applications can access the cart items without modifying them
  List<Product> get cart => _cart;

  //function to add or increment the product if it already exists
  void toggleFavourite(Product product){
    if(_cart.contains(product)){
      for(Product element in _cart){
        element.quantity++;
      }
    }
    else{
      _cart.add(product);
    }
    notifyListeners();
  }


  static CartProvider of(
      BuildContext context, {
        bool listen = true,
  }){
    return Provider.of<CartProvider>(
      context,
      listen: listen,
    );
  }
}