import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zeta/screens/payment_summary.dart';
import 'package:zeta/themes/color.dart';

import '../main.dart';

class Car_Screen extends StatefulWidget {
  const Car_Screen({Key? key}) : super(key: key);

  @override
  State<Car_Screen> createState() => _Car_ScreenState();
}

class _Car_ScreenState extends State<Car_Screen> {

  ScrollController scrollController = ScrollController();

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
      body: Stack(
        children: [
          ListView(
            shrinkWrap: true,
            controller: scrollController,
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
                        shrinkWrap: true,
                        controller: scrollController,
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
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 13),
                child: Text(
                  "Fuel Options",
                  style: GoogleFonts.notoSans(
                      fontSize: 16.0,
                      color: Color(0xff0C3867),
                      fontWeight: FontWeight.w700
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                visualDensity: VisualDensity(vertical: -4, horizontal: 0),
                leading: Icon(Icons.radio_button_off),
                title: Text(
                  "With Fuel",
                  style: GoogleFonts.notoSans(
                      fontSize: 16.0,
                      color: Color(0xff0C3867),
                  ),
                ),
                subtitle: Text(
                  "You are given 100 km with fuel, and you will be charged  ₹ 17/km if exceeding the free kilometre limit",
                  style: GoogleFonts.notoSans(
                    fontSize: 12.0,
                    color: Color(0xff517194),
                  ),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                visualDensity: VisualDensity(vertical: -4, horizontal: 0),
                leading: Icon(Icons.radio_button_off),
                title: Text(
                  "Without Fuel",
                  style: GoogleFonts.notoSans(
                    fontSize: 16.0,
                    color: Color(0xff0C3867),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Doorstep Delivery",
                          style: GoogleFonts.notoSans(
                            fontSize: 16,
                            color: Color(0xff0C3867),
                            fontWeight: FontWeight.w700
                          ),
                        ),
                        CupertinoSwitch(
                          value: true,
                          onChanged: (val) {},
                          activeColor: Color(0xff244F9D),
                        )
                      ],
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(vertical: -4, horizontal: 0),
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.radio_button_off),
                        ],
                      ),
                      title: Text(
                        "Home",
                        style: GoogleFonts.notoSans(
                          fontSize: 16.0,
                          color: Color(0xff0C3867),
                        ),
                      ),
                      subtitle: Text(
                        "NDM 1, 203 - Netaji Shubhash Palace, Pitampura - 89",
                        style: GoogleFonts.notoSans(
                          fontSize: 12.0,
                          color: Color(0xff517194),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(vertical: -4, horizontal: 0),
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.radio_button_off),
                        ],
                      ),
                      title: Text(
                        "Office",
                        style: GoogleFonts.notoSans(
                          fontSize: 16.0,
                          color: Color(0xff0C3867),
                        ),
                      ),
                      subtitle: Text(
                        "NDM 1, 203 - Netaji Shubhash Palace, Pitampura - 89",
                        style: GoogleFonts.notoSans(
                          fontSize: 12.0,
                          color: Color(0xff517194),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      visualDensity: VisualDensity(vertical: -2, horizontal: 0),
                      leading: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.radio_button_off),
                        ],
                      ),
                      title: Text(
                        "Others",
                        style: GoogleFonts.notoSans(
                          fontSize: 16.0,
                          color: Color(0xff0C3867),
                        ),
                      ),
                      trailing: TextButton(
                        child: Text(
                          "Add New Address",
                          style: GoogleFonts.notoSans(
                              fontSize: 16,
                              color: Color(0xff244F9D)
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none
                                ),
                                hintText: "Title",
                                hintStyle: GoogleFonts.notoSans(
                                  fontSize: 16,
                                  color: Color(0xff517194)
                                )
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  hintText: "Address Line - 1",
                                  hintStyle: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      color: Color(0xff517194)
                                  )
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  hintText: "Address Line - 2",
                                  hintStyle: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      color: Color(0xff517194)
                                  )
                              ),
                            ),
                          ),
                          Container(
                            height: 50,
                            margin: EdgeInsets.only(bottom: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      borderSide: BorderSide.none
                                  ),
                                  hintText: "Pincode",
                                  hintStyle: GoogleFonts.notoSans(
                                      fontSize: 16,
                                      color: Color(0xff517194)
                                  )
                              ),
                            ),
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
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff244F9D),
                                borderRadius: BorderRadius.circular(20.0)
                              ),
                              height: 54,
                              margin: EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 22.5 * _widthScale,
                                  ),
                                  Icon(
                                    Icons.map_outlined,
                                    color: Colors.white,
                                    size: 22 * _widthScale,
                                  ),
                                  SizedBox(width: 18 * _widthScale),
                                  Text('Set Location on Map',
                                      style: GoogleFonts.notoSans(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16 * _widthScale))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      // visualDensity: VisualDensity(vertical: -2, horizontal: 0),
                      trailing: CupertinoSwitch(
                        onChanged: (val) {},
                        value: true,
                        activeColor: Color(0xff0C3867),
                      ),
                      title: Text(
                        "Chauffeur",
                        style: GoogleFonts.notoSans(
                          fontSize: 16.0,
                          color: Color(0xff0C3867),
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      subtitle: Text(
                        "Charges will depend on the number of days you hire a chauffeur",
                        style: GoogleFonts.notoSans(
                          fontSize: 12.0,
                          color: Color(0xff517194),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Keep In Mind",
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Color(0xff0C3867),
                          fontWeight: FontWeight.w700
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      // visualDensity: VisualDensity(vertical: -2, horizontal: 0),
                      leading: SizedBox(
                        height: 33,
                        child: Image.asset("assets/license.png"),
                      ),
                      title: Text(
                        "Driving License Mandagtory",
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Color(0xff0C3867),
                        ),
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      // visualDensity: VisualDensity(vertical: -2, horizontal: 0),
                      isThreeLine: true,
                      leading: SizedBox(
                        height: 33,
                        child: Image.asset("assets/fuel2.png"),
                      ),
                      title: Text(
                        "Fare and Fuel Policy",
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Color(0xff0C3867),
                        ),
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Fare is inclusive of all taxes. Excess charges ₹ 16/km. Kindly return the car at the same fuel as the trip start time.",
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Color(0xff517194),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "See Details",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  color: Color(0xff244F9D),
                                  decoration: TextDecoration.underline
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      // visualDensity: VisualDensity(vertical: -2, horizontal: 0),
                      isThreeLine: true,
                      leading: SizedBox(
                        height: 33,
                        child: Image.asset("assets/fuel2.png"),
                      ),
                      title: Text(
                        "Cancellation Policy",
                        style: GoogleFonts.notoSans(
                          fontSize: 16,
                          color: Color(0xff0C3867),
                        ),
                      ),
                      subtitle: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Hassle free cancellation and refunds at nominal charges",
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Color(0xff517194),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "See Details",
                                style: GoogleFonts.notoSans(
                                  fontSize: 12,
                                  color: Color(0xff244F9D),
                                  decoration: TextDecoration.underline
                                ),

                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 250,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xff4365A9),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "₹ 1,090",
                    style: GoogleFonts.notoSans(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: white
                    ),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    // visualDensity: VisualDensity(vertical: -4),
                    minLeadingWidth: 28.0,
                    leading: Icon(
                        Icons.check_box,
                      color: white,
                    ),
                    title: Text(
                      "I hereby agree to the terms and conditions of the Lease Agreement with Host.",
                      style: GoogleFonts.notoSans(
                        fontSize: 12.0,
                        color: white
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
                          "Apply Coupon Code",
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
                            "2 Offers",
                            style: GoogleFonts.notoSans(
                              fontSize: 12,
                              color: Colors.white
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: white,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: GestureDetector(
                      child: Container(
                        height: 54,
                        width: 350,
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: Center(
                          child: Text(
                            "Checkout Summary",
                            style: GoogleFonts.notoSans(
                              fontSize: 16,
                              color: Color(0xff0C3867)
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (_)=> Payment_Summary())
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
