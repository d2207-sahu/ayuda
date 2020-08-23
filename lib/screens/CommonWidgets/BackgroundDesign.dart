import 'package:ayuda/Utils/Colors.dart';
import 'package:flutter/material.dart';

/// This Widget makes the light-green background
/// heightFraction sets the height of background.
class BackgroundDesign extends StatelessWidget {
  final double heightFraction;

  BackgroundDesign({@required this.heightFraction});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: Container(
        decoration: BoxDecoration(
          color: lightColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(70),
          ),
        ),
        height: MediaQuery.of(context).size.height * heightFraction,
      ),
    );
  }
}
