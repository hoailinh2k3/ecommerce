import 'package:ecommerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 270',
      price: 150,
      imagePath: 'images/shoe1.png',
      description:
          'The Air Max 270 offers a soft, springy feel that is perfect for '
          'all-day wear.',
    ),
    Shoe(
      name: 'Yeezy Boost 350',
      price: 220,
      imagePath: 'images/shoe2.png',
      description:
          'The Yeezy Boost 350 is a well - recognized sneaker created in '
          'factory with Kanye West.',
    ),
    Shoe(
      name: 'Classic Runner',
      price: 130,
      imagePath: 'images/shoe3.png',
      description:
          'The Classic Runner is built for long-distance runners who prioritize '
          'durability and support.',
    ),
    Shoe(
      name: 'Superstar',
      price: 100,
      imagePath: 'images/shoe4.png',
      description:
          'The Superstar is an iconic sneaker that has remained a favorite '
          'since its launch.',
    ),
  ];
  // List of items in user cart
  List<Shoe> userCart = [];

  // Get list of shoes for sale
  List<Shoe> getShoeList() => shoeShop;

  // Get cart
  List<Shoe> getUserCart() => userCart;

  // Add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // Remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
