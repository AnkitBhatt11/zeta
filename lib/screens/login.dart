import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:zeta/screens/otp_screen.dart';
import 'package:zeta/screens/signup_screen.dart';

import 'package:zeta/themes/color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isLoading = false;
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'IN';
  PhoneNumber number = PhoneNumber(isoCode: 'IN');

  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 13 * _widthScale),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 149 * _heightScale,
              ),
              Image.asset('assets/rafiki.png'),
              SizedBox(
                height: 77.51 * _heightScale,
              ),
              Text(
                'Phone Number',
                style: GoogleFonts.notoSans(
                    color: backgroundColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16 * _widthScale),
              ),
              SizedBox(
                height: 12 * _heightScale,
              ),
              InternationalPhoneNumberInput(
                // inputDecoration: InputDecoration(fillColor: Colors.grey),
                onInputChanged: (PhoneNumber number) {
                  print(number.phoneNumber);
                },
                onInputValidated: (bool value) {
                  print(value);
                },
                selectorConfig: SelectorConfig(
                  selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                ),
                ignoreBlank: false,
                autoValidateMode: AutovalidateMode.disabled,
                selectorTextStyle: TextStyle(color: Colors.black),
                initialValue: number,
                textFieldController: controller,
                formatInput: false,
                keyboardType:
                    TextInputType.numberWithOptions(signed: true, decimal: true),
                inputBorder: OutlineInputBorder(),
                onSaved: (PhoneNumber number) {
                  print('On Saved: $number');
                },
              ),
              SizedBox(
                height: 89 * _heightScale,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: GoogleFonts.notoSans(
                        color: text2,
                        fontWeight: FontWeight.w700,
                        fontSize: 12 * _widthScale),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpScreen()));
                    },
                    child: Text(
                      ' Sign up',
                      style: GoogleFonts.notoSans(
                          color: blue22,
                          fontWeight: FontWeight.w700,
                          fontSize: 12 * _widthScale),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 31 * _heightScale,
              ),
              Container(
                  height: _widthScale * 55,
                  width: double.infinity, //340,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (isLoading) return;
                      setState(() {
                        isLoading = true;
                      });
                      await Future.delayed(Duration(milliseconds: 500));

                      setState(() {
                        isLoading = false;
                      });
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => OtpScreen()));
                      // Navigator.push(
                      //     context,
                      //     PageRouteBuilder(
                      //         transitionDuration: Duration(milliseconds: 400),
                      //         transitionsBuilder:
                      //             (context, animation, animationTime, child) {
                      //           return ScaleTransition(
                      //             scale: animation,
                      //             alignment: Alignment.centerRight,
                      //             child: child,
                      //           );
                      //         },
                      //         pageBuilder: (context, animation, animationTime) {
                      //           return WelcomePage();
                      //         }));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: blue22,
                      shape: new RoundedRectangleBorder(
                        borderRadius:
                            new BorderRadius.circular(_widthScale * 10.0),
                      ),
                    ),
                    child: Text('Submit'
                        // style: GoogleFonts.poppins(
                        //   textStyle: TextStyle(
                        //       fontSize: _widthScale * 18,
                        //       fontWeight: FontWeight.bold),
                        ),
                  )),
            ],
          ),
        ),
      ),
      //   bottomNavigationBar:
      //),
    );
  }
}
