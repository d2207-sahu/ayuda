import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utils/Colors.dart';

class QuestionCard extends StatelessWidget {
  final MediaQueryData mediaQueryData;
  final String titleOfQuestion;

  QuestionCard({@required this.mediaQueryData, @required this.titleOfQuestion});

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
          alignment: Alignment.center,
          height: 130,
          width: 130,
          margin: EdgeInsets.only(
              left: screenWidth * 0.325,
              right: screenWidth * 0.325,
              top: screenHeight * 0.16),
          decoration: BoxDecoration(
            color: mainColor,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                offset: const Offset(0, 0),
                blurRadius: 10,
                spreadRadius: 6,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(
              left: screenWidth * 0.10,
              right: screenWidth * 0.10,
              top: screenHeight * 0.23),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: shadowColor,
                offset: const Offset(0, 0),
                blurRadius: 10,
                spreadRadius: 6,
              )
            ],
            borderRadius: BorderRadius.circular(30),
            color: mainColor,
          ),
          height: screenHeight * 0.35,
          width: screenWidth * 0.8,
          child: Container(
            margin: EdgeInsets.only(
                left: 20, top: screenHeight * 0.14, right: 20, bottom: 20),
            child: Text(
              titleOfQuestion,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 23),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          height: 130,
          width: 130,
          margin: EdgeInsets.only(
              left: screenWidth * 0.325,
              right: screenWidth * 0.325,
              top: screenHeight * 0.16),
          decoration: BoxDecoration(
            color: mainColor,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}
