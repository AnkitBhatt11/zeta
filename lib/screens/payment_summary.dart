import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/screens/payment_method.dart';
import 'package:zeta/themes/color.dart';
import 'package:zeta/widget/slide_button.dart';

class Payment_Summary extends StatefulWidget {
  const Payment_Summary({Key? key}) : super(key: key);

  @override
  State<Payment_Summary> createState() => _Payment_SummaryState();
}

class _Payment_SummaryState extends State<Payment_Summary> {
  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      backgroundColor: scaffoldbgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        iconTheme: IconThemeData(
          color: textBlueColor
        ),
        title: Text(
            "Honda Civic",
          style: GoogleFonts.notoSans(
            fontSize: 16,
            color: textBlueColor,
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 13),
        child: ListView(
          shrinkWrap: true,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 13 * _widthScale, vertical: 4 * _widthScale),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wed, 16 Feb 2022",
                        style: GoogleFonts.notoSans(
                            fontSize: 12 * _widthScale,
                            color: Color(0xff0C3867),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        "06:00 PM\nNetaji Subhash Palace",
                        style: GoogleFonts.notoSans(
                            fontSize: 12 * _widthScale,
                            color: Color(0xff0C3867),
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 35,
                  child: Divider(
                    color: Color(0xff517194),
                    thickness: 1.5,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 13 * _widthScale, vertical: 4 * _widthScale),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Wed, 16 Feb 2022",
                        style: GoogleFonts.notoSans(
                            fontSize: 12 * _widthScale,
                            color: Color(0xff0C3867),
                            fontWeight: FontWeight.w700
                        ),
                      ),
                      Text(
                        "06:00 PM\nNetaji Subhash Palace",
                        style: GoogleFonts.notoSans(
                            fontSize: 12 * _widthScale,
                            color: Color(0xff0C3867),
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Payment Summary",
                  style: GoogleFonts.notoSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: textBlueColor
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Divider(
                  thickness: 1,
                  color: textBlueColor,
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    "Subtotal:",
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: backgroundColor
                    ),
                  ),
                  trailing: Text(
                    "₹ 1,018",
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      color: textBlueColor,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    "Delivery & Pick up:",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: backgroundColor
                    ),
                  ),
                  trailing: Text(
                    "+ ₹ 49",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: textBlueColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  height: 50,
                  child: Center(
                    child: Text(
                      "Netaji Subhash Palace, New Delhi, 110034",
                      style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: backgroundColor
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                  height: 50,
                  margin: EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff244F9D)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        height: 33,
                        child: Image.asset("assets/coupon.png"),
                      ),
                      SizedBox(
                        width: 7,
                      ),
                      Text(
                        "FEB22 (Instant ₹50 off)",
                        style: GoogleFonts.notoSans(
                            fontSize: 16,
                            color: white
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff6282C2),
                            borderRadius: BorderRadius.circular(5)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                        child: Text(
                          "Applied",
                          style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.white
                          ),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                        color: white,
                      )
                    ],
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    "Refund or Cashback:",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: backgroundColor
                    ),
                  ),
                  trailing: Text(
                    "- ₹ 50",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: textBlueColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  visualDensity: VisualDensity(vertical: -3),
                  title: Text(
                    "Secuirity (Refundable) :",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: backgroundColor
                    ),
                  ),
                  trailing: Text(
                    "₹ 4,000",
                    style: GoogleFonts.notoSans(
                        fontSize: 16,
                        color: textBlueColor,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                  child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total",
                              style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  color: backgroundColor,
                              ),
                            ),
                            Text(
                              "₹ 5,089",
                              style: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  color: textBlueColor,
                                  fontWeight: FontWeight.w700
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 21,
                        ),
                        Expanded(
                          child: AnimatedSwipeToConfirm(
                            onConfirm: (){
                              Navigator.of(context).push(
                                  MaterialPageRoute(builder: (_)=> Payment_Method())
                              );
                            },
                            onCancel: () {},
                          ),
                        ),
                      ],
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
