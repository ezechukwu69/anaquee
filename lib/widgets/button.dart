import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final double? width;
  final double? height;
  final EdgeInsets? margin;
  const AppButton(
      {Key? key,
      required this.onTap,
      required this.child,
      this.width,
      this.height,
      this.margin})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.grey.shade50,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        margin: margin ?? EdgeInsets.zero,
        child: child,
        width: width ?? double.infinity,
        height: height ?? double.infinity,
      ),
    );
  }
}
