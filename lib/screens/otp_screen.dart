import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:zeta/screens/onboarding%20_%201.dart';
import 'package:zeta/themes/color.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _pinPutController = TextEditingController();

  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      color: Color(0xFFEDF2FA),
      // border: Border.all(color: Colors.deepPurpleAccent),
      // borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13 * _widthScale),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 162 * _heightScale,
            ),
            Image.asset('assets/otp.png'),
            SizedBox(
              height: 77 * _heightScale,
            ),
            Text(
              'OTP has been sent on +91 9821843552',
              style: GoogleFonts.notoSans(
                  color: backgroundColor,
                  fontWeight: FontWeight.w400,
                  fontSize: 16 * _widthScale),
            ),
            SizedBox(
              height: 32 * _heightScale,
            ),
            Container(
              color: Colors.white,
              // margin: const EdgeInsets.all(20.0),
              // padding: const EdgeInsets.all(20.0),
              child: PinPut(
                //  cursorHeight: 70,
                fieldsCount: 6,
                eachFieldHeight: 50 * _heightScale,
                eachFieldWidth: 50 * _widthScale,
                //   onSubmit: (String pin) => _onSubmit(context, pin),
                focusNode: _pinPutFocusNode,
                controller: _pinPutController,
                submittedFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                selectedFieldDecoration: _pinPutDecoration,
                followingFieldDecoration: _pinPutDecoration.copyWith(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: Color(0xFFEDF2FA),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10 * _heightScale,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Resend OTP in 0:56 s',
                  textAlign: TextAlign.end,
                  style: GoogleFonts.notoSans(
                      color: Color(0xFF517194),
                      fontWeight: FontWeight.w400,
                      fontSize: 12 * _widthScale),
                ),
              ],
            ),
            SizedBox(
              height: 89 * _heightScale,
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Don’t have an account?',
            //       style: GoogleFonts.notoSans(
            //           color: text2,
            //           fontWeight: FontWeight.w700,
            //           fontSize: 12 * _widthScale),
            //     ),
            //     Text(
            //       ' Sign up',
            //       style: GoogleFonts.notoSans(
            //           color: blue22,
            //           fontWeight: FontWeight.w700,
            //           fontSize: 12 * _widthScale),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 31 * _heightScale,
            // ),
            Container(
                height: _widthScale * 55,
                width: double.infinity, //340,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OnBoardingScreen()));
                  },
                  // onPressed: () async {
                  //   if (isLoading) return;
                  //   setState(() {
                  //     isLoading = true;
                  //   });
                  //   await Future.delayed(Duration(milliseconds: 500));

                  //   setState(() {
                  //     isLoading = false;
                  //   });
                  //   // Navigator.push(
                  //   //     context,
                  //   //     MaterialPageRoute(
                  //   //         builder: (context) => WelcomePage()));
                  //   // Navigator.push(
                  //   //     context,
                  //   //     PageRouteBuilder(
                  //   //         transitionDuration: Duration(milliseconds: 400),
                  //   //         transitionsBuilder:
                  //   //             (context, animation, animationTime, child) {
                  //   //           return ScaleTransition(
                  //   //             scale: animation,
                  //   //             alignment: Alignment.centerRight,
                  //   //             child: child,
                  //   //           );
                  //   //         },
                  //   //         pageBuilder: (context, animation, animationTime) {
                  //   //           return WelcomePage();
                  //   //         }));
                  // },
                  style: ElevatedButton.styleFrom(
                    primary: blue22,
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                          new BorderRadius.circular(_widthScale * 10.0),
                    ),
                  ),
                  child: Text('Login'
                      // style: GoogleFonts.poppins(
                      //   textStyle: TextStyle(
                      //       fontSize: _widthScale * 18,
                      //       fontWeight: FontWeight.bold),
                      ),
                )),
          ],
        ),
      ),
      //   bottomN
    );
  }
}
