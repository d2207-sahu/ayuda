import 'package:ayuda/Utils/TextStyles.dart';
import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utils/Colors.dart';

class QuestionCard extends StatelessWidget {
  final String titleOfQuestion;

  QuestionCard({@required this.titleOfQuestion});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      child: Stack(
        children: [
          BackgroundDesign(
            heightFraction: 0.45,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(top: screenHeight * 0.16),
              height: 130,
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
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
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
                margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                child: Center(
                  child: Text(
                    titleOfQuestion,
                    textAlign: TextAlign.center,
                    style: normal.copyWith(fontSize: 22),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.center,
              height: 130,
              margin: EdgeInsets.only(top: screenHeight * 0.16),
              decoration: BoxDecoration(
                color: mainColor,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
