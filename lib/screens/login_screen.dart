import 'package:ayuda/Utils/TextStyles.dart';
import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:ayuda/screens/CommonWidgets/RoundedBox.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/tempraryLogo.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundDesign(
            heightFraction: 0.55,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TempraryLogo(),
              SizedBox(
                height: 35,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                right: 0,
                left: 0,
                child: Center(
                  child: RoundedBox(
                    onTap: () {
                      //TODO: Navigate to the HomeScreen
//                      Navigator.push(context, MaterialPageRoute(builder: RouteBuilder))
                    },
                    padding: const EdgeInsets.all(32),
                    child: Text(
                      'Login with Google',
                      style: normal,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
