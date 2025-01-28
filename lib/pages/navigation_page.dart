import 'package:flutter/material.dart';
import 'package:plantify/pages/home_page.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _curentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    Center(
      child: Text("data"),
    ),
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
                label: "", icon: Image.asset("assets/images/home_icon.png")),
            BottomNavigationBarItem(
                label: "", icon: Image.asset("assets/images/loved_icon.png")),
            BottomNavigationBarItem(
                label: "",
                icon: Image.asset("assets/images/navigation_cart_icon.png")),
            BottomNavigationBarItem(
                label: "", icon: Image.asset("assets/images/profile_icon.png")),
          ]),
    );
  }
}
