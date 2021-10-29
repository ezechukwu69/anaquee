import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int selectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildIcon(IconlyLight.home, IconlyBold.home, index: 0),
            buildIcon(IconlyLight.heart, IconlyBold.heart, index: 1),
            buildIcon(IconlyLight.bag_2, IconlyBold.bag_2, index: 2),
            buildIcon(IconlyLight.profile, IconlyBold.profile, index: 3),
          ],
        ),
        margin: const EdgeInsets.symmetric(horizontal: 35),
      ),
    );
  }

  Widget buildIcon(IconData icon, IconData icon2, {required int index}) {
    return GestureDetector(
      child: Icon(
        selectedIcon != index ? icon : icon2,
        color: selectedIcon == index
            ? Colors.lightBlue
            : Colors.grey.withOpacity(0.8),
      ),
      onTap: () => setState(() => selectedIcon = index),
    );
  }
}
