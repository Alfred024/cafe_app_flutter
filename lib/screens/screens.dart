import 'package:flutter/material.dart';
import 'package:food_app/screens/pages_exports.dart';

final List<Widget> userScreens = <Widget>[
  const HomePage(),
  const ShoppingCart(),
  const ProfilePage(),
];

class Screen {
  final int screenSelectedIndex;

  Screen({this.screenSelectedIndex = 0});

  Widget getScreen() => userScreens[screenSelectedIndex];

  Screen copy({int? screenSelectedIndex}) => Screen(
        screenSelectedIndex: screenSelectedIndex ?? this.screenSelectedIndex,
      );
}
