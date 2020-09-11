import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:ayuda/screens/editprofile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/EnhancedRoundedBox.dart';
import 'CommonWidgets/question_card.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        height: height,
        width: width * 0.9,
        child: Scaffold(
          body: Stack(
            children: [
              BackgroundDesign(
                heightFraction: .3,
              ),
              // Positioned(
              //   top: 16,
              //   right: 16,
              //   child: IconButton(
              //     splashColor: contrastColor,
              //     onPressed: () {
              //       // Provider.<>of(context,listen:false).;
              //     },
              //     icon: Icon(
              //       Icons.mode_edit,
              //       color: darkColor,
              //     ),
              //   ),
              // ),
              Positioned(
                top: height * 0.1,
                left: 0,
                right: 0,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(top: height * 0.02),
                        height: 130,
                        decoration: BoxDecoration(
                          color: mainColor,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              blurRadius: 10,
                              spreadRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: EdgeInsets.only(
                            left: width * 0.10,
                            right: width * 0.10,
                            top: height * 0.13),
                        padding: EdgeInsets.only(top: 25),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: shadowColor,
                              blurRadius: 10,
                              spreadRadius: 6,
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                          color: mainColor,
                        ),
                        height: height * 0.13,
                        width: width * 0.7,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 20, right: 20, bottom: 20, top: 10),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Full Name',
                                style: heading,
                              ),
                              Text(
                                'Designation',
                                style: subNormal,
                              )
                            ],
                          )),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        height: 130,
                        margin: EdgeInsets.only(top: height * 0.02),
                        decoration: BoxDecoration(
                          color: mainColor,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // EnhancedRoundedBox(),
              Positioned(
                top: height * 0.4,
                right: 16,
                left: 32,
                bottom: height * 0.35,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Text(
                          'Edit Profile',
                          style: drawerText,
                          textAlign: TextAlign.start,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  EditProfileScreen(),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Text(
                          'About Us',
                          style: drawerText,
                          textAlign: TextAlign.start,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: FlatButton(
                        child: Text(
                          'Logout',
                          textAlign: TextAlign.start,
                          style: drawerText,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              // CustomRoundedBox(0.5),
            ],
          ),
        ),
      ),
    );
  }
}
//
// class CustomRoundedBox extends StatelessWidget {
//   final double height;
//
//   CustomRoundedBox(this.height);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * height,
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: RoundedBox(
//               shape: BoxShape.circle,
//               child: Text('kj'),
//             ),
//           ),
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.green,
//               ),
//               child: Text('kkj'),
//             ),
//           ),
//           Positioned(
//             bottom: 0,
//             right: 0,
//             left: 0,
//             child: RoundedBox(
//               child: Text('j'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
