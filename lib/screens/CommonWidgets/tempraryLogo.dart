import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:flutter/material.dart';

class TempraryLogo extends StatelessWidget {
  final double top, right, left, bottom;

  TempraryLogo({this.top, this.right, this.left, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top ?? 0,
      right: right ?? 0,
      left: left ?? 0,
      bottom: bottom ?? null,
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
