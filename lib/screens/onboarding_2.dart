// import 'package:doctor_kylo_apps/Colors/colors.dart';
// import 'package:doctor_kylo_apps/Screens/on_boarding_screen_2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/screens/onboarding_3.dart';
import 'package:zeta/themes/color.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({Key? key}) : super(key: key);

  @override
  _OnBoardingScreen2State createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: _heightScale * 131,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _widthScale * 20.0),
            child: Image.asset("assets/amico.png"),
          ),
          SizedBox(
            height: _heightScale * 49,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _widthScale * 27),
            child: Text(
              "Paperless document verification",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                  color: black,
                  fontWeight: FontWeight.w600,
                  fontSize: _widthScale * 28),
            ),
          ),
          SizedBox(
            height: _heightScale * 22,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _widthScale * 39),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc.",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                  color: Color(0xFF96969B), fontSize: _widthScale * 16),
            ),
          ),
          SizedBox(
            height: _heightScale * 50,
          ),
          Container(
            //  margin: EdgeInsets.symmetric(horizontal: _widthScale * 136),
            width: _widthScale * 270,
            height: _heightScale * 46,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OnBoardingScreen3()));
                },
                style: ElevatedButton.styleFrom(
                  primary: blue22,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(_widthScale * 20.0),
                  ),
                ),
                child: Text(
                  "Next",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: _widthScale * 15,
                        fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          // SizedBox(
          //   height: _heightScale * 64.6,
          // ),
          // Padding(
          //   padding: EdgeInsets.symmetric(horizontal: _widthScale * 173.6),
          //   child: Image.asset("assets/b1.png"),
          // ),
          // SizedBox(
          //   height: _heightScale * 25,
          // ),
        ],
      ),
      bottomNavigationBar: ListTile(
        leading: Text(
          'Back',
          style: GoogleFonts.montserrat(
              color: Color(0xFF96969B),
              fontWeight: FontWeight.w400,
              fontSize: 15 * _widthScale),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Ellipse 203.png',
              color: Color(0xFFC4C4C4),
            ),
            SizedBox(
              width: 8 * _widthScale,
            ),
            Image.asset('assets/Ellipse 203.png'),
            SizedBox(
              width: 8 * _widthScale,
            ),
            Image.asset(
              'assets/Ellipse 203.png',
              color: Color(0xFFC4C4C4),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //       color: blue22, borderRadius: BorderRadius.circular(10)),
            // )
          ],
        ),
        trailing: Text(
          'Skip',
          style: GoogleFonts.montserrat(
              color: Color(0xFF96969B),
              fontWeight: FontWeight.w400,
              fontSize: 15 * _widthScale),
        ),
      ),
    );
  }
}
