
import 'package:ayuda/screens/CommonWidgets/tempraryLogo.dart';

import 'tempraryLogo.dart';

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
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
