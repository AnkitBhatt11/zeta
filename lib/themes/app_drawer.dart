// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class CustomAppDrawer extends StatefulWidget {
//   const CustomAppDrawer({Key? key}) : super(key: key);

//   @override
//   _CustomAppDrawerState createState() => _CustomAppDrawerState();
// }

// class _CustomAppDrawerState extends State<CustomAppDrawer> {
//   bool isSwitch = false;

//   var val;

//   @override
//   widget build(BuildContext context) {
//     // chooseLogin();
//     print("ddd ${val}");
//     const double kDesignWidth = 375;
//     const double kDesignHeight = 812;
//     double _widthScale = MediaQuery.of(context).size.width / kDesignWidth;
//     double _heightScale = MediaQuery.of(context).size.height / kDesignHeight;
//     var size = MediaQuery.of(context).size;

//     widget spacevert6 = SizedBox(height: size.height * 0.12);

//     widget spacehort = SizedBox(
//       width: size.width * 0.1,
//     );
//     // widget spacehort1 = SizedBox(
//     //   width: size.width * 0.07,
//     // );
//     // widget spacevert1 = SizedBox(
//     //   height: size.height * 0.0038,
//     // );
//     // widget spacevert2 = SizedBox(
//     //   height: size.height * 0.1,
//     // );
//     // widget spacevert3 = SizedBox(
//     //   height: size.height * 0.07,
//     // );
//     return Container(
//       width: size.width * 0.8,
//       child: Drawer(
//         child: Column(
//           children: [
//             SizedBox(
//               height: 40 * _heightScale,
//             ),
//             Row(
//               children: [
//                 SizedBox(
//                   width: _widthScale * 23,
//                 ),
//                 InkWell(
//                     onTap: () {
//                       Navigator.of(context).popAndPushNamed(Nav1.route);
//                       //   Navigator.of(context).popAndPushNamed(MainPage.route);
//                       //Scaffold.of(context).openDrawer();
//                     },
//                     child: Image.asset(
//                       "assets/Vector.png",
//                       height: _heightScale * 24,
//                       width: _widthScale * 27,
//                     )),
//                 SizedBox(
//                   width: _widthScale * 15,
//                 ),
//                 Text(
//                   "Settings",
//                   style: GoogleFonts.poppins(
//                     color: const Color(0xFF775594),
//                     fontSize: _widthScale * 28,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: _heightScale * 19),
//             Padding(
//               padding: EdgeInsets.only(
//                 right: 23 * _widthScale,
//                 left: 23 * _widthScale,
//                 // top: 650 * _heightScale
//               ),
//               child: ElevatedButton(
//                 onPressed: () async {
          
//                   localNotification.testNotification();
//                 },
//                 style: ElevatedButton.styleFrom(
//                   elevation: 0,
//                   primary: Colors.white,
//                   shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   height: _heightScale * 56,
//                   width: size.width * 0.8,
//                   child: Text(
//                     'Buddy Id',
//                     textAlign: TextAlign.start,
//                     style: GoogleFonts.poppins(
//                         textStyle: TextStyle(
//                             color: Color(0xFF464646),
//                             fontSize: 14 * _widthScale,
//                             fontWeight: FontWeight.w500)),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(height: _heightScale * 9),
//             Padding(
//               padding: EdgeInsets.only(
//                 right: 23 * _widthScale,
//                 left: 23 * _widthScale,
//                 // top: 650 * _heightScale
//               ),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   Navigator.of(context).pushNamed(NotificationScreen.route);
//                 },
//                 style: ElevatedButton.styleFrom(
//                   elevation: 0,
//                   primary: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 child: Container(
//                   alignment: Alignment.centerLeft,
//                   height: _heightScale * 56,
//                   width: size.width * 0.8,
//                   child: Text(
//                     'Notifications',
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.poppins(
//                         textStyle: TextStyle(
//                             color: Color(0xFF464646),
//                             fontSize: 14 * _widthScale,
//                             fontWeight: FontWeight.w500)),
//                   ),
//                 ),
//               ),
//             ),
//             // Container(
//             //  height: _heightScale*600,
//             // ),
//             Padding(
//               padding: EdgeInsets.only(
//                 right: 23 * _widthScale,
//                 left: 23 * _widthScale,
//                 top: 515 * _heightScale,
//               ),
//               child: ElevatedButton(
//                 onPressed: () async {
//                   //  var rr = await tokenPreference.cleartTokenPreferenceData();

//                   await loginPreference!.setLoginSta(false);
//                   await loginPreference!.setLoginStat(false);
//                   await loginPreference!.setLoginStatu(false);
//                   await loginPreference!.setLoginStatus(false);
//                   tokenProfile = null;
//                   await tokenPreference.cleartTokenPreferenceData();
//                   // await tokenPreference.setTokenPreferenceData('');
//                   //   if (tokenProfile?.token == null) {
//                   //  print('[[[[${tokenProfile?.token}');
//                   Navigator.pushAndRemoveUntil(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => onboardingscreen()),
//                       (route) => false);
//                   // }
//                   // Navigator.pushReplacement(
//                   //     context,
//                   //     MaterialPageRoute(
//                   //         builder: (context) => onboardingscreen()));
//                   //}
//                 },
//                 style: ElevatedButton.styleFrom(
//                   primary: BoxColor.PurpleBox(context),
//                   shape: new RoundedRectangleBorder(
//                     borderRadius: new BorderRadius.circular(10.0),
//                   ),
//                 ),
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: _heightScale * 56,
//                   width: size.width * 0.8,
//                   child: Text(
//                     'Log Out',
//                     textAlign: TextAlign.center,
//                     style: GoogleFonts.poppins(
//                         textStyle: TextStyle(
//                             fontSize: 18 * _widthScale,
//                             fontWeight: FontWeight.w700)),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
