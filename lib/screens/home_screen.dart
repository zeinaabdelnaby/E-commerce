import 'package:e_commerce/providers/theme_provider.dart';
import 'package:e_commerce/widgets.dart/subTitle_text.dart';
import 'package:e_commerce/widgets.dart/title_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SubTitleTextWidget(label: "hi",fontSize: 69,color: Colors.red,),
          const TitleTextWidget(label: "this is title" ,),
          ElevatedButton(onPressed: () {}, child: const Text("hello")),
          SwitchListTile(
              title: Text(themeProvider.getIsDarkTheme? "Dark Mode" : "Light Mode"),
              value: themeProvider.getIsDarkTheme,
              onChanged: (value) {
                themeProvider.setDarkTheme(themeValue: value);
              })
        ],
      ),
    );
  }
}
