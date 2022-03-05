import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/themes/color.dart';

class Car_Screen extends StatefulWidget {
  const Car_Screen({Key? key}) : super(key: key);

  @override
  State<Car_Screen> createState() => _Car_ScreenState();
}

class _Car_ScreenState extends State<Car_Screen> {
  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 1638;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      backgroundColor: Color(0xffEDF2FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        iconTheme: IconThemeData(
            color: Color(0xff0C3867)
        ),
        title: Text(
          "Skoda Laura",
          style: GoogleFonts.notoSans(
              fontWeight: FontWeight.w700,
              color: Color(0xff0C3867),
              fontSize: 16
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 26 * _heightScale,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 285 * _widthScale,
              width: 362 * _widthScale,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Hero(
                        tag: 'car',
                        child: Image.asset("assets/car.png")
                    ),
                  ),
                  ListView(
                    children: [
                      Container(
                        height: 33 * _widthScale,
                        width: 125 * _widthScale,
                        margin: EdgeInsets.only(bottom: 16 * _heightScale),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: SizedBox(
                            height: 33 * _widthScale,
                            child: Image.asset("assets/transmission2.png",fit: BoxFit.fitWidth,)
                          ),
                          title: Text(
                              "Transmission",
                            style: GoogleFonts.notoSans(
                              fontSize: 12 * _widthScale,
                              color: Color(0xff0C3867),
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          subtitle: Text(
                            "Manual",
                            style: GoogleFonts.notoSans(
                                fontSize: 12 * _widthScale,
                                color: Color(0xff0C3867),
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          isThreeLine: true,
                        ),
                      ),
                      Container(
                        height: 33 * _widthScale,
                        width: 125 * _widthScale,
                        margin: EdgeInsets.only(bottom: 16 * _heightScale),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: SizedBox(
                              height: 33 * _widthScale,
                              child: Image.asset("assets/fuel2.png",fit: BoxFit.fitWidth,)
                          ),
                          title: Text(
                            "Fuel Type",
                            style: GoogleFonts.notoSans(
                                fontSize: 12 * _widthScale,
                                color: Color(0xff0C3867),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          subtitle: Text(
                            "Petrol",
                            style: GoogleFonts.notoSans(
                                fontSize: 12 * _widthScale,
                                color: Color(0xff0C3867),
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          isThreeLine: true,
                        ),
                      ),
                      Container(
                        height: 33 * _widthScale,
                        width: 125 * _widthScale,
                        margin: EdgeInsets.only(bottom: 16 * _heightScale),
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: SizedBox(
                              height: 33 * _widthScale,
                              child: Image.asset("assets/capacity2.png",fit: BoxFit.fitWidth,)
                          ),
                          title: Text(
                            "Passanger",
                            style: GoogleFonts.notoSans(
                                fontSize: 12 * _widthScale,
                                color: Color(0xff0C3867),
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          subtitle: Text(
                            "5 Seater",
                            style: GoogleFonts.notoSans(
                                fontSize: 12 * _widthScale,
                                color: Color(0xff0C3867),
                                fontWeight: FontWeight.w400
                            ),
                          ),
                          isThreeLine: true,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12 * _widthScale,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 26),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 24 * _widthScale,
                  width: 115 * _widthScale,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Color(0xff0C3867)
                    ),
                    borderRadius: BorderRadius.circular(75 * _widthScale),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 10 * _widthScale,
                          color: Color(0xff244F9D),
                        ),
                        Text(
                          " 2.5 Km Away",
                          style: GoogleFonts.notoSans(
                              fontSize: 12 * _widthScale,
                              color: Color(0xff244F9D)
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  child: SizedBox(
                    height: 20,
                    width: 16,
                    child: Image.asset(
                        "assets/share.png"
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 58 * _widthScale,
                width: 157 * _widthScale,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10 * _widthScale)
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
                width: 28 * _widthScale,
                child: Divider(
                  color: Color(0xff517194),
                  thickness: 1.5,
                ),
              ),
              Container(
                height: 58 * _widthScale,
                width: 157 * _widthScale,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10 * _widthScale)
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
        ],
      ),
    );
  }
}
