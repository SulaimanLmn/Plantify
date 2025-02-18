import 'package:flutter/material.dart';
import 'package:plantify/core/app_assets.dart';
import 'package:plantify/pages/cart_page.dart';
import 'package:plantify/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  final int navIndex;
  const NavigationPage({super.key, this.navIndex = 0});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _curentIndex = 0;
  @override
  void initState() {
    _curentIndex = widget.navIndex;
    super.initState();
  }

  List<Widget> pages = [
    HomePage(),
    Center(
      child: Text("data"),
    ),
    CartPage(),
    Center(
      child: Text("data"),
    ),
    Center(
      child: Text("data"),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_curentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _curentIndex,
          onTap: (newIndex) => setState(() {
                _curentIndex = newIndex;
              }),
          items: [
            BottomNavigationBarItem(
                label: "", icon: Image.asset(AppAssets.homeIcon)),
            BottomNavigationBarItem(
                label: "", icon: Image.asset(AppAssets.lovedIcon)),
            BottomNavigationBarItem(
                label: "", icon: Image.asset(AppAssets.navigationCartIcon)),
            BottomNavigationBarItem(
                label: "", icon: Image.asset(AppAssets.profileIcon)),
          ]),
    );
  }
}
