import 'package:ayuda/Utils/TextStyles.dart';
import 'package:flutter/material.dart';

import '../screens/CommonWidgets/BackgroundDesign.dart';
import '../Utils/Colors.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundDesign(
            heightFraction: 0.5,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.22),
              child: Column(
                children: [
                  Text(
                    'QUIZ',
                    style: loadingHeader1,
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    'ECELL GREAT',
                    style: loadingHeader2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CircleAvatar(
                    radius: 135,
                    backgroundColor: contrastColor,
                    child: Container(
                      padding: EdgeInsets.only(top: 2),
                      child: FittedBox(
                          fit: BoxFit.contain,
                          child: Column(
                            children: [
                              Text(
                                'STARTS',
                                style: TextStyle(fontSize: 27),
                                textAlign: TextAlign.center,
                              ),
                              Text('IN', style: TextStyle(fontSize: 27)),
                              Text(
                                '30',
                                style: TextStyle(fontSize: 100),
                                textAlign: TextAlign.center,
                              ),
                              Text('SECONDS', style: TextStyle(fontSize: 27)),
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
