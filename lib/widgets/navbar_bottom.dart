import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_app/provider/screen_render_provider.dart';

class NavbarBottom extends ConsumerWidget {
  const NavbarBottom({super.key});

  final navbarStyle = const BoxDecoration(
      color: Color(0xFFFF7F50),
      borderRadius: BorderRadius.all(Radius.circular(20)));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int screenIndex =
        ref.watch(screenNotifierPorvider).screenSelectedIndex;

    return Container(
        margin: const EdgeInsets.all(10),
        decoration: navbarStyle,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: BottomNavigationBar(
              unselectedItemColor: Colors.white,
              elevation: 0,
              backgroundColor: Colors.transparent,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.white,
                  ),
                  label: 'Profile',
                ),
              ],
              currentIndex: screenIndex,
              onTap: (newIndex) => (ref
                  .read(screenNotifierPorvider.notifier)
                  .changeScreen(newIndex)),
            )));
  }
}
