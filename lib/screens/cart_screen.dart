import 'package:e_commerce/widgets.dart/app_name_text.dart';
import 'package:e_commerce/widgets.dart/card_widget.dart';
import 'package:e_commerce/widgets.dart/empty_bag.dart';
import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
                imagePath: "assets/images/shopping_cart.png",
                title: "Whoooops",
                subTitle:
                    "Look like you didn\'t add anything to your card \ngo ahead and start shopping now",
                buttonText: "Shop now"))
        : Scaffold(
          appBar: AppBar(
          title: TitleTextWidget(label: "Cart 5"),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network("assets/images/shopping_cart.png"),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.delete_forever_rounded),color: Colors.red,)
          ],
        ),
            body: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                return CartWidget();
              },
            ),
          );
  }
}
