import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottonNavBar extends StatelessWidget
{
  void Function(int)? onTapChange;
  MyBottonNavBar({super.key,required this.onTapChange});
  @override
  Widget build(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 20),
    child: GNav(
      color: Colors.black,
        activeColor: Colors.white,
        tabActiveBorder: Border.all(color: Colors.red),
        tabBackgroundColor: Colors.red.shade500,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTapChange!(value),
        tabs:const [
      GButton(
        icon: Icons.home,
        iconSize: 30.0,
        text: 'shop',textStyle:
        TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        )
        ,),
      GButton(
          icon: Icons.shopping_bag_rounded,
          iconSize: 30.0,
          text: 'cart',
          textStyle:

          TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )
          )
    ],
    ),
  );
  }

}