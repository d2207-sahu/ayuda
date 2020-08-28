import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:flutter/material.dart';
import '../../Utils/Colors.dart';

class QuestionCard extends StatelessWidget {
  final MediaQueryData mediaQueryData;

  QuestionCard({@required this.mediaQueryData});

  @override
  Widget build(BuildContext context) {
    final screenWidth = mediaQueryData.size.width;
    final screenHeight = mediaQueryData.size.height;
    return Stack(
      children: [
        BackgroundDesign(
          heightFraction: 0.45,
        ),
        Container(
          margin: EdgeInsets.only(
              left: screenWidth * 0.10,
              right: screenWidth * 0.10,
              top: screenHeight * 0.23),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2.5),
                blurRadius: 2.5,
                spreadRadius: 0.8,
              )
            ],
            borderRadius: BorderRadius.circular(30),
            color: mainColor,
          ),
          height: screenHeight * 0.35,
          width: screenWidth * 0.8,
        ),
        Container(
            margin: EdgeInsets.only(
                left: screenWidth * 0.35,
                right: screenWidth * 0.35,
                top: screenHeight * 0.16),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: 55,
                  backgroundColor: contrastColor,
                ),
                CircleAvatar(
                  radius: 40,
                  backgroundColor: mainColor,
                ),
              ],
            ))
      ],
    );
  }
}
