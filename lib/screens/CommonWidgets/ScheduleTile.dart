import 'package:ayuda/Utils/Colors.dart';
import 'package:ayuda/Utils/TextStyles.dart';
import 'package:flutter/material.dart';

import 'RoundedBox.dart';

//TODO: make Model Class According to Need

class ScheduleTile extends StatelessWidget {
  bool _disabled = false;

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
              flex: 8,
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
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '22am',
                    style: subNormal.copyWith(fontSize: 13),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RoundedBox(
                    color: _disabled ? shadowColor : contrastColor,
                    padding: const EdgeInsets.all(8),
                    shape: BoxShape.circle,
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.white,
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
