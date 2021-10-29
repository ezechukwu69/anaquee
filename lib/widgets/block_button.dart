import 'package:flutter/material.dart';

class BlockButton extends StatelessWidget {
  final IconData data;
  final VoidCallback onTap;
  final Color color;
  const BlockButton({
    Key? key,
    required this.data,
    required this.onTap,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Icon(
          data,
          color: color,
        ),
      ),
    );
  }
}
