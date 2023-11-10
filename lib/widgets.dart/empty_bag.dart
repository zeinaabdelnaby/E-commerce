import 'package:e_commerce/widgets.dart/subTitle_text.dart';
import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:flutter/material.dart';

class EmptyBagWidget extends StatelessWidget {
  const EmptyBagWidget({super.key, required this.imagePath, required this.title, required this.subTitle, required this.buttonText});
    final String imagePath, title, subTitle, buttonText;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              imagePath,
              height: size.height * 0.35,
              width: double.infinity,
            ),
            TitleTextWidget(
              label: title,
              fontSize: 40,
              color: Colors.red,
            ),
            SizedBox(
              height: 20,
            ),
            SubTitleTextWidget(
              label: "Your cart is empty",
              fontWeight: FontWeight.w600,
              fontSize: 25,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SubTitleTextWidget(
                label:
                    subTitle,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(20), elevation: 0),
                onPressed: () {},
                child: Text(
                  buttonText,
                  style: TextStyle(fontSize: 22),
                ))
          ],
        ),
      ),
    );
  }
}
