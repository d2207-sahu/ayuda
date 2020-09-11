import 'package:flutter/material.dart';

import 'Colors.dart';
import 'TextStyles.dart';

/// InputDecoration
InputDecoration inputDecoration({String text, IconData iconData}) {
  return InputDecoration(
    hintText: text,
    hintStyle: normal,
    labelStyle: normal,
    errorStyle: normal,
    focusColor: contrastColor,
    suffixIcon: iconData == null
        ? null
        : Icon(
            iconData,
            color: darkColor,
          ),
    focusedErrorBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: darkColor, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: darkColor, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    border: OutlineInputBorder(
      borderSide:
          BorderSide(color: darkColor, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: darkColor, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide:
          BorderSide(color: darkColor, width: 1.5, style: BorderStyle.solid),
      borderRadius: BorderRadius.all(
        Radius.circular(10),
      ),
    ),
    fillColor: lightColor,
    filled: true,
  );
}
