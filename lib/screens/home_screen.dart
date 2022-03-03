import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:zeta/main.dart';
import 'package:zeta/themes/color.dart';

class HoemScreen extends StatefulWidget {
  const HoemScreen({Key? key}) : super(key: key);

  @override
  _HoemScreenState createState() => _HoemScreenState();
}

class _HoemScreenState extends State<HoemScreen> {
  bool islo = false;
  @override
  Widget build(BuildContext context) {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Scaffold(
      backgroundColor: Color(0xFFEDF2FA),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset(
          'assets/Vector (18).png',
          width: 19 * _widthScale,
          height: 17 * _heightScale,
        ),
        title: Text('Zeta',
            style: GoogleFonts.squadaOne(
                color: textBlueColor,
                fontWeight: FontWeight.w400,
                fontSize: 36 * _widthScale)
            // TextStyle(
            //     color: textBlueColor, fontWeight: FontWeight.w400, fontSize: 36),
            ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.notifications,
            color: textBlueColor,
          ),
          SizedBox(
            width: 14 * _widthScale,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 13 * _heightScale),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
            child: Text(
              'Recently viewed cars',
              style: GoogleFonts.notoSans(
                  color: Color(0xFF0C3867),
                  fontWeight: FontWeight.w700,
                  fontSize: 16 * _widthScale),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
            child: Container(
              height: 165,
              width: 330,
              color: Color(0xFFEDF2FA),
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  profile(),
                  SizedBox(
                    width: 30,
                  ),
                  profile(),
                  profile(),
                  profile(),
                ],
              ),
            ),
          ),
          SizedBox(height: 13 * _heightScale),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
            child: Text(
              'Recently viewed cars',
              style: GoogleFonts.notoSans(
                  color: Color(0xFF0C3867),
                  fontWeight: FontWeight.w700,
                  fontSize: 16 * _widthScale),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
            child: Container(
              height: 165,
              width: 330,
              color: Color(0xFFEDF2FA),
              child: ListView(
                // shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  profile(),
                  SizedBox(
                    width: 30,
                  ),
                  profile(),
                  profile(),
                  profile(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 45 * _heightScale,
          ),

          // showBottomSheet(context: context, builder: (context){
          //   return
          // })
          Container(
            height: 240 * _heightScale,
            width: 375 * _widthScale,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0),
                  topLeft: Radius.circular(14),
                  topRight: Radius.circular(14)),
              color: Color(0xFF4365A9),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 8 * _heightScale,
                ),
                GestureDetector(
                  onTap: () {
                    bottom();
                    // setState(() {
                    //   islo = true;
                    // });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5 * _heightScale,
                        width: 100 * _widthScale,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20 * _heightScale,
                ),
                GestureDetector(
                  onTap: () {
                    bottom();
                  },
                  child: Container(
                    height: 50 * _heightScale,
                    width: 350 * _widthScale,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: blue22),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * _widthScale,
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: 33 * _heightScale,
                            width: 33 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF6282C2)),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 18 * _widthScale,
                          )
                        ]),
                        SizedBox(
                          width: 8 * _widthScale,
                        ),
                        Text(
                          'NDM 1, Netaji Subhash Palace, New....',
                          style: GoogleFonts.notoSans(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10 * _heightScale,
                ),
                GestureDetector(
                  onTap: () {
                    bottom();
                  },
                  child: Container(
                    height: 50 * _heightScale,
                    width: 350 * _widthScale,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: blue22),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * _widthScale,
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: 33 * _heightScale,
                            width: 33 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF6282C2)),
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 18 * _widthScale,
                          )
                        ]),
                        SizedBox(
                          width: 8 * _widthScale,
                        ),
                        Text(
                          'Wed, 16 Feb - 06:00 pm → Thu, 17 F...',
                          style: GoogleFonts.notoSans(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20 * _heightScale,
                ),
                Container(
                  height: 54 * _heightScale,
                  width: 350 * _widthScale,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white),
                  child: Text(
                    'Find Cars',
                    style: GoogleFonts.notoSans(
                        color: Color(0xFF0C3867),
                        fontSize: 16 * _widthScale,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  bottom() {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return showModalBottomSheet(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_widthScale * 25),
          topRight: Radius.circular(_widthScale * 25),
        )),
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10 * _heightScale,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5 * _heightScale,
                        width: 100 * _widthScale,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 9 * _heightScale,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'our services are only available in delhi right now.',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 12 * _widthScale))
                    ],
                  ),
                  SizedBox(
                    height: 7 * _heightScale,
                  ),
                  Container(
                    height: 50 * _heightScale,
                    width: 350 * _widthScale,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: blue22),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * _widthScale,
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: 33 * _heightScale,
                            width: 33 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF6282C2)),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.white,
                            size: 18 * _widthScale,
                          )
                        ]),
                        SizedBox(
                          width: 8 * _widthScale,
                        ),
                        Text(
                          'NDM 1, Netaji Subhash Palace, New....',
                          style: GoogleFonts.notoSans(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * _heightScale,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 22.5 * _widthScale,
                      ),
                      Icon(
                        Icons.my_location,
                        color: Colors.white,
                        size: 19 * _widthScale,
                      ),
                      SizedBox(width: 19.5 * _widthScale),
                      Text('Current Location',
                          style: GoogleFonts.notoSans(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16 * _widthScale))
                    ],
                  ),
                  SizedBox(
                    height: 20 * _heightScale,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => MapSample())));
                      // GoogleMap(
                      //   mapType: MapType.hybrid,
                      //   initialCameraPosition: _kGooglePlex,
                      //   onMapCreated: (GoogleMapController controller) {
                      //     _controller.complete(controller);
                      //   },
                      // );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 22.5 * _widthScale,
                        ),
                        Icon(
                          Icons.edit_location_alt_sharp,
                          color: Colors.white,
                          size: 19 * _widthScale,
                        ),
                        SizedBox(width: 19.5 * _widthScale),
                        Text('Set Location on Map',
                            style: GoogleFonts.notoSans(
                                color: Colors.white,
                                fontWeight: FontWeight.w400,
                                fontSize: 16 * _widthScale))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20 * _heightScale,
                  ),
                  Container(
                    height: 50 * _heightScale,
                    width: 350 * _widthScale,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: blue22),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10 * _widthScale,
                        ),
                        Stack(alignment: Alignment.center, children: [
                          Container(
                            height: 33 * _heightScale,
                            width: 33 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFF6282C2)),
                          ),
                          Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                            size: 18 * _widthScale,
                          )
                        ]),
                        SizedBox(
                          width: 8 * _widthScale,
                        ),
                        Text(
                          'Wed, 16 Feb - 06:00 pm → Thu, 18 F...',
                          style: GoogleFonts.notoSans(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              height: 758 * _heightScale,
              width: 375 * _widthScale,
              decoration: BoxDecoration(
                color: Color(0xFF4365A9),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(_widthScale * 25),
                  topRight: Radius.circular(_widthScale * 25),
                ),
              ));
        });
  }

  Widget profile() {
    return Container(
      height: 165,
      width: 275,
      color: Colors.white,
      child: Text('ecec'),
    );
  }
}
