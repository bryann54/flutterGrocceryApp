// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:groccery_app/screens/cartPage.dart';
import 'package:groccery_app/screens/categories.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawerMenuWrapper extends StatefulWidget {
  const HiddenDrawerMenuWrapper({Key? key}) : super(key: key);

  @override
  _HiddenDrawerMenuWrapperState createState() =>
      _HiddenDrawerMenuWrapperState();
}

class _HiddenDrawerMenuWrapperState extends State<HiddenDrawerMenuWrapper> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle = const TextStyle(
      fontSize: 20, color: Colors.white, fontWeight: FontWeight.w800);

  @override
  void initState() {
    super.initState();

    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: '',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.black26),
        const Categories(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'my cart',
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.black26,
        ),
        const CartPage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: '',
            baseStyle: myTextStyle,
            selectedStyle: myTextStyle,
            colorLineSelected: Colors.black26),
        const Categories(),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.greenAccent,
      initPositionSelected: 0,
      screens: _pages,
      slidePercent: 60,
    );
  }
}
