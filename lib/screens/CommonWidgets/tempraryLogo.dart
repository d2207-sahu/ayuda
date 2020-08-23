import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:flutter/material.dart';

class TempraryLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      bottom: 0,
      right: 0,
      left: 0,
      child: Center(
        child: Text(
          'Ayuda',
          style: heading.copyWith(
            shadows: [
              BoxShadow(
                color: shadowColor,
                spreadRadius: 10,
                blurRadius: 15,
              ),
            ],
            fontSize: 45,
            color: mainColor,
          ),
        ),
      ),
    );
  }
}
