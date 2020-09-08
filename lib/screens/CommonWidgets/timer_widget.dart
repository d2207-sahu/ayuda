import '../CommonWidgets/timer_painter.dart';
import 'package:flutter/material.dart';

class TimerWidget extends StatelessWidget {
  final AnimationController animationController;
  final Color backgroundColor, color;
  final MediaQueryData mediaQueryData;

  TimerWidget(
      {this.animationController,
      this.backgroundColor,
      this.color,
      this.mediaQueryData});

  @override
  Widget build(BuildContext context) {
    final _width = mediaQueryData.size.width;
    final _height = mediaQueryData.size.height;

    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      margin: EdgeInsets.only(
        left: _width * 0.362,
        right: _width * 0.362,
        top: _height * 0.18,
      ),
      height: 100,
      width: 100,
      child: AnimatedBuilder(
        animation: animationController,
        builder: (ctx, child) {
          return new CustomPaint(
            painter: TimerPainter(
                animation: animationController,
                backgroundColor: backgroundColor,
                color: color),
          );
        },
      ),
    );
  }
}
