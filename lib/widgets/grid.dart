import 'package:anaquee/widgets/griditem.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomGrid extends StatelessWidget {
  final int count;
  final bool scrollable;
  const CustomGrid({Key? key, this.count = 4, this.scrollable = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: !scrollable
          ? const NeverScrollableScrollPhysics()
          : const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.only(left: 35, right: 35, bottom: 80),
      itemBuilder: (context, index) => GridItem(
        index: index,
      ),
      itemCount: count,
    );
  }
}
