import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:ayuda/screens/CommonWidgets/CustomAppBar.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/tempraryLogo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            BackgroundDesign(
              heightFraction: 0.3,
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Material(
                elevation: 1,
                shadowColor: Colors.transparent,
                color: Colors.transparent,
                child: Center(
                  child: IconButton(
                    splashColor: Colors.pink,
                    icon: Icon(
                      Icons.menu,
                      size: 35,
                      color: darkColor,
                    ),
                    onPressed: () {
                      //TODO: openDrawer
                    },
                  ),
                ),
              ),
            ),
            Positioned(
              top: 8,
              left: 8,
              right: 8,
              child: Center(
                child: TempraryLogo(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}