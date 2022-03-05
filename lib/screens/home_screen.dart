import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:time_range/time_range.dart';
import 'package:zeta/main.dart';
import 'package:zeta/screens/available_ride.dart';
import 'package:zeta/themes/color.dart';
import 'package:zeta/themes/color.dart';

class HoemScreen extends StatefulWidget {
  const HoemScreen({Key? key}) : super(key: key);

  @override
  _HoemScreenState createState() => _HoemScreenState();
}

class _HoemScreenState extends State<HoemScreen> {

  bool islo = false;

  DateTime dt = DateTime.now();
  late TimeOfDay pickup, drop;

  @override
  void initState() {
    super.initState();
  }

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
      body: SlidingUpPanel(
        body: body(),
        panelSnapping: true,
        maxHeight: 703 * _heightScale,
        minHeight: 240 * _heightScale,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(_widthScale * 25),
          topRight: Radius.circular(_widthScale * 25),
        ),
        collapsed: collapsed_container(),
        panel: panel()
      ),
    );
  }

  body() {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

          // showBottomSheet(context: context, builder: (context){
          //   return
          // })

        ],
      ),
    );
  }

  collapsed_container() {
    const double kDesignWidth = 375;
    const double kDesignHeight = 812;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Container(
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
          Divider(
            color: Colors.white,
            thickness: 5 * _heightScale,
            height: 5 * _heightScale,
            indent: 138 * _widthScale,
            endIndent: 138 * _widthScale,
          ),
          SizedBox(
            height: 20 * _heightScale,
          ),
          Container(
            height: 50 * _heightScale,
            width: 350 * _widthScale,
            child: TextFormField(
              style: GoogleFonts.notoSans(fontSize: 16.0, color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                fillColor: blue22,
                filled: true,
                prefixIcon: Container(
                  margin: EdgeInsets.all(8 * _heightScale),
                  height: 33 * _heightScale,
                  width: 33 * _widthScale,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6282C2)),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: 18 * _widthScale,
                  ),
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     panel();
          //   },
          //   child: Container(
          //     height: 50 * _heightScale,
          //     width: 350 * _widthScale,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10), color: blue22),
          //     child: Row(
          //       children: [
          //         SizedBox(
          //           width: 10 * _widthScale,
          //         ),
          //         Stack(alignment: Alignment.center, children: [
          //           Container(
          //             height: 33 * _heightScale,
          //             width: 33 * _widthScale,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 color: Color(0xFF6282C2)),
          //           ),
          //           Icon(
          //             Icons.location_on_outlined,
          //             color: Colors.white,
          //             size: 18 * _widthScale,
          //           )
          //         ]),
          //         SizedBox(
          //           width: 8 * _widthScale,
          //         ),
          //         Text(
          //           'NDM 1, Netaji Subhash Palace, New....',
          //           style: GoogleFonts.notoSans(color: Colors.white),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 10 * _heightScale,
          ),
          Container(
            height: 50 * _heightScale,
            width: 350 * _widthScale,
            child: TextFormField(
              style: GoogleFonts.notoSans(fontSize: 16.0, color: Colors.white),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                fillColor: blue22,
                filled: true,
                prefixIcon: Container(
                  margin: EdgeInsets.all(8 * _heightScale),
                  height: 33 * _heightScale,
                  width: 33 * _widthScale,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF6282C2)),
                  child: Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                    size: 18 * _widthScale,
                  ),
                ),
              ),
            ),
          ),
          // GestureDetector(
          //   onTap: () {
          //     panel();
          //   },
          //   child: Container(
          //     height: 50 * _heightScale,
          //     width: 350 * _widthScale,
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(10), color: blue22),
          //     child: Row(
          //       children: [
          //         SizedBox(
          //           width: 10 * _widthScale,
          //         ),
          //         Stack(alignment: Alignment.center, children: [
          //           Container(
          //             height: 33 * _heightScale,
          //             width: 33 * _widthScale,
          //             decoration: BoxDecoration(
          //                 borderRadius: BorderRadius.circular(10),
          //                 color: Color(0xFF6282C2)),
          //           ),
          //           Icon(
          //             Icons.calendar_month,
          //             color: Colors.white,
          //             size: 18 * _widthScale,
          //           )
          //         ]),
          //         SizedBox(
          //           width: 8 * _widthScale,
          //         ),
          //         Text(
          //           'Wed, 16 Feb - 06:00 pm → Thu, 17 F...',
          //           style: GoogleFonts.notoSans(color: Colors.white),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
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
    );
  }

  panel() {
    const double kDesignWidth = 375;
    const double kDesignHeight = 758;
    double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
    double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
    return Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 8 * _heightScale,
              ),
              Divider(
                color: Colors.white,
                thickness: 5 * _heightScale,
                height: 5 * _heightScale,
                indent: 138 * _widthScale,
                endIndent: 138 * _widthScale,
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
              SizedBox(
                height: 7 * _heightScale,
              ),
              Container(
                width: 345 * _widthScale,
                height: 316 * _heightScale,
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  headerStyle: DateRangePickerHeaderStyle(
                    textStyle: TextStyle(
                      color: Colors.white
                    )
                  ),
                  monthCellStyle: DateRangePickerMonthCellStyle(
                    weekendTextStyle: TextStyle(
                      color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                    ),
                    textStyle: TextStyle(
                      color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                    )
                  ),
                  monthViewSettings: DateRangePickerMonthViewSettings(
                    firstDayOfWeek: 1,
                  ),
                  todayHighlightColor: Colors.white,
                  selectionMode: DateRangePickerSelectionMode.extendableRange,
                  rangeSelectionColor: Color(0xff91AFE5),
                  rangeTextStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500
                  ),
                  startRangeSelectionColor: Color(0xff244F9D),
                  endRangeSelectionColor: Color(0xff244F9D),
                  enablePastDates: false,
                ),
              ),
              TimeRange(
                fromTitle: Text('From', style: TextStyle(fontSize: 18, color: Colors.white),),
                toTitle: Text('To', style: TextStyle(fontSize: 18, color: Colors.white),),
                titlePadding: 20,
                textStyle: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
                activeTextStyle: TextStyle(fontWeight: FontWeight.bold, color: blue22),
                backgroundColor: Colors.transparent,
                activeBackgroundColor: white,
                firstTime: TimeOfDay(hour: 09, minute: 00),
                lastTime: TimeOfDay(hour: 22, minute: 00),
                timeStep: 30,
                timeBlock: 30,
                onRangeCompleted: (range) {
                  setState(() {
                    pickup = range!.start;
                    drop = range.end;
                    print(pickup.toString() + drop.toString());
                  });
                },
              ),
              SizedBox(
                height: 14 * _heightScale,
              ),
              Container(
                height: 54 * _heightScale,
                width: 350 * _widthScale,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_)=> Available_rides())
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: new RoundedRectangleBorder(
                      borderRadius:
                      new BorderRadius.circular(_widthScale * 10.0),
                    ),
                  ),
                  child: Text('Find Cars',
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(
                        color: Color(0xff0C3867),
                          fontSize: _widthScale * 16,
                      ),
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 23 * _heightScale,
              )
            ],
          ),
        ),
        height: 812 * _heightScale,
        width: 375 * _widthScale,
        decoration: BoxDecoration(
          color: Color(0xFF4365A9),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(_widthScale * 25),
            topRight: Radius.circular(_widthScale * 25),
          ),
        ));
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
