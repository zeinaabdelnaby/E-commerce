import 'package:e_commerce/screens/cart_screen.dart';
import 'package:e_commerce/screens/home_screen.dart';
import 'package:e_commerce/screens/profile_screen.dart';
import 'package:e_commerce/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  late PageController controller;
  int currentScreen = 3;
  List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const ProfileScreen()
  ];
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: currentScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        physics: const NeverScrollableScrollPhysics(),
        children: screens,
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 2,
        height: kBottomNavigationBarHeight,
        selectedIndex: currentScreen,
        onDestinationSelected: (index) {
          setState(() {
            currentScreen = index;
          });
          controller.jumpToPage(currentScreen);
        }, destinations: const [
          NavigationDestination(selectedIcon: Icon(IconlyBold.home), icon: Icon(IconlyLight.home), label: "Home"),
          NavigationDestination(selectedIcon: Icon(IconlyBold.search), icon: Icon(IconlyLight.search), label: "Search"),
          NavigationDestination(selectedIcon: Icon(IconlyBold.bag2), icon: Icon(IconlyLight.bag2), label: "Cart"),
          NavigationDestination(selectedIcon: Icon(IconlyBold.profile), icon: Icon(IconlyLight.profile), label: "Profile"),
        ],
      ),
    );
  }
}
