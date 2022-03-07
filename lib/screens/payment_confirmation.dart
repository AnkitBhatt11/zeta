import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/themes/color.dart';

import 'home_screen.dart';

class Payment_Confirm extends StatefulWidget {
  const Payment_Confirm({Key? key}) : super(key: key);

  @override
  State<Payment_Confirm> createState() => _Payment_ConfirmState();
}

class _Payment_ConfirmState extends State<Payment_Confirm> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgColor,
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Voilla!",
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: textBlueColor,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(
                height: 17,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Image.asset(
                    "assets/confirm.png"
                ),
              ),
              SizedBox(
                height: 25,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                    color: backgroundColor,
                  ),
                  children: [
                    TextSpan(
                      text: "Payment Successful\n"
                    ),
                    TextSpan(
                        text: " Kia Seltos",
                      style: GoogleFonts.notoSans(
                        fontWeight: FontWeight.w700
                      )
                    ),
                    TextSpan(
                        text: " has been booked for"
                    ),
                    TextSpan(
                        text: " 25 Feb’ 22",
                        style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.w700
                        )
                    ),
                  ]
                )
              ),
              Text(
                "\nTransaction ID : \n516531320065098498",
                style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: backgroundColor,
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
