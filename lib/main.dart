import 'package:e_commerce/consts/theme_data.dart';
import 'package:e_commerce/providers/theme_provider.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: 'shop smart AR',
          theme: Styles.themeData(
              isDarktheme: themeProvider.getIsDarkTheme, context: context),
          home: const RootScreen(),
          debugShowCheckedModeBanner: false,
        );
      }),
    );
  }
}
