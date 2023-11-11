// import 'package:e_commerce/widgets.dart/subTitle_text.dart';
// import 'package:e_commerce/widgets.dart/title_text.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_iconly/flutter_iconly.dart';

// class CardWidget extends StatelessWidget {
//   const CardWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Wrap(children: [
//         Card(
//           // height: 200,
//           // width: MediaQuery.of(context).size.width,
//           child: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Image.network(
//                   "data:image/jpeg;base64,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"),
//               Flexible(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TitleTextWidget(
//                       label: "knwkdnasnfsnfnsdkgnsdkngsdngknknkgnd",
//                       maxLines: 2,
//                     ),

//                     SubTitleTextWidget(label: "16\$")
//                   ],
//                 ),
//               ),
//               Column(
//                 children: [
//                   IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
//                   OutlinedButton.icon(
//                       onPressed: () {},
//                       icon: Icon(IconlyLight.arrowDown2),
//                       label: Text("Qty:6"))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ]),
//     );
//   }
// }
import 'package:e_commerce/widgets.dart/subTitle_text.dart';
import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: FancyShimmerImage(
                  imageUrl:
                      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png',
                  height: size.height * 0.2,
                  width: size.height * 0.2,
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitleTextWidget(
                            label: "Title" * 10,
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.clear,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                IconlyLight.heart,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SubTitleTextWidget(
                          label: "16\$",
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        Spacer(),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            side: BorderSide(
                              width: 2,
                              color: Colors.blue,
                            ),
                          ),
                          onPressed: () {},
                          icon: const Icon(IconlyLight.arrowDown2),
                          label: const Text("Qty: 6 "),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
