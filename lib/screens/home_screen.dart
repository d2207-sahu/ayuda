import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'CommonWidgets/BackgroundDesign.dart';
import 'CommonWidgets/RoundedBox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/LeaderBoardTile.dart';
import 'CommonWidgets/ScheduleTile.dart';
import 'CommonWidgets/tempraryLogo.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: SafeArea(
          child: Stack(
            children: [
              BackgroundDesign(
                heightFraction: 0.15,
              ),

              /// Drawer
              Positioned(
                top: 8,
                left: 8,
                child: InkWell(
                  splashColor: contrastColor,
                  onTap: () {
                    //  TODO: OpenDrawer
                  },
                  child: RoundedBox(
                    color: contrastColor,
                    padding: const EdgeInsets.all(8),
                    child: Icon(
                      Icons.menu,
                      size: 26,
                      color: mainColor,
                    ),
                  ),
                ),
              ),

              /// Logo
              TempraryLogo(
                top: 8,
                left: 8,
                right: 8,
              ),

              /// TabBar
              Positioned(
                top: MediaQuery.of(context).size.height * 0.075,
                right: 0,
                left: 0,
                child: RoundedBox(
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: TabBar(
                    labelPadding: EdgeInsets.all(8),
                    labelColor: mainColor,
                    labelStyle: heading,
                    unselectedLabelColor: darkColor,
                    indicator: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: contrastColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    tabs: [
                      Tab(
                        text: 'Schedule',
                      ),
                      Tab(
                        text: 'LeaderBoard',
                      ),
                    ],
                  ),
                ),
              ),

              /// TabBarView
              Positioned(
                top: MediaQuery.of(context).size.height * 0.185,
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * (1 - 0.175),
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                          height:
                              MediaQuery.of(context).size.height * (1 - 0.175),
                          padding: const EdgeInsets.only(bottom: 40),
                          child: Scrollbar(
                            child: ListView.builder(
                              itemBuilder: (_, int) {
                                return ScheduleTile();
                              },
                              itemCount: 10,
                            ),
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Container(
                          padding: const EdgeInsets.only(bottom: 40),
                          height:
                              MediaQuery.of(context).size.height * (1 - 0.175),
                          child: Scrollbar(
                            child: ListView.builder(
                              itemBuilder: (_, int) {
                                return LeaderBoardTile();
                              },
                              itemCount: 10,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
