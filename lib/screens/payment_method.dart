import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/screens/payment_confirmation.dart';
import 'package:zeta/themes/color.dart';

class Payment_Method extends StatefulWidget {
  const Payment_Method({Key? key}) : super(key: key);

  @override
  State<Payment_Method> createState() => _Payment_MethodState();
}

class _Payment_MethodState extends State<Payment_Method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldbgColor,
      appBar: AppBar(
        backgroundColor: white,
        iconTheme: IconThemeData(
          color: textBlueColor
        ),
        title: Text(
          "Payment Method",
          style: GoogleFonts.notoSans(
            fontSize: 16,
            color: textBlueColor,
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 13),
        children: [
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_)=> Payment_Confirm()));
            },
            tileColor: white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 31,
                  child: Image.asset("assets/UPI-Black 1.png",fit: BoxFit.fitWidth,)
                ),
              ],
            ),
            title: Text(
              "UPI",
              style: GoogleFonts.notoSans(
                  fontSize: 16,
                  color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 31,
                    child: Image.asset("assets/clarity_bank-solid.png",fit: BoxFit.fitWidth,)
                ),
              ],
            ),
            title: Text(
              "Net Banking",
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 31,
                    child: Image.asset("assets/noun-cash-1061664 1.png")
                ),
              ],
            ),
            title: Text(
              "Cash on Delivery",
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 31,
                    child: Image.asset("assets/wpf_bank-cards.png")
                ),
              ],
            ),
            title: Text(
              "Debit/Credit Card",
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: backgroundColor,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            tileColor: white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
            ),
            leading: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    width: 31,
                    child: Image.asset("assets/entypo_wallet.png")
                ),
              ],
            ),
            title: Text(
              "Wallet",
              style: GoogleFonts.notoSans(
                fontSize: 16,
                color: backgroundColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
