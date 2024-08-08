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
    /// check if the product is already in the cart
    int index = _cart.indexWhere((element) => element.id == product.id);
    if(index != -1){
      /// Increment the quantity of the specific product
      _cart[index].quantity++;
    }
    else{
      _cart.add(product);
    }
    notifyListeners();
  }

  incrementQuantity(int index){
    _cart[index].quantity++;
    notifyListeners();
  }

  decrementQuantity(int index) {
    if(_cart[index].quantity>1) {
      _cart[index].quantity--;
    }else {
      _cart.removeAt(index);
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
