import 'package:anaquee/utils/spacing.dart';
import 'package:anaquee/widgets/block_button.dart';
import 'package:anaquee/widgets/grid.dart';
import 'package:anaquee/widgets/search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class SearchPage extends StatelessWidget {
  final String title;
  const SearchPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          header(context),
          largeVSpacing,
          smallVSpacing,
          const SearchBar(),
          largeVSpacing,
          const Expanded(
            child: CustomGrid(
              count: 30,
              scrollable: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget header(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20 + MediaQuery.of(context).padding.top),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        children: [
          Row(
            children: [
              BlockButton(
                  data: IconlyLight.arrow_left_2,
                  onTap: () {
                    Navigator.of(context).pop();
                  }),
              const Spacer(),
              BlockButton(data: IconlyLight.filter, onTap: () {}),
            ],
          ),
          Positioned(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: GoogleFonts.poppins(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
          )
        ],
      ),
    );
  }
}
