import 'package:anaquee/utils/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class SliderContainer extends StatelessWidget {
  final String title;
  final Widget child;
  final bool bold;
  const SliderContainer(
      {Key? key, required this.title, required this.child, this.bold = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                    fontSize: 17,
                    fontWeight: bold ? FontWeight.bold : FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context)
                      .pushNamed("/search", arguments: title),
                  child: Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      color: Colors.blueAccent,
                    ),
                  ),
                )
              ],
            ),
          ),
          mediumVSpacing,
          child,
        ],
      ),
    );
  }
}
