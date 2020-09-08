import 'package:ayuda/screens/CommonWidgets/tempraryLogo.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
//        Expanded(
//          flex: 1,
//          child: Material(
//            borderRadius: BorderRadius.all(Radius.circular(10)),
//            shadowColor: darkColor,
//            elevation: 10,
//            child: C
//            ),
//          ),
//        ),
        Expanded(
          flex: 8,
          child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: TempraryLogo()),
        ),
      ],
    );
  }
}
