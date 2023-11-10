import 'package:e_commerce/widgets.dart/empty_bag.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        body:EmptyBagWidget(imagePath: "assets/images/shopping_cart.png", title: "Whoooops", subTitle: "Look like you didn\'t add anything to your card \ngo ahead and start shopping now", buttonText: "Shop now")
         );
  }
}
