import 'package:anaquee/utils/spacing.dart';
import 'package:anaquee/widgets/bottom_bar.dart';
import 'package:anaquee/widgets/grid.dart';
import 'package:anaquee/widgets/search_bar.dart';
import 'package:anaquee/widgets/slider.dart';
import 'package:anaquee/widgets/slider_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class Base extends StatefulWidget {
  const Base({Key? key}) : super(key: key);

  @override
  _BaseState createState() => _BaseState();
}

class _BaseState extends State<Base> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            margin: const EdgeInsets.only(bottom: 50),
            child: Column(
              children: [
                header,
                largeVSpacing,
                const SearchBar(
                  hint: "Search here",
                ),
                smallVSpacing,
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        largeVSpacing,
                        const SliderContainer(
                          title: "Hot Picks 🔥",
                          child: CustomSlider(),
                        ),
                        largeVSpacing,
                        const SliderContainer(
                          title: "For You",
                          bold: false,
                          child: CustomGrid(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }

  Widget get header {
    return Container(
      margin: EdgeInsets.only(top: 20 + MediaQuery.of(context).padding.top),
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              "https://picsum.photos/200",
            ),
          ),
          mediumHSpacing,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome !",
                style: GoogleFonts.quicksand(
                  color: Colors.lightBlue,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "Joni Beckham",
                style: GoogleFonts.quicksand(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          const Spacer(),
          const Icon(
            IconlyLight.notification,
            size: 28,
          )
        ],
      ),
    );
  }
}
