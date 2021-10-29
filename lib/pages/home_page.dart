import 'package:anaquee/utils/spacing.dart';
import 'package:anaquee/widgets/button.dart';
import 'package:anaquee/widgets/indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Spacer(),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.4,
              child: PageView(
                onPageChanged: (v) {
                  setState(() => index = v);
                },
                children: [
                  Image.asset(
                    "images/pics1.jpg",
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
            const Spacer(),
            welcomeText,
            largeVSpacing,
            description,
            largeVSpacing,
            button,
            largeVSpacing,
            indicator,
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
            ),
          ],
        ),
      ),
    );
  }

  Widget get indicator {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Indicator(active: index == 0),
        mediumHSpacing,
        Indicator(active: index == 1),
      ],
    );
  }

  Widget get welcomeText {
    return Text(
      "Let's start the journey",
      style: GoogleFonts.quicksand(
        color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget get description {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 35),
      child: Text(
        "Find the best pair to fit your lifestyle and fulfill your life",
        textAlign: TextAlign.center,
        style: GoogleFonts.quicksand(
          color: Colors.grey,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget get button {
    return AppButton(
      onTap: () {
        Navigator.of(context)
            .pushNamedAndRemoveUntil("/base", (route) => false);
      },
      child: Text(
        "Start now",
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 16),
      ),
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 30),
    );
  }
}
