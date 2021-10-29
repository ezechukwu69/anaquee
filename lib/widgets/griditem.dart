import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class GridItem extends StatefulWidget {
  final int index;
  const GridItem({Key? key, required this.index}) : super(key: key);

  @override
  _GridItemState createState() => _GridItemState();
}

class _GridItemState extends State<GridItem> {
  bool selected = false;
  int id = 0;

  @override
  void initState() {
    id = Random().nextInt(10);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 300,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(
                  id % 2 == 0 ? "images/pics1.jpg" : "images/pics2.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
          ),
        ),
        Positioned(
            bottom: 8,
            left: 12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  id % 2 == 0 ? "Runnerclick" : "Classic Legs",
                  style: GoogleFonts.poppins(fontSize: 14, color: Colors.black),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "\$ ",
                      style: GoogleFonts.poppins(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      id % 2 == 0 ? "212" : "515",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            )),
        Positioned(
          bottom: 8,
          right: 12,
          child: Container(
            height: 25,
            width: 25,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.lightBlueAccent,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 17,
            ),
          ),
        ),
        Positioned(
          top: 8,
          right: 12,
          child: GestureDetector(
            onTap: () => setState(() => selected = !selected),
            child: Container(
              height: 22,
              width: 22,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Colors.grey.shade200,
              ),
              child: Icon(
                !selected ? IconlyLight.heart : IconlyBold.heart,
                color: !selected ? Colors.grey.withOpacity(0.6) : Colors.red,
                size: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
