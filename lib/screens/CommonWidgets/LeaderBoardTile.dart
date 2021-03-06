import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import '../leaderboard_screen.dart';
import 'RoundedBox.dart';
import 'package:flutter/material.dart';

//TODO: make Model Class According to Need
class LeaderBoardTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RoundedBox(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
        padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Quiz-01',
                    overflow: TextOverflow.ellipsis,
                    style: heading,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Whau isd jasd kajndsasug kjghfd sad a,kbd',
                    style: subNormal,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '22 / 30',
                    style: subNormal.copyWith(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    color: contrastColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              LeaderBoardScreen(),
                        ),
                      );
                    },
                    child: Text(
                      'View Detail',
                      style: normal.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
