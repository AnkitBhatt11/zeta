import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/screens/car_screen.dart';
import 'package:zeta/themes/color.dart';

class Available_rides extends StatefulWidget {
  const Available_rides({Key? key}) : super(key: key);

  @override
  State<Available_rides> createState() => _Available_ridesState();
}

class _Available_ridesState extends State<Available_rides> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {

    const double kDesignWidth = 375;
    const double kDesignHeight = 1079;
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
            "Available Rides",
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w700,
            color: Color(0xff0C3867),
            fontSize: 16
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              SizedBox(
                height: 20 * _heightScale,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 50 * _widthScale,
                      width: 300 * _widthScale,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Color(0xff517194), width: 1)
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Color(0xff517194), width: 1)
                          ),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Color(0xff517194), width: 1)
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0),
                              borderSide: BorderSide(color: Color(0xff517194), width: 1)
                          ),
                          hintText: "Search any Car",
                          hintStyle: GoogleFonts.notoSans(
                            color: Color(0xff517194),
                            fontSize: 12 * _widthScale
                          ),
                          prefixIcon: Icon(
                              Icons.search,
                            color: Color(0xff517194),
                          )
                        ),
                        style: GoogleFonts.notoSans(
                          fontSize: 12 * _widthScale,
                          color: Color(0xff517194)
                        ),
                      )
                    ),
                    IconButton(
                      icon: Image.asset("assets/filtericon.png"),
                      iconSize: 26 * _widthScale,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20 * _heightScale,
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
              SizedBox(
                height: 20 * _heightScale,
              ),
              SizedBox(
                height: 22 * _widthScale,
                width: 332 * _widthScale,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                        "Ride with Fuel",
                      style: GoogleFonts.notoSans(
                        fontSize: 16 * _widthScale,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0C3867)
                      ),
                    ),
                    SizedBox(
                      width: 41 * _widthScale,
                      height: 22 * _widthScale,
                      child: CupertinoSwitch(
                        value: true,
                        onChanged: (val) {},
                        activeColor: Color(0xff244F9D),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20 * _heightScale,
              ),
              ListView(
                controller: _scrollController,
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 13 * _widthScale),
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>Car_Screen())
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10 * _widthScale),
                      height: 165.52 * _widthScale,
                      width: 350 * _widthScale,
                      child: Stack(
                        children: [
                          Container(
                            height: 165.52 * _widthScale,
                            width: 320 * _widthScale,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * _widthScale),
                              color: Colors.white
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 12 * _heightScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Skoda Laura",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 16 * _widthScale,
                                        color: Color(0xff0C3867),
                                        fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Container(
                                      height: 24 * _widthScale,
                                      width: 86 * _widthScale,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color(0xff0C3867)
                                        ),
                                        borderRadius: BorderRadius.circular(75 * _widthScale),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1.2 km away",
                                          style: GoogleFonts.notoSans(
                                            fontSize: 12 * _widthScale,
                                            color: Color(0xff244F9D)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11 * _widthScale,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      height: 12 * _widthScale,
                                      width: 12 * _widthScale,
                                      child: Image.asset("assets/doorstepicon.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                        "Doorstep Delivery Available",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 12 * _widthScale,
                                        color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/transmission.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Manual",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/fuel.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Petrol",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/capacity.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "5 Seater",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 28 * _widthScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "₹ 1,096 ",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                        fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    Text(
                                      "for 100 Km",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff0C3867),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(bottom: 13 * _widthScale),
                              height: 93 * _widthScale,
                              width: 167 * _widthScale,
                              // Add index form builder in tag and pass index onto next page for hero animation
                              child: Hero(
                                tag: 'car',
                                child: Image.asset("assets/car.png")
                              )
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10 * _widthScale),
                      height: 165.52 * _widthScale,
                      width: 350 * _widthScale,
                      child: Stack(
                        children: [
                          Container(
                            height: 165.52 * _widthScale,
                            width: 320 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * _widthScale),
                                color: Colors.white
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 12 * _heightScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Skoda Laura",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Container(
                                      height: 24 * _widthScale,
                                      width: 86 * _widthScale,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff0C3867)
                                        ),
                                        borderRadius: BorderRadius.circular(75 * _widthScale),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1.2 km away",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12 * _widthScale,
                                              color: Color(0xff244F9D)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11 * _widthScale,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/doorstepicon.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Doorstep Delivery Available",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/transmission.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Manual",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/fuel.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Petrol",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/capacity.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "5 Seater",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 28 * _widthScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "₹ 1,096 ",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    Text(
                                      "for 100 Km",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 12 * _widthScale,
                                        color: Color(0xff0C3867),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 13 * _widthScale),
                                  height: 93 * _widthScale,
                                  width: 167 * _widthScale,
                                  child: Image.asset("assets/car.png")
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10 * _widthScale),
                      height: 165.52 * _widthScale,
                      width: 350 * _widthScale,
                      child: Stack(
                        children: [
                          Container(
                            height: 165.52 * _widthScale,
                            width: 320 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * _widthScale),
                                color: Colors.white
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 12 * _heightScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Skoda Laura",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Container(
                                      height: 24 * _widthScale,
                                      width: 86 * _widthScale,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff0C3867)
                                        ),
                                        borderRadius: BorderRadius.circular(75 * _widthScale),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1.2 km away",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12 * _widthScale,
                                              color: Color(0xff244F9D)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11 * _widthScale,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/doorstepicon.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Doorstep Delivery Available",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/transmission.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Manual",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/fuel.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Petrol",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/capacity.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "5 Seater",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 28 * _widthScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "₹ 1,096 ",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    Text(
                                      "for 100 Km",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 12 * _widthScale,
                                        color: Color(0xff0C3867),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 13 * _widthScale),
                                  height: 93 * _widthScale,
                                  width: 167 * _widthScale,
                                  child: Image.asset("assets/car.png")
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10 * _widthScale),
                      height: 165.52 * _widthScale,
                      width: 350 * _widthScale,
                      child: Stack(
                        children: [
                          Container(
                            height: 165.52 * _widthScale,
                            width: 320 * _widthScale,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * _widthScale),
                                color: Colors.white
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 12 * _widthScale),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 12 * _heightScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Skoda Laura",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w500
                                      ),
                                    ),
                                    Container(
                                      height: 24 * _widthScale,
                                      width: 86 * _widthScale,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xff0C3867)
                                        ),
                                        borderRadius: BorderRadius.circular(75 * _widthScale),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "1.2 km away",
                                          style: GoogleFonts.notoSans(
                                              fontSize: 12 * _widthScale,
                                              color: Color(0xff244F9D)
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 11 * _widthScale,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/doorstepicon.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Doorstep Delivery Available",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/transmission.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Manual",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/fuel.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "Petrol",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                        height: 12 * _widthScale,
                                        width: 12 * _widthScale,
                                        child: Image.asset("assets/capacity.png",fit: BoxFit.fitHeight,)
                                    ),
                                    SizedBox(
                                      width: 8 * _widthScale,
                                    ),
                                    Text(
                                      "5 Seater",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 12 * _widthScale,
                                          color: Color(0xff517194)
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 28 * _widthScale,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "₹ 1,096 ",
                                      style: GoogleFonts.notoSans(
                                          fontSize: 16 * _widthScale,
                                          color: Color(0xff0C3867),
                                          fontWeight: FontWeight.w700
                                      ),
                                    ),
                                    Text(
                                      "for 100 Km",
                                      style: GoogleFonts.notoSans(
                                        fontSize: 12 * _widthScale,
                                        color: Color(0xff0C3867),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Container(
                                  margin: EdgeInsets.only(bottom: 13 * _widthScale),
                                  height: 93 * _widthScale,
                                  width: 167 * _widthScale,
                                  child: Image.asset("assets/car.png")
                              )
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
