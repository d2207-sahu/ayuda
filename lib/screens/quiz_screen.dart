import 'dart:async';

import 'package:ayuda/models/questions_provider.dart';
import 'package:provider/provider.dart';

import '../models/question.dart';
import '../models/questions_provider.dart';
import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _timer = 30;
  String showTimer = '30';
  bool init = true;
  bool cancelTimer = false;
  Timer timer;

  @override
  void didChangeDependencies() {
    if (init) {
      startTimer(context);
      init = false;
    }

    super.didChangeDependencies();
  }

  void nextQuestion(BuildContext ctx) {
    _timer = 30;
    Provider.of<QuestionsProvider>(ctx, listen: false).updateQuestion();
    startTimer(ctx);
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
          nextQuestion(ctx);
        } else {
          _timer = _timer - 1;
        }
        showTimer = _timer.toString();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final _question = Provider.of<QuestionsProvider>(context).theQuestion;

    return Scaffold(
      appBar: AppBar(
        title: Text('Where the fun begins'),
      ),
      body: _question == null
          ? Center(
              child: Text(
                'Thank You For Playing',
                style: TextStyle(fontSize: 30),
              ),
            )
          : Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                      child: Text(
                    _question.questionTitle,
                    style: TextStyle(fontSize: 25),
                  )),
                  Column(
                    children: [
                      RaisedButton(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(_question.options[0],
                            style: TextStyle(fontSize: 22)),
                        onPressed: () {
                          cancelTimer = true;
                          nextQuestion(context);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(_question.options[1],
                            style: TextStyle(fontSize: 22)),
                        onPressed: () {
                          cancelTimer = true;
                          nextQuestion(context);
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(_question.options[2],
                            style: TextStyle(fontSize: 22)),
                        onPressed: () {
                          cancelTimer = true;
                          nextQuestion(context);
                        },
                      )
                    ],
                  ),
                  Text(
                    showTimer,
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
    );
  }
}
