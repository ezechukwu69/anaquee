import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool active;
  const Indicator({Key? key, required this.active}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 40,
      decoration: BoxDecoration(
        color: active ? Colors.lightBlueAccent : Colors.grey.withOpacity(0.6),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
