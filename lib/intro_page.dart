import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreens extends StatefulWidget {
  @override
  _IntroScreensState createState() => _IntroScreensState();
}

class _IntroScreensState extends State<IntroScreens> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IntroductionScreen(
          globalBackgroundColor: Colors.white,
          rawPages: [introPage1(), introPage2(), introPage3()],
          showNextButton: true,
          dotsDecorator: DotsDecorator(
              activeColor: Colors.redAccent,
              activeSize: Size.square(12),
              size: Size.square(12)),
          next: Text(
            "NEXT",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          nextColor: Colors.redAccent,
          showSkipButton: false,
          doneColor: Colors.redAccent,
          done: Text(
            "GOT IT",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.redAccent,
            ),
          ),
          onDone: () {}, // Add further code Here
        ),
      ),
    );
  }
}

Widget introPage2() {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: Text(
              "CREATE AND MANAGE YOUR VIRTUAL STORE WITH US",
              style: GoogleFonts.fredokaOne(fontSize: 42, color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Lottie.asset('assets/store.json', height: 350)),
          ),
        ],
      ),
    ),
  );
}

Widget introPage3() {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: Text(
              "MAINTAIN YOUR INVENTORY",
              style: GoogleFonts.fredokaOne(fontSize: 55, color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Lottie.asset('assets/inventory.json', height: 350)),
          ),
        ],
      ),
    ),
  );
}

Widget introPage1() {
  return SafeArea(
    child: Scaffold(
      backgroundColor: Colors.redAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 30),
            child: Text(
              "JOIN US AND MAKE A SAMRIDDH INDORE",
              style: GoogleFonts.fredokaOne(fontSize: 43, color: Colors.white),
            ),
          ),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Lottie.asset('assets/joinus.json', height: 350)),
          ),
        ],
      ),
    ),
  );
}
