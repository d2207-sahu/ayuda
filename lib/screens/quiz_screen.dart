import 'package:flutter/material.dart';
import 'dart:async';
import 'package:provider/provider.dart';

import '../Utils/Colors.dart';
import './CommonWidgets/question_card.dart';
import '../VIewModel/questions_provider.dart';
import 'CommonWidgets/RoundedBox.dart';
import 'CommonWidgets/timer_widget.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  int _timer = 30;
  String showTimer = '30';
  bool init = true;
  bool cancelTimer = false;
  Timer timer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (init) {
      startTimer(context);

      init = false;
    }
  }

  void nextQuestion(BuildContext ctx) {
    Provider.of<QuestionsProvider>(ctx, listen: false).updateQuestion();
  }

  void startTimer(BuildContext ctx) async {
    const oneSec = Duration(seconds: 1);
    if (cancelTimer) {
      timer.cancel();
      cancelTimer = false;
    }
    timer = Timer.periodic(oneSec, (Timer t) {
      setState(() {
        if (_timer < 1) {
          t.cancel();
        } else {
          _timer = _timer - 1;
        }
        showTimer = _timer.toString();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 30),
    );
    _animationController.addListener(() {
      if (_animationController.isCompleted) {
        timer.cancel();
        _timer = 30;
        startTimer(context);
        _animationController.forward(from: 0.0);
        nextQuestion(context);
      }
    });
    _animationController.forward();
  }

  Widget addOptions(
      double screenWidth, double screenHeight, String questionTitle) {
    return RoundedBox(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          questionTitle,
          textAlign: TextAlign.justify,
          style: TextStyle(fontSize: 17),
        ),
      ),
      height: screenHeight * 0.07,
      width: screenWidth * 0.70,
      margin: EdgeInsets.only(top: screenHeight * 0.04),
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04, vertical: screenHeight * 0.01),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _question = Provider.of<QuestionsProvider>(context).theQuestion;
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: _question == null
            ? Center(
                child: Text("Thank you for playing"),
              )
            : Column(
                children: [
                  Stack(
                    children: [
                      QuestionCard(
                        mediaQueryData: MediaQuery.of(context),
                        titleOfQuestion: _question.questionTitle,
                      ),
                      TimerWidget(
                        animationController: _animationController,
                        backgroundColor: mainColor,
                        color: contrastColor,
                        mediaQueryData: MediaQuery.of(context),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(
                            top: _screenHeight * 0.225,
                            right: _screenWidth * 0.025),
                        child: Text(
                          showTimer,
                          style: TextStyle(fontSize: 35),
                        ),
                      )
                    ],
                  ),
                  addOptions(_screenWidth, _screenHeight, _question.options[0]),
                  addOptions(_screenWidth, _screenHeight, _question.options[1]),
                  addOptions(_screenWidth, _screenHeight, _question.options[2]),
                ],
              ));
  }
}
