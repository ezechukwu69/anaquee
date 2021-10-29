import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 35, right: 35),
        separatorBuilder: (context, index) => const SizedBox(
          width: 12,
        ),
        itemBuilder: (context, index) => Stack(
          children: [
            Container(
              height: 300,
              width: 220,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(
                      index % 2 == 0 ? "images/pics3.jpg" : "images/pics4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
                bottom: 24,
                left: 12,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      index % 2 == 0 ? "Runnerclick" : "Classic Legs",
                      style: GoogleFonts.poppins(
                          fontSize: 14, color: Colors.white),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "\$ ",
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          index % 2 == 0 ? "212" : "515",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
        itemCount: 12,
      ),
    );
  }
}
