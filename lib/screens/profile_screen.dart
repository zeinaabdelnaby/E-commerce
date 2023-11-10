import 'package:e_commerce/providers/theme_provider.dart';
import 'package:e_commerce/widgets.dart/subTitle_text.dart';
import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
          leading: Image.asset("admin assets/assets/images/shopping_cart.png"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Visibility(
              visible: false,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: TitleTextWidget(label: "Please login"),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Theme.of(context).cardColor,
                        border: Border.all(
                            color: Theme.of(context).colorScheme.background,
                            width: 3),
                        image: const DecorationImage(
                            image: NetworkImage(
                                "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIQAAACECAMAAABmmnOVAAAAMFBMVEXFxcX////CwsLc3Nzz8/P29vbQ0NDNzc36+vq/v7/g4ODp6enJycnT09PZ2dnt7e2pvk1dAAAC7UlEQVR4nO2aB5akMAxEQQ2Y1M39b7uYsJ0ICiV2Zp//CepJJVm2nGWJRCKRSCQSiUQisQNRM0H0zwT091s3FGVZDF37CNcLoSy0RZ2/UJdtlV2pg+hR5BuU7WUyKGu3FMwM/TUyHvW+hjEtrb8CyoYjCZEiOAeDqsMwLDxcVdCdIWGkdVRBN56GPO/8NDy4GkYVjZMGZi5cMxI4nnzi487NJrlPHfASmk6mYewXeFtUUg0OtqDTRvlNjdYgqoyVDhwKoSuXUPRQDQpHRG7IUJC4NJZQQEXI+tSTCihCZcsIsErpYJ47pgCKUNXGBFCEWkMOPED0InBnqbJLRGDO1PXsGVjnlox1fiLY8+1/L+JHpMNQHbiRoteLwB3mho5Z4URoT/I8x81W2pkGOtXoywM56qqdibwLqgcK5LitzccAvQn2pUoEcs7V1kcB1aC05h18DdScpAP8mYTkrsDeRCcR4hnP49VKegPCludfFaJ3khKfjFmFpG86PJst8M2JmyO+6JmxqB01jLB8UTovGzg1MrgqmFSEk5TUvtuORUVz2MG7K3ZxlLWHoSj8N4JNYDhzCE7LjgmqmE1zcCtRxiLwRYZPUqQTBfQ1d5EQxPMEvGXpxm1sx5CvfWaAO0HK1BfiGuVPhR2egIxBwlXkZywQKihYJETsKnjfBI5jYW6fFj+slNZ50xyHiG03aVh0vGHZveg3Pp/ob2OW1/1P1Bd0wxvqN8oLWQMyxIzuD4HlWX0L1ZEKTUZEkRD9K+4eiodVw3phD/FbHtaVM1JvIlvEE2GzQPXrd2Td2ycQwlD4BEIYCofSmBEUCL5HrAh6hWHxdgZbhGUjfAb7huplywjbmvCj6xXmMeaZDXY+NH/9+DCXID1kzN+D+R/PqWWv3FnZcOtUM6x+5VmgEVaR+lqCaQq3w2uFcYj5dokIo1N4+5LlTI8J9x3GvNt4a8jzXyLC8O2Ry7kG82PdOadPWF7D/iung79/m9hoFH8AyO8k8xzelDkAAAAASUVORK5CYII="),
                            fit: BoxFit.fill)),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TitleTextWidget(label: "Zeina Mohamed"),
                      SubTitleTextWidget(label: "zeinaa632@gmail.com")
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TitleTextWidget(label: "General"),
                  CustomListTile(
                    image: "assets/images/dashboard/order.png",
                    text: "All orders",
                    function: () {},
                  ),
                  CustomListTile(
                    image: "assets/images/dashboard/wishlist.png",
                    text: "Wish list",
                    function: () {},
                  ),
                  CustomListTile(
                    image: "assets/images/dashboard/Viewdrecently.png",
                    text: "Viewd recently",
                    function: () {},
                  ),
                  CustomListTile(
                    image: "assets/images/dashboard/rounded_map.png",
                    text: "Address",
                    function: () {},
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TitleTextWidget(label: "Settings"),
                  SwitchListTile(
                    secondary: Image.asset("assets/images/dashboard/cloud.png"),
                      title: Text(themeProvider.getIsDarkTheme
                          ? "Dark Mode"
                          : "Light Mode"),
                      value: themeProvider.getIsDarkTheme,
                      onChanged: (value) {
                        themeProvider.setDarkTheme(themeValue: value);
                      }),
                      Divider(
                    thickness: 1,
                  ),
                ],
              ),
            ),
            Center(child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              onPressed: (){}, icon: Icon(Icons.login), label: Text("Login")))
          ],
        ));
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.image,
    required this.text,
    required this.function,
  });

  final String image, text;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        function();
      },
      leading: Image.asset(
        image,
        height: 30,
      ),
      title: SubTitleTextWidget(label: text),
      trailing: Icon(IconlyLight.arrowRight2),
    );
  }
}
