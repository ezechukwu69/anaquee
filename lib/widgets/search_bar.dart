import 'package:anaquee/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class SearchBar extends StatelessWidget {
  final double? height;
  final String? hint;
  const SearchBar({Key? key, this.height, this.hint}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 50,
      margin: const EdgeInsets.symmetric(horizontal: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          mediumHSpacing,
          Expanded(
            child: TextField(
              style: GoogleFonts.poppins(fontSize: 13),
              decoration: InputDecoration.collapsed(
                hintText: hint,
                hintStyle: GoogleFonts.poppins(fontSize: 13),
              ),
            ),
          ),
          Icon(
            IconlyLight.search,
            color: Colors.grey.withOpacity(0.8),
          ),
          smallHSpacing
        ],
      ),
    );
  }
}
