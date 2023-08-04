import 'package:flutter/material.dart';

class NavbarBottom extends StatelessWidget {
  const NavbarBottom({super.key});

  final navbarStyle = const BoxDecoration(
      color: Color.fromARGB(255, 225, 83, 135),
      borderRadius: BorderRadius.all(Radius.circular(20)));

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: navbarStyle,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: BottomNavigationBar(
              backgroundColor: const Color(0xFFFF7F50),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_box),
                  label: 'Profile',
                ),
              ],
            )));
  }
}
