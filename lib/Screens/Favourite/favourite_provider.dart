import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../common/widgets/products/product_model.dart';

class FavouriteProvider extends ChangeNotifier{
  // private list to hold the product added to the cart
  final List<Product> _favourite = [];

  // getter for _cart list so that other part of applications can access the cart items without modifying them
  List<Product> get favourite => _favourite;

  //function to add or increment the product if it already exists
  void toggleFavourite(Product product){
    /// check if the product is already in the cart
    if(_favourite.contains(product)){
      _favourite.remove(product);
    }
    else{
      _favourite.add(product);
    }
    notifyListeners();
  }

  bool isExist(Product product){
    final isExist = _favourite.contains(product);
    return isExist;
  }

  static FavouriteProvider of(
      BuildContext context, {
        bool listen = true,
      }){
    return Provider.of<FavouriteProvider>(
      context,
      listen: listen,
    );
  }
}
