import 'package:ayuda/Utils/Colors.dart';
import 'package:flutter/material.dart';

/// Creates a box with rounded corners and shadow
/// Just add the child in the box
class RoundedBox extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final VoidCallback onTap;
  final Color color;
  final BoxShape shape;

  RoundedBox({
    @required this.child,
    this.color,
    this.shape,
    this.padding,
    this.margin,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap == null ? () {} : onTap,
      child: Container(
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
          color: color ?? mainColor,
          shape: shape ?? BoxShape.rectangle,
          borderRadius: shape != null
              ? null
              : BorderRadius.all(
                  Radius.circular(10),
                ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              spreadRadius: 1,
              blurRadius: 10,
            )
          ],
        ),
        child: child,
      ),
    );
  }
}
