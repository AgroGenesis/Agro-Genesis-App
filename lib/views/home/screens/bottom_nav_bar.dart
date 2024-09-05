import 'package:agrogenesis/app/app_theme.dart';
import 'package:agrogenesis/views/cart/cart_view.dart';
import 'package:agrogenesis/views/home/home_screen.dart';

import 'package:agrogenesis/views/weather/weather_data.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;
  bool showNav = true;

  @override
  void initState() {
    super.initState();

    _controller = PersistentTabController(initialIndex: 0);
  }

  List<Widget> _buildScreens() {
    return [
      const HomeScreen(),
      const WeatherInfo(),
      const CartView(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          contentPadding: 2,
          iconSize: 30,
          textStyle: const TextStyle(fontSize: 18),
          inactiveIcon: const Icon(Icons.home_outlined),
          icon: const Icon(Icons.home),
          title: "Home",
          inactiveColorPrimary: Colors.grey,
          activeColorPrimary: greenColor),
      PersistentBottomNavBarItem(
        contentPadding: 2,
        iconSize: 30,
        textStyle: const TextStyle(fontSize: 18),
        icon: const Icon(Icons.cloud),
        title: "Weather",
        activeColorPrimary: greenColor,
        inactiveColorPrimary: Colors.grey,
      ),

      PersistentBottomNavBarItem(
        contentPadding: 2,
        iconSize: 30,
        textStyle: const TextStyle(fontSize: 18),
        // inactiveIcon: const Icon(Icons.calendar_month_outlined),
        icon: const Icon(Icons.shopping_cart),
        title: "Cart",
        activeColorPrimary: greenColor,
        inactiveColorPrimary: Colors.grey,
      ),
      // PersistentBottomNavBarItem(
      //   contentPadding: 2,
      //   iconSize: 30,
      //   textStyle: const TextStyle(fontSize: 18),
      //   inactiveIcon: const Icon(Icons.notifications),
      //   icon: const Icon(Icons.notifications_outlined),
      //   title: "Notifications",
      //   inactiveColorPrimary: Colors.grey,
      // ),
      // PersistentBottomNavBarItem(
      //   contentPadding: 2,
      //   iconSize: 30,
      //   textStyle: const TextStyle(fontSize: 18),
      //   inactiveIcon: const Icon(Icons.person_2_outlined),
      //   icon: const Icon(Icons.person),
      //   title: "Profile",
      //   inactiveColorPrimary: Colors.grey,
      // ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        backgroundColor: const Color(0xFFF5F5DC),
        resizeToAvoidBottomInset: true,

        navBarHeight: 60,
        // padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),

        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        // popAllScreensOnTapOfSelectedTab: true,
        // popActionScreens: PopActionScreensType.all,
        // itemAnimationProperties: const ItemAnimationProperties(
        //   duration: Duration(milliseconds: 200),
        //   curve: Curves.ease,
        // ),
        // screenTransitionAnimation: const ScreenTransitionAnimation(
        //   animateTabTransition: true,
        //   curve: Curves.ease,
        //   duration: Duration(milliseconds: 200),
        // ),
        navBarStyle: NavBarStyle.style1,
        isVisible: showNav,
      ),
    );
  }
}
