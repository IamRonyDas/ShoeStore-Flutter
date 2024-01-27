import 'package:ecommerce_app/models/shoe.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan',
        price: '236',
        description: 'Hotest design in coolest prices',
        imagePath: 'lib/images/img1.jpeg'),
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        description: 'Hotest design in coolest prices',
        imagePath: 'lib/images/img2.jpeg'),
    Shoe(
        name: 'CR7 Limited Edition',
        price: '236',
        description: 'Hotest design in coolest prices',
        imagePath: 'lib/images/img3.jpeg'),
    Shoe(
        name: 'Kyrie S',
        price: '236',
        description: 'Hotest design in coolest prices',
        imagePath: 'lib/images/img4.jpeg'),
  ];
  //list of items in cart
  List<Shoe> userCart = [];
  //get list of shoes
  List<Shoe> getShoeList() {
    return shoeShop; //this is the list above
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart; //this is the list above
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
