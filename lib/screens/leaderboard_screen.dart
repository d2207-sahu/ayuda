import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:ayuda/screens/CommonWidgets/BackgroundDesign.dart';
import 'package:flutter/material.dart';

import 'CommonWidgets/RoundedBox.dart';

class LeaderBoardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          BackgroundDesign(
            heightFraction: 0.2,
          ),
          Positioned(
            top: 16,
            left: 16,
            child: RoundedBox(
              onTap: () {
                Navigator.pop(context);
              },
              color: contrastColor,
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.arrow_back_ios,
                size: 26,
                color: mainColor,
              ),
            ),
          ),
          Positioned(
            top: height * 0.12,
            left: 32,
            right: 32,
            child: RoundedBox(
              color: mainColor,
              padding: const EdgeInsets.all(16),
              child: Container(
                child: Column(
                  children: [
                    UserTile(),
                    SizedBox(
                      height: 10,
                    ),
                    StatisticsContainer(),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.46,
            left: 16,
            right: 16,
            bottom: 0,
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                // height: MediaQuery.of(context).size.height * 2,
                child: Column(
                  children: [
                    Text(
                      'LeaderBoard',
                      style: heading.copyWith(fontSize: 22),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RoundedBox(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      padding: const EdgeInsets.all(16),
                      child: UserTile(),
                    ),
                    RoundedBox(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      padding: const EdgeInsets.all(16),
                      child: UserTile(),
                    ),
                    RoundedBox(
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      padding: const EdgeInsets.all(16),
                      child: UserTile(),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Over-All Statistics',
                            style: heading.copyWith(fontSize: 16),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              StatisticsTile(),
                              StatisticsTile(),
                              StatisticsTile(),
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

class UserTile extends StatelessWidget {
  final String mainText;
  final String secondaryText;
  final String titleText;

  UserTile({this.mainText, this.secondaryText, this.titleText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Flexible(
            flex: 7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  flex: 4,
                  child: RoundedBox(
                    padding: EdgeInsets.all(32),
                    shape: BoxShape.circle,
                    child: Center(child: Text('s')),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  flex: 8,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mainText ?? 'Divyanshu Shua',
                        textAlign: TextAlign.start,
                        style: heading.copyWith(fontSize: 18),
                      ),
                      Text(
                        secondaryText ?? 'sexyBio',
                        textAlign: TextAlign.start,
                        style: subNormal.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 2,
            child: Text(
              titleText ?? '99 / 30',
              style: heading.copyWith(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}

class StatisticsContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Statistics',
            style: heading.copyWith(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              StatisticsTile(),
              StatisticsTile(),
              StatisticsTile(),
            ],
          )
        ],
      ),
    );
  }
}

class StatisticsTile extends StatelessWidget {
  final String mainText;

  final String titleText;

  StatisticsTile({this.mainText, this.titleText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mainText ?? 'Fucker Bitch',
            style: normal,
          ),
          Text(
            titleText ?? '99 / 30',
            style: heading.copyWith(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
